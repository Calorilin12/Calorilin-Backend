<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    public $table = "contacts";
    protected $fillable = [
        'name',
        'email',
        'phone_number',
        'comment',
    ];
}
