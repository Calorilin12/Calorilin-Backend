<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RecipeFavorite extends Model
{
    protected $fillable = [
        'id_user',
        'id_recipe',
        'time_show',
    ];
}
