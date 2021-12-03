<?php

namespace App\Http\Controllers;

use App\PenggunaanAplikasi;
use Illuminate\Http\Request;

class PenggunaanAplikasiController extends Controller
{
    public function penggunaan_aplikasi(){
        $penggunaan_aplikasi = PenggunaanAplikasi::all();

        return response($penggunaan_aplikasi, 200);
    }
}
