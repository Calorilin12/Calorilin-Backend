<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FoodMaterial extends Model
{
    protected $fillable = [
        'name',
        'serve',
        'type',
        'image',
        'fat',
        'carbo',
        'calory',
        'protein',
    ];
}
