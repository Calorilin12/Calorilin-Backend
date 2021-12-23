<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class UserDetailController extends Controller
{
    public function user_details_update($id, Request $request)
    {
        $user = DB::table('user_details')->where('id', $id)->first();
        File::delete('user-detail-images/' . $user->image);
        
        if ($request->file('image') != null) {
            $file = $request->file('image');
            $nama_file = $file->getClientOriginalName();
            $tujuan_upload = 'user-detail-images';
            $file->move($tujuan_upload, $nama_file);
        } else {
            $nama_file = $user->image;
        }

        DB::table('user_details')->where('id', $id)
            ->update([
                'id_user' => $id,
                'born_date' => $request->born_date,
                'phone_number' => $request->phone_number,
                'image' => $nama_file,
                'weight' => $request->weight,
                'height' => $request->height,
                'tension' => $request->tension,
                'cholesterol' => $request->cholesterol,
                'diabetes' => $request->diabetes,
                'uric_acid' => $request->uric_acid,
                'stomach_acid' => $request->stomach_acid,
                'hyper_tension' => $request->hyper_tension,
            ]);
        
        $tinggi_badan_kuadrat = ((($request->height / 100)) * (($request->height / 100)));

        $body_mass_index_count = ($request->weight / $tinggi_badan_kuadrat);
        if ($body_mass_index_count < 18.5) {
            DB::table('user_details')->where('id', $id)->update(['body_mass_index' => "Kurus"]);
        } else if (($body_mass_index_count >= 18.5) && ($body_mass_index_count <= 22.9)) {
            DB::table('user_details')->where('id', $id)->update(['body_mass_index' => "Ideal"]);
        } else if (($body_mass_index_count >= 23) && ($body_mass_index_count <= 29.9)) {
            DB::table('user_details')->where('id', $id)->update(['body_mass_index' => "Gemuk"]);
        } else if ($body_mass_index_count >= 30) {
            DB::table('user_details')->where('id', $id)->update(['body_mass_index' => "Obesitas"]);
        }

        $userss = DB::table('user_details')->where('id', $id)->first();

        return response()->json(["message" => "User Detail berhasil diubah", "data" => $userss], 201);
    }
}
