<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Auth\Events\Validated;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
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
        $createUser->image = $input->image;
        $input->image->store('public');
        $createUser->save();

        return response([
            'status' => 'OK',
            'message' => 'Pengguna telah didaftarkan',
            'data' => $createUser
        ], 200);

        // return response()->json(200);
    }

    public function login(Request $request) {
        $request->validate([
            'email' => 'required|string|email',
            'password' => 'required|string',
        ]);

        $data = [
            'email'     => $request->email,
            'password'  => $request->password,
        ];

        $user = User::where('email', $request->email)->first();

        if($user)
        {
            if($user->password == $request->password)
            {
                return response()->json(200);
            }
            else
            {
                return response()->json(422);
            }
        }
        else
        {
            return response()->json(401);
        }
    }
}
