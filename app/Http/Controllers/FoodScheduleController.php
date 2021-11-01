<?php

namespace App\Http\Controllers;

use App\FoodSchedule;
use Illuminate\Http\Request;
use Illuminate\Auth\Access\Gate;

class FoodScheduleController extends Controller
{

    public function food_schedules()
    {
        $food_schedules = FoodSchedule::all();
        return response($food_schedules, 200);
    }

    public function create(Request $request)
    {
        if (Gate::allows('admin-only'))
        {
            // Hanya User dengan role admin yang dapat mengakses ini
            $createFoodSchedule = new FoodSchedule;
            $createFoodSchedule->schedule_date = $request->schedule_date;
            $createFoodSchedule->id_user = $request->id_user;
            $createFoodSchedule->id_food = $request->id_food;
            $createFoodSchedule->save();
            return response()->json(["message" => "Sukses membuat produk", "data" => $createFoodSchedule], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);

    }

    public function update(Request $request, $id)
    {

        if (Gate::allows('admin-only'))
        {
            // Hanya User dengan role admin yang dapat mengakses ini
            $updateFoodSchedule = FoodSchedule::find($id);

            $updateFoodSchedule->update($request->all());
            return response()->json(["message" => "Produk berhasil diubah", "data" => $updateFoodSchedule], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);

    }

    public function delete($id)
    {

        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini    
            $deleteFoodSchedule = FoodSchedule::find($id);
            $deleteFoodSchedule->delete();
            return response()->json(["message" => "Produk telah dihapus"], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);

    }
}
