<?php

namespace App\Http\Controllers;

use File;
use App\FoodMaterial;
use Illuminate\Http\Request;

class FoodMaterialController extends Controller
{
    public function food_materials(FoodMaterial $food_material) {
        $food_materials = $food_material->all();
        return response($food_materials, 200);
    }

    public function create(Request $input) {
        $input->validate([
            'image' => 'mimes:jpeg,png,jpg|max:2048'
        ]);

        $createFood = new FoodMaterial;
        $createFood->name = $input->name;
        $createFood->descriptions = $input->descriptions;

        $file = $input->file('image');
        $nama_file = $file->getClientOriginalName();
        $tujuan_upload = 'food-material-images';
        $file->move($tujuan_upload, $nama_file);

        $createFood->image = $nama_file;
        $createFood->fat = $input->fat;
        $createFood->carbo = $input->carbo;
        $createFood->calory = $input->calory;
        $createFood->protein = $input->protein;
        $createFood->running = $input->running;
        $createFood->cycling = $input->cycling;

        $createFood->save();

        return response([
            'status' => 'OK',
            'message' => 'Bahan telah didaftarkan',
            'data' => $createFood
        ], 200);

        // return response()->json(200);
    }

    public function delete($id)
    {
        $deleteFoodMaterial = FoodMaterial::find($id);
        File::delete('food-material-images/'. $deleteFoodMaterial->image);
        $deleteFoodMaterial->delete();

        return response([
            'status' => 'OK',
            'message' => 'Food Material telah dihapus',
        ], 202);
    }

    public function update($id, Request $request)
    {
        $updateFoodMaterial = FoodMaterial::find($id);

        File::delete('food-material-images/'. $updateFoodMaterial->image);

        $file = $request->file('image');
        $nama_file = $file->getClientOriginalName();
        $tujuan_upload = 'user-images';
        $file->move($tujuan_upload, $nama_file);

        $updateFoodMaterial->image = $nama_file;
        $updateFoodMaterial->update($request->all());
        return response($updateFoodMaterial, 200);

    }
}
