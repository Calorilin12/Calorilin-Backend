<?php

namespace App\Http\Controllers;

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

        $createFood = new FoodMaterial();
        $createFood->name = $input->name;
        $createFood->descriptions = $input->descriptions;

        $storeImage = $input->image->store('public/food-material-images');
        $createFood->image = $storeImage;

        $createFood->fat = $input->fat;
        $createFood->carbo = $input->carbo;
        $createFood->calory = $input->calory;
        $createFood->protein = $input->protein;
        $createFood->burn_calories = $input->burn_calories;

        $createFood->save();

        return response([
            'status' => 'OK',
            'message' => 'Bahan telah didaftarkan',
            'data' => $createFood
        ], 200);

        // return response()->json(200);
    }
}
