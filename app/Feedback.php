<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Feedback extends Model
{
    public $table = "feedbacks";
    protected $fillable = [
        'id_user',
        'feedback',
    ];

    public function user(){
        return $this->belongsTo('App\User', 'id_user');
    }
}
