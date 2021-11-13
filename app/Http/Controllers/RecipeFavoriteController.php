<?php

namespace App\Http\Controllers;

use App\RecipeFavorite;
use Illuminate\Support\Facades\DB;

class RecipeFavoriteController extends Controller
{
    public function recipe_favorites($id_user, $id_recipe)
    {
        RecipeFavorite::create([
            'id_user' => $id_user,
            'id_recipe' => $id_recipe,
        ]);

        return response()->json(["message" => "Resep berhasil disimpan"], 201);
    }

    public function recipe_favorites_show($id_user)
    {
        $recipe_favorites = DB::table('recipe_favorites')
            ->leftJoin('recipes', 'recipes.id', '=', 'recipe_favorites.id_recipe')
            ->where('recipe_favorites.id_user', '=', $id_user)
            ->select('recipes.id', 'recipes.name', 'recipes.made_by', 'recipes.level_of_difficult', 'recipes.publish_date')
            ->get();

        return response()->json($recipe_favorites, 201);
    }

    public function recipe_favorites_delete($id_user, $id_recipe)
    {
        RecipeFavorite::where('id_user', '=', $id_user)
            ->where('id_recipe', '=', $id_recipe)
            ->delete();

        return response()->json(["message" => "Resep berhasil dihapus"], 201);
    }
}
