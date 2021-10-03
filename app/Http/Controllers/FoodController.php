<?php

namespace App\Http\Controllers;

use App\User;
use App\Food;
use Illuminate\Http\Request;

class FoodController extends Controller
{
    public function foods(Food $food) {
        $foods = $food->all();
        return response($foods, 200);
    }

    public function create(Request $input) {
        $input->validate([
            'image' => 'mimes:jpeg,png,jpg|max:2048'
        ]);

        $createFood = new Food;
        $createFood->name = $input->name;
        $createFood->publish = $input->publish;
        $createFood->category = $input->category;
        $createFood->level = $input->level;

        $storeImage = $input->image->store('public/food-images');
        $createFood->image = $storeImage;

        $createFood->video = $input->video;
        $createFood->alarm = $input->alarm;
        $createFood->steps = $input->steps;
        $createFood->compositions = $input->compositions;
        $createFood->protein = $input->protein;
        $createFood->check = $input->check;
        $createFood->made = $input->made;
        $createFood->carbo = $input->carbo;
        $createFood->fat = $input->fat;
        $createFood->calory = $input->calory;

        $createFood->save();

        return response([
            'status' => 'OK',
            'message' => 'Menu telah didaftarkan',
            'data' => $createFood
        ], 200);

        // return response()->json(200);
    }
}
