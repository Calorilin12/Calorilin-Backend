<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TentangKami extends Model
{
    public $table = "tentang_kami";
    protected $fillable = [
        'judul',
        'tentang_kami',
    ];
}
