<?php

namespace App\Http\Controllers;

use App\FoodMaterial;
use App\FoodMaterialFavorite;
use App\Recipe;
use App\RecipeFavorite;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FavoriteController extends Controller
{
    public function search_favorite(Request $request){
        $recipes = Recipe::where('name', 'LIKE', "%" . $request->name . "%")->get();

        $food_materials = FoodMaterial::where('name', 'LIKE', "%" . $request->name . "%")->get();
        
        return response()->json(["recipes" => $recipes, "food_materials" => $food_materials], 200);
    }

    public function favorite_show($id_user){
        $recipe_favorites = DB::table('recipe_favorites')
            ->leftJoin('recipes', 'recipes.id', '=', 'recipe_favorites.id_recipe')
            ->where('recipe_favorites.id_user', '=', $id_user)
            ->select('recipe_favorites.time_show', 'recipe_favorites.id', 'recipes.name', 'recipes.made_by', 'recipes.level_of_difficult', 'recipes.publish_date')
            ->get();

            $food_material_favorites = DB::table('food_material_favorites')
            ->leftJoin('food_materials', 'food_materials.id', '=', 'food_material_favorites.id_food_material')
            ->leftJoin('users', 'users.id', 'food_material_favorites.id_user')
            ->where('food_material_favorites.id_user', '=', $id_user)
            ->select('users.name AS username', 'food_materials.id', 'food_materials.name', 'food_materials.serve', 'food_materials.type', 'food_materials.fat', 'food_materials.carbo', 'food_materials.calory', 'food_materials.protein', 'food_material_favorites.time_show')
            ->get();
        
        return response()->json(["recipes" => $recipe_favorites, "food_materials" => $food_material_favorites], 200);
    }
}
