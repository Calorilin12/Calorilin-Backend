<?php

namespace App\Http\Controllers;

use App\ControlCalory;
use Illuminate\Http\Request;

class ControlCaloryController extends Controller
{
    public function create(Request $request)
    {
        $createControlCalory = new ControlCalory;
        $createControlCalory->user_calory = $request->user_calory;
        $createControlCalory->id_user = $request->id_user;
        $createControlCalory->reminder = $request->reminder;
        $createControlCalory->save();

        return response([
            'status' => 'OK',
            'message' => 'Control Calory telah dibuat',
            'data' => $createControlCalory
        ], 200);
    }

    public function control_calories()
    {
        $control_calories = ControlCalory::all();
        return response($control_calories, 200);
    }
}
