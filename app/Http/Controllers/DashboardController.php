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
            $food_material_calories = DB::table('food_materials')->count();
            $recipes = DB::table('recipes')->count();

            return response()->json([$users, $food_material_calories, $recipes], 200);
        }

        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }
}
