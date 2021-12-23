<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class TentangKamiController extends Controller
{
    public function tentang_kami(){
        $tentang_kami = DB::table('tentang_kami')->where('id', 1)->first();

        return response($tentang_kami, 200);
    }
}
