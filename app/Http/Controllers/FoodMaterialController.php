<?php

namespace App\Http\Controllers;

use App\FoodMaterial;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Gate;

class FoodMaterialController extends Controller
{
    public function food_materials()
    {
        $food_materials = FoodMaterial::all();
        return response()->json($food_materials, 200);
    }

    public function food_materials_find($id)
    {
        $food_materials = FoodMaterial::find($id);
        return response()->json($food_materials, 200);
    }

    public function food_materials_create(Request $request)
    {
        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            if ($request->file('image') != null) {
                $file = $request->file('image');
                $nama_file = $file->getClientOriginalName();
                $tujuan_upload = 'food-material-images';
                $file->move($tujuan_upload, $nama_file);
            } else {
                $nama_file = null;
            }

            $food_materials = FoodMaterial::create([
                'name' => $request->name,
                'serve' => $request->serve,
                'type' => $request->type,
                'image' => $nama_file,
                'fat' => $request->fat,
                'carbo' => $request->carbo,
                'calory' => $request->calory,
                'protein' => $request->protein,
            ]);

            return response()->json(["message" => "Sukses membuat food material", "data" => $food_materials], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }

    public function food_materials_update($id, Request $request)
    {

        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            $food_material = FoodMaterial::find($id);

            if ($request->file('image') != null) {
                File::delete('food-material-images/' . $food_material->image);
                $file = $request->file('image');
                $nama_file = $file->getClientOriginalName();
                $tujuan_upload = 'food-material-images';
                $file->move($tujuan_upload, $nama_file);
            } else {
                $nama_file = $food_material->image;
            }

            FoodMaterial::find($id)
                ->update([
                    'name' => $request->name,
                    'serve' => $request->serve,
                    'type' => $request->type,
                    'image' => $nama_file,
                    'fat' => $request->fat,
                    'carbo' => $request->carbo,
                    'calory' => $request->calory,
                    'protein' => $request->protein,
                ]);

            return response()->json(["message" => "Food material berhasil diubah"], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }

    public function food_materials_delete($id)
    {

        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            $food_materials = FoodMaterial::find($id);
            File::delete('food-material-images/' . $food_materials->image);
            FoodMaterial::find($id)
                ->delete();
            return response()->json(["message" => "Food material telah dihapus"], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }
}
