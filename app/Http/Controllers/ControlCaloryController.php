<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Gate;

class ControlCaloryController extends Controller
{
    public function control_calories($id_user){
        $control_calory = DB::table('control_calories')->where('id_user', '=', $id_user)->first();

        return response()->json(["data" => $control_calory], 200);
    }

    public function control_calories_all()
    {
        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            $control_calories = DB::table('control_calories')->get();
            return response()->json(["data" => $control_calories], 200);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }
}
