<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    public $table = "articles";
    protected $fillable = [
        'title',
        'content',
        'writer',
        'article_image',
    ];
}
