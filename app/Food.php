<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Food extends Model
{
    public $table = "foods";
    protected $fillable = [
        'name',
        'publish',
        'category',
        'level',
        'image',
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
