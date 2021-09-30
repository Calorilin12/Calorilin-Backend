<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Auth\Events\Validated;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class UserController extends Controller
{
    public function users(User $user){
        $users = $user->all();
        return response()->json($users, 200);
    }

    public function register(Request $input) {
        $createUser = new User;
        $createUser->name = $input->name;
        $createUser->phone = $input->phone;
        $createUser->born = $input->born;
        $createUser->email = $input->email;
        $createUser->password = $input->password;
        
        $input->validate([
            'image' => 'mimes:jpeg,png,jpg|max:2048'
        ]);

        $image = $input->image->store('public');
        $createUser->image = $image;
        $createUser->save();

        return response([
            'status' => 'OK',
            'message' => 'Pengguna telah didaftarkan',
            'data' => $createUser
        ], 200);

        // return response()->json(200);
    }
}
