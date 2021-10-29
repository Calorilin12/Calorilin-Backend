<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FoodSchedule extends Model
{
    public $table = "food_schedules";

    protected $fillable = [
        'schedule_date',
        'id_user',
        'id_food',
    ];

    public function user(){
        return $this->belongsTo('App\User', 'id_user');
    }

    public function food(){
        return $this->belongsTo('App\Food', 'id_food');
    }
}
