<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RecipeDetail extends Model
{
    public $table = "recipe_detail";

    protected $fillable = [
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
