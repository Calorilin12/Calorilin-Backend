<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Food extends Model
{
    protected $fillable = [
        'name',
        'publish',
        'category',
        'level',
        'video',
        'alarm',
        'steps',
        'compositions',
        'protein',
        'check',
        'made',
        'carbo',
        'fat',
        'calory',
    ];
}
