<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ReportBug extends Model
{
    public $table = "report_bugs";
    protected $fillable = [
        'id_user',
        'report_bug',
    ];

    public function user(){
        return $this->belongsTo('App\User', 'id_user');
    }
}
