<?php

namespace App\Http\Controllers;

use App\ControlCalory;
use App\FoodMaterial;
use App\FoodMaterialFavorite;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Gate;

class FoodMaterialFavoriteController extends Controller
{
    public function food_material_favorites($id_user, $id_food_material, Request $request)
    {
        FoodMaterialFavorite::create([
            'id_user' => $id_user,
            'id_food_material' => $id_food_material,
            'time_show' => $request->time_show,
        ]);

        $food_material = FoodMaterial::find($id_food_material);

        $control_calory = DB::table('control_calories')
            ->where('id_user', '=', $id_user)
            ->first();

        $total_calory = $food_material->calory + $control_calory->user_calory;

        ControlCalory::where('id_user', '=', $id_user)
            ->first()
            ->update([
                'user_calory' => $total_calory,
            ]);

        return response()->json(["message" => "Food Material berhasil disimpan"], 201);
    }

    public function food_material_favorites_show($id_user)
    {
        $food_material_favorites = DB::table('food_material_favorites')
            ->leftJoin('food_materials', 'food_materials.id', '=', 'food_material_favorites.id_food_material')
            ->where('food_material_favorites.id_user', '=', $id_user)
            ->select('food_materials.id', 'food_materials.name', 'food_materials.serve', 'food_materials.type', 'food_materials.fat', 'food_materials.carbo', 'food_materials.calory', 'food_materials.protein', 'food_material_favorites.time_show')
            ->first();

        return response()->json($food_material_favorites, 200);
    }

    public function food_material_favorites_all(){
        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            $food_material_favorites = FoodMaterialFavorite::all();

            return response()->json(["data" => $food_material_favorites], 200);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }

    public function food_material_favorites_delete($id)
    {
        $food_material_favorite = FoodMaterialFavorite::find($id);

        $food_material = FoodMaterial::find($food_material_favorite->id_food_material);

        $control_calory = DB::table('control_calories')
            ->where('id_user', '=', $food_material_favorite->id_user)
            ->first();

        $total_calory = $control_calory->user_calory - $food_material->calory;

        ControlCalory::where('id_user', '=', $food_material_favorite->id_user)
            ->first()
            ->update([
                'user_calory' => $total_calory,
            ]);

        FoodMaterialFavorite::find($id)->delete();

        return response()->json(["message" => "Food Material berhasil dihapus"], 201);
    }
}
