<?php

namespace App\Http\Controllers;

use App\FoodMaterialFavorite;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FoodMaterialFavoriteController extends Controller
{
    public function food_material_favorites($id_user, $id_food_material, Request $request)
    {
        FoodMaterialFavorite::create([
            'id_user' => $id_user,
            'id_food_material' => $id_food_material,
            'time_show' => $request->time_show,
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

    public function food_material_favorites_delete($id)
    {
        FoodMaterialFavorite::find($id)->delete();

        return response()->json(["message" => "Food Material berhasil dihapus"], 201);
    }
}
