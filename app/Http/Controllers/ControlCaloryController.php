<?php

namespace App\Http\Controllers;

use App\ControlCalory;
use Illuminate\Http\Request;
use Illuminate\Auth\Access\Gate;

class ControlCaloryController extends Controller
{
    public function control_calories()
    {

        $control_calories = ControlCalory::all();
        return response($control_calories, 200);
        
    }

    public function create(Request $request)
    {

        if(Gate::allows('admin-only')){
            // Hanya User dengan role admin yang dapat mengakses ini
            $createControlCalory = new ControlCalory;
            $createControlCalory->user_calory = $request->user_calory;
            $createControlCalory->id_user = $request->id_user;
            $createControlCalory->reminder = $request->reminder;
            $createControlCalory->save();
            return response()->json(["message" => "Sukses membuat produk", "data" => $createControlCalory], 201);
        }
        // if(Gate::denies('user-only')){
        //     // Hanya User dengan role selain user yang dapat mengakses ini
        //     $product = Product::create($request->all());
        //     return response()->json(["message" => "Sukses membuat produk", "data" => $product], 201);
        // }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);

    }

    public function update(Request $request, $id)
    {

        if(Gate::allows('admin-only')){
            // Hanya User dengan role admin yang dapat mengakses ini
            $updateControlCalory = ControlCalory::find($id);
            $updateControlCalory->update($request->all());
            return response()->json(["message" => "Produk berhasil diubah", "data" => $updateControlCalory], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);

    }

    public function delete($id)
    {

        if(Gate::allows('admin-only')){
            // Hanya User dengan role admin yang dapat mengakses ini
            $deleteControlCalory = ControlCalory::find($id);
            $deleteControlCalory->delete();
            return response()->json(["message" => "Produk telah dihapus"], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
        
    }
}
