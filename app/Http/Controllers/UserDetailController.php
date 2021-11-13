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
        
        if ($request->image != null) {
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

        return response()->json(["message" => "User Detail berhasil diubah"], 201);
    }
}
