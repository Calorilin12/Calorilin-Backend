<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Gate;

class FoodMaterialFavoriteController extends Controller
{
    public function food_material_favorites($id_user, $id_food_material, Request $request)
    {
        DB::table('food_material_favorites')->insert([
            'id_user' => $id_user,
            'id_food_material' => $id_food_material,
            'time_show' => $request->time_show,
        ]);

        $food_material = DB::table('food_materials')->where('id', $id_food_material)->first();

        $control_calory = DB::table('control_calories')
            ->where('id_user', '=', $id_user)
            ->first();

        $total_calory = $food_material->calory + $control_calory->user_calory;

        DB::table('control_calories')->where('id_user', '=', $id_user)
            ->update([
                'user_calory' => $total_calory,
            ]);

        return response()->json(["message" => "Food Material berhasil disimpan"], 201);
    }

    public function food_material_favorites_show($id)
    {
        $food_material_favorites = DB::table('food_material_favorites')
            ->leftJoin('food_materials', 'food_materials.id', '=', 'food_material_favorites.id_food_material')
            ->leftJoin('users', 'users.id', 'food_material_favorites.id_user')
            ->where('food_material_favorites.id', '=', $id)
            ->select('food_material_favorites.id', 'food_materials.id as id_food_material', 'users.name AS username', 'food_materials.name', 'food_materials.serve', 'food_materials.type', 'food_materials.fat', 'food_materials.carbo', 'food_materials.calory', 'food_materials.protein', 'food_material_favorites.time_show')
            ->get();

        return response()->json($food_material_favorites, 200);
    }

    public function food_material_favorites_all()
    {
        $food_material_favorites = DB::table('food_material_favorites')
            ->leftJoin('users', 'users.id', 'food_material_favorites.id_user',)
            ->leftJoin('food_materials', 'food_materials.id', 'food_material_favorites.id_food_material')
            ->select('food_material_favorites.id', 'food_material_favorites.id_user', 'users.name AS username', 'food_materials.name', 'food_materials.calory')
            ->get();

        return response()->json(["data" => $food_material_favorites], 200);
    }

    public function food_material_favorites_delete($id)
    {
        $food_material_favorite = DB::table('food_material_favorites')->where('id', $id)->first();

        $food_material = DB::table('food_materials')->where('id', $food_material_favorite->id_food_material)->first();

        $control_calory = DB::table('control_calories')
            ->where('id_user', '=', $food_material_favorite->id_user)
            ->first();

        $total_calory = $control_calory->user_calory - $food_material->calory;

        DB::table('control_calories')->where('id_user', '=', $food_material_favorite->id_user)
            ->update([
                'user_calory' => $total_calory,
            ]);

        DB::table('food_material_favorites')->where('id', $id)->delete();

        return response()->json(["message" => "Food Material berhasil dihapus"], 201);
    }

    public function food_material_favorites_by_time_show($id_user, Request $request)
    {
        $query1 = DB::table('food_material_favorites')
            ->leftJoin('food_materials', 'food_materials.id', '=', 'food_material_favorites.id_food_material')
            ->where('food_material_favorites.id_user', '=', $id_user)
            ->select('food_material_favorites.id', 'food_material_favorites.id_user', 'food_material_favorites.id_food_material', 'food_material_favorites.time_show', 'food_materials.name', 'food_materials.serve', 'food_materials.type', 'food_materials.image', 'food_materials.fat', 'food_materials.carbo', 'food_materials.protein', 'food_materials.calory');

        if ($request->time_show == "Pagi") {
            $query1 = $query1->where('food_material_favorites.time_show', '=', "Pagi");
        }

        if ($request->time_show == "Siang") {
            $query1 = $query1->where('food_material_favorites.time_show', '=', "Siang");
        }

        if ($request->time_show == "Sore") {
            $query1 = $query1->where('food_material_favorites.time_show', '=', "Sore");
        }

        if ($request->time_show == "Default") {
            $query1 = $query1->where('food_material_favorites.time_show', '=', "Default");
        }

        $food_material_favorites = $query1->get();

        return response()->json($food_material_favorites, 200);
    }

    public function food_material_favorites_get_total_nutrition($id_user, Request $request)
    {
        $total = 0;
        $lemak = 0;
        $karbohidrat = 0;
        $protein = 0;

        $query = DB::table('food_material_favorites')
            ->leftJoin('food_materials', 'food_materials.id', '=', 'food_material_favorites.id_food_material')
            ->where('food_material_favorites.id_user', '=', $id_user);

        if ($request->time_show == "Pagi") {
            $query = $query->where('food_material_favorites.time_show', '=', "Pagi")->get();

            foreach($query as $q){
                $total += $q->calory;
                $lemak += $q->fat;
                $karbohidrat += $q->carbo;
                $protein += $q->protein;
            }
        }

        if ($request->time_show == "Siang") {
            $query = $query->where('food_material_favorites.time_show', '=', "Siang")->get();

            foreach($query as $q){
                $total += $q->calory;
                $lemak += $q->fat;
                $karbohidrat += $q->carbo;
                $protein += $q->protein;
            }
        }

        if ($request->time_show == "Sore") {
            $query = $query->where('food_material_favorites.time_show', '=', "Sore")->get();

            foreach($query as $q){
                $total += $q->calory;
                $lemak += $q->fat;
                $karbohidrat += $q->carbo;
                $protein += $q->protein;
            }
        }

        if ($request->time_show == "Default") {
            $query = $query->where('food_material_favorites.time_show', '=', "Default")->get();
            
            foreach($query as $q){
                $total += $q->calory;
                $lemak += $q->fat;
                $karbohidrat += $q->carbo;
                $protein += $q->protein;
            }
        }

        $get_calories = $total;
        $get_fat = $lemak;
        $get_carbo = $karbohidrat;
        $get_protein = $protein;

        return response()->json(["calories" => $get_calories, "fat" => $get_fat, "carbo" => $get_carbo, "protein" => $get_protein], 200);
    }
}
