<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ControlCalory extends Model
{
    public $table = "control_calories";
    protected $fillable = [
        'id_user',
        'user_calory',
    ];

    public function user(){
        return $this->belongsTo('App\User', 'id_user');
    }
}
