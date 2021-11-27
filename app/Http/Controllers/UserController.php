<?php

namespace App\Http\Controllers;

use App\ControlCalory;
use App\User;
use App\UserDetail;
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
        User::find($id)
            ->update([
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password),
            ]);

        return response()->json(["message" => "User berhasil diubah"], 201);
    }

    public function users_delete($id)
    {
        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            User::find($id)->delete();
            $user_details = UserDetail::find($id);
            File::delete('user-detail-images/' . $user_details->image);
            $user_details->delete();
            ControlCalory::where('id_user', '=', $id)->delete();

            return response()->json(["message" => "User telah dihapus"], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }
}
