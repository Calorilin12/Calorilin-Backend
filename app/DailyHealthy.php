<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DailyHealthy extends Model
{
    public $table = "daily_healthy";
    protected $fillable = [
        'id_user',
        'push_up',
        'sit_up',
        'run',
        'drinks',
    ];

    public function user(){
        return $this->belongsTo('App\User', 'id_user');
    }
}
