<?php

namespace App\Http\Controllers;

use File;
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

        $file = $input->file('image');
        $nama_file = $file->getClientOriginalName();
        $tujuan_upload = 'food-images';
        $file->move($tujuan_upload, $nama_file);

        $createFood->image = $nama_file;
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

    public function update($id, Request $request)
    {
        $updateFood = Food::find($id);

        if($request->gambar != null){
            File::delete('food-images/'. $updateFood->image);
            $file = $request->file('image');
            $nama_file = $file->getClientOriginalName();
            $tujuan_upload = 'user-images';
            $file->move($tujuan_upload, $nama_file);
            $updateFood->image = $nama_file;
        }

        $updateFood->update($request->all());
        return response($updateFood, 200);

    }

    public function delete($id)
    {
        $deleteFood = Food::find($id);
        File::delete('food-material-images/'. $deleteFood->image);
        $deleteFood->delete();

        return response([
            'status' => 'OK',
            'message' => 'Food telah dihapus',
        ], 202);
    }
}
