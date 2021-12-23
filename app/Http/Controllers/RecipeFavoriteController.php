<?php

namespace App\Http\Controllers;

use App\ControlCalory;
use App\RecipeDetail;
use App\RecipeFavorite;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Gate;

class RecipeFavoriteController extends Controller
{

    public function recipe_favorites_all()
    {
        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            $recipe_favorites = DB::table('recipe_favorites')->get();

            return response()->json(["data" => $recipe_favorites], 200);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }

    public function recipe_favorites($id_user, $id_recipe, Request $request)
    {
        DB::table('recipe_favorites')->insert([
            'id_user' => $id_user,
            'id_recipe' => $id_recipe,
            'time_show' => $request->time_show,
        ]);

        $recipe = DB::table('recipe_details')->where('id', $id_recipe)->first();

        $control_calory = DB::table('control_calories')
            ->where('id_user', '=', $id_user)
            ->first();

        $total_calory = $recipe->total_calory + $control_calory->user_calory;

        DB::table('control_calories')->where('id_user', '=', $id_user)
            ->update([
                'user_calory' => $total_calory,
            ]);

        return response()->json(["message" => "Resep berhasil disimpan"], 201);
    }

    public function recipe_favorites_show($id_user)
    {
        $recipe_favorites = DB::table('recipe_favorites')
            ->leftJoin('recipes', 'recipes.id', '=', 'recipe_favorites.id_recipe')
            ->where('recipe_favorites.id_user', '=', $id_user)
            ->select('recipe_favorites.time_show', 'recipe_favorites.id', 'recipes.name', 'recipes.made_by', 'recipes.level_of_difficult', 'recipes.publish_date')
            ->get();

        return response()->json($recipe_favorites, 201);
    }

    public function recipe_favorites_delete($id)
    {
        $recipe_favorite = DB::table('recipe_favorites')->where('id', $id)->first();

        $recipe = DB::table('recipe_details')->where('id', $recipe_favorite->id_recipe)->first();

        $control_calory = DB::table('control_calories')
            ->where('id_user', '=', $recipe_favorite->id_user)
            ->first();

        $total_calory = $control_calory->user_calory - $recipe->total_calory;

        DB::table('control_calories')->where('id_user', '=', $recipe_favorite->id_user)
            ->update([
                'user_calory' => $total_calory,
            ]);

            DB::table('recipe_favoritess')->where('id', $id)->delete();

        return response()->json(["message" => "Resep berhasil dihapus"], 201);
    }
}
