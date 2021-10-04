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
}
