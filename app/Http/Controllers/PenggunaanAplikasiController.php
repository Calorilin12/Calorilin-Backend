<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class PenggunaanAplikasiController extends Controller
{
    public function penggunaan_aplikasi(){
        $penggunaan_aplikasi = DB::table('penggunaan_aplikasi')->where('id', 1)->first();

        return response($penggunaan_aplikasi, 200);
    }
}
