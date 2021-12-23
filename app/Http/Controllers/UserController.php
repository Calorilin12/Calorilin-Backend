<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function users()
    {
        if (Gate::allows('admin-only')) {
            $users = DB::table('users')
                ->leftJoin('user_details', 'user_details.id_user', '=', 'users.id')
                ->select('users.id', 'users.name', 'users.email', 'users.check', 'user_details.born_date', 'user_details.phone_number', 'user_details.image', 'user_details.weight', 'user_details.height', 'user_details.tension', 'user_details.cholesterol', 'user_details.diabetes', 'user_details.uric_acid', 'user_details.stomach_acid', 'user_details.hyper_tension')
                ->get();
            return response()->json($users, 200);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }

    public function users_find($id)
    {
        $users = DB::table('users')
            ->leftJoin('user_details', 'user_details.id_user', '=', 'users.id')
            ->where('users.id', '=', $id)
            ->select('users.id', 'users.name', 'users.email', 'users.check', 'user_details.born_date', 'user_details.phone_number', 'user_details.image', 'user_details.weight', 'user_details.height', 'user_details.tension', 'user_details.cholesterol', 'user_details.diabetes', 'user_details.uric_acid', 'user_details.stomach_acid', 'user_details.hyper_tension')
            ->first();

        return response()->json($users, 200);
    }

    public function users_update($id, Request $request)
    {
        DB::table('users')->where('id', $id)
            ->update([
                'name' => $request->name,
                'email' => $request->email,
            ]);

        return response()->json(["message" => "User information changed"], 201);
    }

    public function users_update_password($id, Request $request)
    {
        $userLama = DB::table('users')->where('id', $id)->first();

        if (Hash::check($request->passwordLama, $userLama->password) == true) {
            DB::table('users')->where('id', $id)
                ->update([
                    'password' => Hash::make($request->password)
                ]);

            return response()->json(["message" => "Password updated successfully"], 201);
        } else {
            return response()->json(["message" => "Wrong Old Password"], 403);
        }
    }

    public function users_delete($id)
    {
        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            DB::table('users')->where('id', $id)->delete();
            $user_details = DB::table('user_detailss')->where('id', $id)->first();
            File::delete('user-detail-images/' . $user_details->image);
            $user_details->delete();
            DB::table('control_calories')->where('id_user', '=', $id)->delete();
            DB::table('daily_healthy')->where('id_user', '=', $id)->delete();

            if (DB::table('food_material_favorites')->where('id_user', '=', $id)->first()) {
                DB::table('food_material_favorites')->where('id_user', '=', $id)->delete();
            }
            
            if (DB::table('recipe_favorites')->where('id_user', '=', $id)->first()) {
                DB::table('recipe_favorites')->where('id_user', '=', $id)->delete();
            }

            return response()->json(["message" => "User telah dihapus"], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }
}
