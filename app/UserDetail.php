<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserDetail extends Model
{
    protected $fillable = [
        'born_date',
        'phone_number',
        'image',
        'weight',
        'height',
        'tension',
    ];
}
