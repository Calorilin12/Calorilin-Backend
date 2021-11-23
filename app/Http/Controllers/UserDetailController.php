<?php

namespace App\Http\Controllers;

use App\UserDetail;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class UserDetailController extends Controller
{
    public function user_details_update($id, Request $request)
    {
        $user = UserDetail::find($id);
        File::delete('user-detail-images/' . $user->image);
        
        if ($request->file('image') != null) {
            $file = $request->file('image');
            $nama_file = $file->getClientOriginalName();
            $tujuan_upload = 'user-detail-images';
            $file->move($tujuan_upload, $nama_file);
        } else {
            $nama_file = $user->image;
        }

        $users = UserDetail::find($id)
            ->update([
                'id_user' => $id,
                'born_date' => $request->born_date,
                'phone_number' => $request->phone_number,
                'image' => $nama_file,
                'weight' => $request->weight,
                'height' => $request->height,
                'tension' => $request->tension,
            ]);
        
        $tinggi_badan_kuadrat = ((($request->height / 100)) * (($request->height / 100)));

        $body_mass_index_count = ($request->weight / $tinggi_badan_kuadrat);
        if ($body_mass_index_count < 18.5) {
            UserDetail::find($id)->update(['body_mass_index' => "Berat Badan Kurang"]);
        } else if (($body_mass_index_count >= 18.5) && ($body_mass_index_count <= 22.9)) {
            UserDetail::find($id)->update(['body_mass_index' => "Berat Badan Normal"]);
        } else if (($body_mass_index_count >= 23) && ($body_mass_index_count <= 29.9)) {
            UserDetail::find($id)->update(['body_mass_index' => "Berat Badan Berlebih"]);
        } else if ($body_mass_index_count >= 30) {
            UserDetail::find($id)->update(['body_mass_index' => "Obesitas"]);
        }

        $userss = UserDetail::find($id);

        return response()->json(["message" => "User Detail berhasil diubah", "data" => $userss], 201);
    }
}
