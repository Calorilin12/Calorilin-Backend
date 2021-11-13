<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FoodMaterial extends Model
{
    public $table = "food_materials";

    protected $fillable = [
        'name',
        'serve',
        'fat',
        'carbo',
        'calory',
        'protein',
    ];
}
