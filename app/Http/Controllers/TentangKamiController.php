<?php

namespace App\Http\Controllers;

use App\TentangKami;
use Illuminate\Http\Request;

class TentangKamiController extends Controller
{
    public function tentang_kami(){
        $tentang_kami = TentangKami::all();

        return response($tentang_kami, 200);
    }
}
