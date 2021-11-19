<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RecipeDetail extends Model
{
    protected $fillable = [
        'id_recipe',
        'short_description',
        'recipe_image',
        'duration',
        'total_eater',
        'total_calory',
        'compositions',
        'steps_of_make',
        'cholesterol',
        'diabetes',
        'uric_acid',
        'stomach_acid',
        'hyper_tension',
    ];
}
