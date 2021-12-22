<?php

namespace App\Http\Controllers;

use App\ControlCalory;
use Illuminate\Support\Facades\Gate;

class ControlCaloryController extends Controller
{
    public function control_calories($id_user){
        $control_calory = ControlCalory::where('id_user', '=', $id_user)->first();

        return response()->json(["data" => $control_calory], 200);
    }

    public function control_calories_all()
    {
        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            $control_calories = ControlCalory::all();
            return response()->json(["data" => $control_calories], 200);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }
}
