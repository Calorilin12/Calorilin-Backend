<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Recipe extends Model
{
    protected $fillable = [
        'name',
        'made_by',
        'level_of_difficult',
        'publish_date',
    ];
}
