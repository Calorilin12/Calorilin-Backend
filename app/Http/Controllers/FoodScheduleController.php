<?php

namespace App\Http\Controllers;

use App\FoodSchedule;
use Illuminate\Http\Request;

class FoodScheduleController extends Controller
{
    public function create(Request $request)
    {
        $createFoodSchedule = new FoodSchedule;
        $createFoodSchedule->schedule_date = $request->schedule_date;
        $createFoodSchedule->id_user = $request->id_user;
        $createFoodSchedule->id_food = $request->id_food;
        $createFoodSchedule->save();

        return response([
            'status' => 'OK',
            'message' => 'Food Schedule telah dibuat',
            'data' => $createFoodSchedule
        ], 200);
    }

    public function food_schedules()
    {
        $food_schedules = FoodSchedule::all();
        return response($food_schedules, 200);
    }

    public function update(Request $request, $id)
    {
        $updateFoodSchedule = FoodSchedule::find($id);

        $updateFoodSchedule->update($request->all());
        return response($updateFoodSchedule, 200);
    }

    public function delete($id)
    {
        $deleteFoodSchedule = FoodSchedule::find($id);
        $deleteFoodSchedule->delete();

        return response([
            'status' => 'OK',
            'message' => 'Food Schedule telah dihapus',
        ], 202);
    }
}
