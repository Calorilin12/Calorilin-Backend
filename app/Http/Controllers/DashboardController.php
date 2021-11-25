<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Gate;

class DashboardController extends Controller
{
    public function dashboard() 
    {
        if (Gate::allows('admin-only')) {
            $users = DB::table('users')->count();
            $food_materials = DB::table('food_materials')->count();
            $recipes = DB::table('recipes')->count();

            $response = [
                'users' => $users,
                'food_material' => $food_materials,
                'recipes' => $recipes,
            ];

            return response()->json($response, 200);
        }

        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }
}
