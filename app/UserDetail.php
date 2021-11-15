<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserDetail extends Model
{
    protected $fillable = [
        'id_user',
        'born_date',
        'phone_number',
        'image',
        'body_mass_index',
        'weight',
        'height',
        'tension',
    ];
}
