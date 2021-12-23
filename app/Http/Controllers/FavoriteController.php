<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FavoriteController extends Controller
{
    public function search_favorite(Request $request){
        $recipes = DB::table('recipes')->where('name', 'LIKE', "%" . $request->name . "%")->get();

        $food_materials = DB::table('food_materials')->where('name', 'LIKE', "%" . $request->name . "%")->get();
        
        return response()->json(["recipes" => $recipes, "food_materials" => $food_materials], 200);
    }

    public function favorite_show($id_user){
        $control_calory = DB::table('control_calories')
            ->where('id_user', '=', $id_user)
            ->first();

        $recipe_favorites = DB::table('recipe_favorites')
            ->leftJoin('recipes', 'recipes.id', '=', 'recipe_favorites.id_recipe')
            ->where('recipe_favorites.id_user', '=', $id_user)
            ->select('recipe_favorites.time_show', 'recipe_favorites.id', 'recipes.name', 'recipes.made_by', 'recipes.level_of_difficult', 'recipes.publish_date')
            ->get();

        $food_material_favorites = DB::table('food_material_favorites')
            ->leftJoin('food_materials', 'food_materials.id', '=', 'food_material_favorites.id_food_material')
            ->where('food_material_favorites.id_user', '=', $id_user)
            ->select('food_material_favorites.time_show', 'food_materials.id', 'food_materials.name', 'food_materials.serve', 'food_materials.type', 'food_materials.fat', 'food_materials.carbo', 'food_materials.calory', 'food_materials.protein')
            ->get();
        
        return response()->json(["control_calories" => $control_calory, "recipes" => $recipe_favorites, "food_materials" => $food_material_favorites], 200);
    }

    public function favorite_by_time_show($id_user, Request $request){
        $query = DB::table('recipe_favorites')
            ->leftJoin('recipes', 'recipes.id', '=', 'recipe_favorites.id_recipe')
            ->where('recipe_favorites.id_user', '=', $id_user);
        
        if($request->time_show == "Pagi"){
            $query = $query->where('recipe_favorites.time_show', '=', "Pagi");
        }

        if($request->time_show == "Siang"){
            $query = $query->where('recipe_favorites.time_show', '=', "Siang");
        }

        if($request->time_show == "Sore"){
            $query = $query->where('recipe_favorites.time_show', '=', "Sore");
        }

        $recipes = $query->get();

        $query1 = DB::table('food_material_favorites')
            ->leftJoin('food_materials', 'food_materials.id', '=', 'food_material_favorites.id_food_material')
            ->where('food_material_favorites.id_user', '=', $id_user);
        
        if($request->time_show == "Pagi"){
            $query1 = $query1->where('food_material_favorites.time_show', '=', "Pagi");
        }

        if($request->time_show == "Siang"){
            $query1 = $query1->where('food_material_favorites.time_show', '=', "Siang");
        }

        if($request->time_show == "Sore"){
            $query1 = $query1->where('food_material_favorites.time_show', '=', "Sore");
        }

        if($request->time_show == "Default"){
            $query1 = $query1->where('food_material_favorites.time_show', '=', "Default");
        }

        $food_material_favorites = $query1->get();

        return response()->json(["recipes" => $recipes, "food_material" => $food_material_favorites], 200);
    }
}
