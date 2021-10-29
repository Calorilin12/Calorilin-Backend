<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ControlCalory extends Model
{
    public $table = "control_calories";
    protected $fillable = [
        'user_calory',
        'id_user',
        'reminder',
    ];

    public function user(){
        return $this->belongsTo('App\User', 'id_user');
    }
}
