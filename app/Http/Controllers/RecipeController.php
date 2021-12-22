<?php

namespace App\Http\Controllers;

use App\Recipe;
use App\RecipeDetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Gate;

class RecipeController extends Controller
{
    public function recipes()
    {
        $recipes = DB::table('recipes')
            ->leftJoin('recipe_details', 'recipe_details.id_recipe', '=', 'recipes.id')
            ->get();

        return response()->json($recipes, 200);
    }

    public function recipes_find($id)
    {
        $recipes = DB::table('recipes')
            ->leftJoin('recipe_details', 'recipe_details.id_recipe', '=', 'recipes.id')
            ->where('recipes.id', '=', $id)
            ->get();

        return response()->json($recipes, 200);
    }

    public function recipes_create(Request $request)
    {

        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini

            $recipe = Recipe::create([
                'name' => $request->name,
                'made_by' => $request->made_by,
                'level_of_difficult' => $request->level_of_difficult,
                'category' => $request->category,
                'publish_date' => $request->publish_date
            ]);

            if ($request->file('recipe_image') != null) {
                $file = $request->file('recipe_image');
                $nama_file = $file->getClientOriginalName();
                $tujuan_upload = 'recipe-detail-images';
                $file->move($tujuan_upload, $nama_file);
            } else {
                $nama_file = null;
            }

            RecipeDetail::create([
                'id_recipe' => $recipe->id,
                'short_description' => $request->short_description,
                'recipe_image' => $nama_file,
                'duration' => $request->duration,
                'total_eater' => $request->total_eater,
                'total_calory' => $request->total_calory,
                'compositions' => $request->compositions,
                'steps_of_make' => $request->steps_of_make,
                'cholesterol' => $request->cholesterol,
                'diabetes' => $request->diabetes,
                'hyper_tension' => $request->hyper_tension,
                'uric_acid' => $request->uric_acid,
                'stomach_acid' => $request->stomach_acid,
            ]);

            $recipes = DB::table('recipes')
                ->leftJoin('recipe_details', 'recipe_details.id_recipe', '=', 'recipes.id')
                ->where('recipes.id', '=', $recipe->id)
                ->get();

            return response()->json(["message" => "Sukses membuat resep", "data" => $recipes], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }

    public function recipes_update($id, Request $request)
    {

        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            Recipe::find($id)
                ->update([
                    'name' => $request->name,
                    'made_by' => $request->made_by,
                    'level_of_difficult' => $request->level_of_difficult,
                    'category' => $request->category,
                    'publish-date' => $request->publish_date
                ]);

            $recipe_details = RecipeDetail::find($id);

            if ($request->file('recipe_image') != null) {
                File::delete('recipe-detail-images/' . $recipe_details->recipe_image);

                $file = $request->file('recipe_image');
                $nama_file = $file->getClientOriginalName();
                $tujuan_upload = 'recipe-detail-images';
                $file->move($tujuan_upload, $nama_file);
            } else {
                $nama_file = $recipe_details->recipe_image;
            }

            RecipeDetail::find($id)
                ->update([
                    'short_description' => $request->short_description,
                    'recipe_image' => $nama_file,
                    'duration' => $request->duration,
                    'total_eater' => $request->total_eater,
                    'total_calory' => $request->total_calory,
                    'compositions' => $request->compositions,
                    'steps_of_make' => $request->steps_of_make,
                    'cholesterol' => $request->cholesterol,
                    'diabetes' => $request->diabetes,
                    'hyper_tension' => $request->hyper_tension,
                    'uric_acid' => $request->uric_acid,
                    'stomach_acid' => $request->stomach_acid,
                ]);

            return response()->json(["message" => "Resep berhasil diubah"], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }

    public function recipes_delete($id)
    {

        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            Recipe::find($id)->delete();
            $recipe_details = RecipeDetail::find($id);
            File::delete('recipe-detail-images/' . $recipe_details->recipe_image);
            $recipe_details->delete();

            return response()->json(["message" => "Resep telah dihapus"], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }

    public function recipes_find_by_disease(Request $request)
    {

        $query = DB::table('recipes')
            ->leftJoin('recipe_details', 'recipe_details.id_recipe', '=', 'recipes.id');

        $diseases = explode(',', $request->disease);

        if (in_array("Cholesterol", $diseases)) {
            $query = $query->where('recipe_details.cholesterol', '=', 1);
        }

        if (in_array("Diabetes", $diseases)) {
            $query = $query->where('recipe_details.diabetes', '=', 1);
        }

        if (in_array("Asam Urat", $diseases)) {
            $query = $query->where('recipe_details.uric_acid', '=', 1);
        }

        if (in_array("Asam Lambung", $diseases)) {
            $query = $query->where('recipe_details.stomach_acid', '=', 1);
        }

        if (in_array("Hipertensi", $diseases)) {
            $query = $query->where('recipe_details.hyper_tension', '=', 1);
        }

        $recipes = $query->get();

        return response()->json($recipes, 200);
    }

    public function recipes_find_by_name(Request $request)
    {
        $recipes = Recipe::where('name', 'LIKE', "%" . $request->name . "%")->get();

        return response()->json($recipes, 200);
    }

    public function recipes_find_by_category(Request $request)
    {
        $query = DB::table('recipes')
            ->leftJoin('recipe_details', 'recipe_details.id_recipe', '=', 'recipes.id');
        
        if($request->category == "Daging"){
            $query = $query->where('recipes.category', '=', "Daging");
        }

        if($request->category == "Sayur"){
            $query = $query->where('recipes.category', '=', "Sayur");
        }

        if($request->category == "Buah"){
            $query = $query->where('recipes.category', '=', "Buah");
        }

        if($request->category == "Minuman"){
            $query = $query->where('recipes.category', '=', "Minuman");
        }

        $recipes = $query->get();

        return response()->json($recipes, 200);
    }
}
