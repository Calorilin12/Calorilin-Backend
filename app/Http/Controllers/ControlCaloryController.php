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
        ], 201);
    }

    public function control_calories()
    {
        $control_calories = ControlCalory::all();
        return response($control_calories, 200);
    }

    public function update(Request $request, $id)
    {
        $updateControlCalory = ControlCalory::find($id);

        $updateControlCalory->update($request->all());
        return response($updateControlCalory, 200);
    }

    public function delete($id)
    {
        $deleteControlCalory = ControlCalory::find($id);
        $deleteControlCalory->delete();

        return response([
            'status' => 'OK',
            'message' => 'Control Calory telah dihapus',
        ], 202);
    }
}
