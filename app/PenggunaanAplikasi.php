<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PenggunaanAplikasi extends Model
{
    public $table = "penggunaan_aplikasi";
    protected $fillable = [
        'judul',
        'penggunaan_aplikasi',
    ];
}
