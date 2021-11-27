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
}
