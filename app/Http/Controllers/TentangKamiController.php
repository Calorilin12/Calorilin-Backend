<?php

namespace App\Http\Controllers;

use App\TentangKami;

class TentangKamiController extends Controller
{
    public function tentang_kami(){
        $tentang_kami = TentangKami::find(1);

        return response($tentang_kami, 200);
    }
}
