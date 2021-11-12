<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FoodMaterialFavorite extends Model
{
    protected $fillable = [
        'id_user',
        'id_food_material',
    ];
}
