<?php

namespace App\Http\Controllers;

use App\FoodMaterial;
use Illuminate\Http\Request;
use Illuminate\Auth\Access\Gate;
use Illuminate\Support\Facades\File;

class FoodMaterialController extends Controller
{
    public function food_materials(FoodMaterial $food_material)
    {

        $food_materials = $food_material->all();
        return response($food_materials, 200);

    }

    public function create(Request $input)
    {
        if (Gate::allows('admin-only'))
        {
            // Hanya User dengan role admin yang dapat mengakses ini
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
            return response()->json(["message" => "Sukses membuat produk", "data" => $createFood], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
        // return response()->json(200);
    }

    public function update($id, Request $request)
    {

        if (Gate::allows('admin-only'))
        {
            // Hanya User dengan role admin yang dapat mengakses ini
            $updateFoodMaterial = FoodMaterial::find($id);

            if($request->gambar != null)
            {
                File::delete('food-material-images/'. $updateFoodMaterial->image);
                $file = $request->file('image');
                $nama_file = $file->getClientOriginalName();
                $tujuan_upload = 'user-images';
                $file->move($tujuan_upload, $nama_file);
                $updateFoodMaterial->image = $nama_file;
            }

            $updateFoodMaterial->update($request->all());
            return response()->json(["message" => "Produk berhasil diubah", "data" => $updateFoodMaterial], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);

    }

    public function delete($id)
    {

        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            $deleteFoodMaterial = FoodMaterial::find($id);
            File::delete('food-material-images/'. $deleteFoodMaterial->image);
            $deleteFoodMaterial->delete();
            return response()->json(["message" => "Produk telah dihapus"], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);

    }

}
