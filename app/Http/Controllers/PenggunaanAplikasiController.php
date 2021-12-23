<?php

namespace App\Http\Controllers;

use App\PenggunaanAplikasi;

class PenggunaanAplikasiController extends Controller
{
    public function penggunaan_aplikasi(){
        $penggunaan_aplikasi = PenggunaanAplikasi::find(1);

        return response($penggunaan_aplikasi, 200);
    }
}
