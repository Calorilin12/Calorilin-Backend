<?php

namespace App\Http\Controllers;

use App\Food;
use Illuminate\Http\Request;
use Illuminate\Auth\Access\Gate;
use Illuminate\Support\Facades\File;

class FoodController extends Controller
{
    public function foods(Food $food)
    {

        $foods = $food->all();
        return response($foods, 200);

    }

    public function create(Request $input)
    {

        if (Gate::allows('admin-only'))
        {
            // Hanya User dengan role admin yang dapat mengakses ini
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
            return response()->json(["message" => "Sukses membuat produk", "data" => $createFood], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);

    }

    public function update($id, Request $request)
    {

        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            $updateFood = Food::find($id);

            if ($request->gambar != null) {
                File::delete('food-images/' . $updateFood->image);
                $file = $request->file('image');
                $nama_file = $file->getClientOriginalName();
                $tujuan_upload = 'user-images';
                $file->move($tujuan_upload, $nama_file);
                $updateFood->image = $nama_file;
            }

            $updateFood->update($request->all());
            return response()->json(["message" => "Produk berhasil diubah", "data" => $updateFood], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);

    }

    public function delete($id)
    {

        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            $deleteFood = Food::find($id);
            File::delete('food-images/' . $deleteFood->image);
            $deleteFood->delete();
            return response()->json(["message" => "Produk telah dihapus"], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);

    }
}
