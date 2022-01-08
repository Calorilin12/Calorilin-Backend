<?php

namespace App\Http\Controllers;

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
            ->select('recipes.id', 'recipes.name', 'recipes.made_by', 'recipes.level_of_difficult', 'recipes.category', 'recipes.publish_date', 'recipe_details.short_description', 'recipe_details.recipe_image', 'recipe_details.duration', 'recipe_details.total_eater', 'recipe_details.total_calory', 'recipe_details.compositions', 'recipe_details.steps_of_make', 'recipe_details.cholesterol', 'recipe_details.diabetes', 'recipe_details.stomach_acid', 'recipe_details.hyper_tension')
            ->get();

        return response()->json($recipes, 200);
    }

    public function recipes_find($id)
    {
        $recipes = DB::table('recipes')
            ->leftJoin('recipe_details', 'recipe_details.id_recipe', '=', 'recipes.id')
            ->select('recipes.id', 'recipes.name', 'recipes.made_by', 'recipes.level_of_difficult', 'recipes.category', 'recipes.publish_date', 'recipe_details.short_description', 'recipe_details.recipe_image', 'recipe_details.duration', 'recipe_details.total_eater', 'recipe_details.total_calory', 'recipe_details.compositions', 'recipe_details.step_of_make', 'recipe_details.cholesterol', 'recipe_details.diabetes', 'recipe_details.stomach_acid', 'recipe_details.hyper_tension')
            ->where('recipes.id', '=', $id)
            ->get();

        return response()->json($recipes, 200);
    }

    public function recipes_create(Request $request)
    {
        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini

            DB::table('recipes')->insert([
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

            $recipe = DB::table('recipes')->select('id')->where('name', $request->name)->first();

            DB::table('recipe_details')->insert([
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

            return response()->json(["message" => "Sukses membuat resep"], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }

    public function recipes_update($id, Request $request)
    {

        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            DB::table('recipes')->where('id', $id)->update([
                'name' => $request->name,
                'made_by' => $request->made_by,
                'level_of_difficult' => $request->level_of_difficult,
                'category' => $request->category,
                'publish-date' => $request->publish_date
            ]);

            $recipe_details = DB::table('recipe_details')->where('id', $id)->first();

            if ($request->file('recipe_image') != null) {
                File::delete('recipe-detail-images/' . $recipe_details->recipe_image);

                $file = $request->file('recipe_image');
                $nama_file = $file->getClientOriginalName();
                $tujuan_upload = 'recipe-detail-images';
                $file->move($tujuan_upload, $nama_file);
            } else {
                $nama_file = $recipe_details->recipe_image;
            }

            DB::table('recipe_details')->where('id', $id)
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
            DB::table('recipes')->where('id', $id)->delete();
            $recipe_details = DB::table('recipe_details')->where('id', $id)->first();
            File::delete('recipe-detail-images/' . $recipe_details->recipe_image);
            DB::table('recipe_details')->where('id', $id)->delete();

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
            $query = $query->where('recipe_details.cholesterol', '!=', 1);
        }

        if (in_array("Diabetes", $diseases)) {
            $query = $query->where('recipe_details.diabetes', '!=', 1);
        }

        if (in_array("Asam Urat", $diseases)) {
            $query = $query->where('recipe_details.uric_acid', '!=', 1);
        }

        if (in_array("Asam Lambung", $diseases)) {
            $query = $query->where('recipe_details.stomach_acid', '!=', 1);
        }

        if (in_array("Hipertensi", $diseases)) {
            $query = $query->where('recipe_details.hyper_tension', '!=', 1);
        }

        $recipes = $query->get();

        return response()->json($recipes, 200);
    }

    public function recipes_find_by_name(Request $request)
    {
        $recipes = DB::table('recipes')->where('name', 'LIKE', "%" . $request->name . "%")->get();

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
