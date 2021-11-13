<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FoodMaterial extends Model
{
    protected $fillable = [
        'name',
        'serve',
        'image',
        'fat',
        'carbo',
        'calory',
        'protein',
    ];
}
