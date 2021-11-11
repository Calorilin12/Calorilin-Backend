<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function register(Request $input)
    {
        $input->validate([
            'image' => 'mimes:jpeg,png,jpg|max:2048'
        ]);

        $createUser = new User;
        $createUser->name = $input->name;
        $createUser->email = $input->email;
        $createUser->password = Hash::make($input->password);

        if ($input->image != null) {
            $file = $input->file('image');
            $nama_file = $file->getClientOriginalName();
            $tujuan_upload = 'user-images';
            $file->move($tujuan_upload, $nama_file);
            $createUser->image = $nama_file;
        }

        $createUser->check = 0;
        $createUser->save();

        $token = $createUser->createToken('CalorilinRegisterToken')->plainTextToken;

        $response = [
            'user' => $createUser,
            'token' => $token,
        ];

        return response($response, 201);
    }

    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required',
            'password' => 'required',
        ]);

        $user = User::where('email', $request->email)->first();

        if ($user || Hash::check($request->password, $user->password)) {
            $token = $user->createToken('CalorilinLoginToken')->plainTextToken;

            $response = [
                'user' => $user,
                'token' => $token,
            ];

            return response($response, 201);
        } else {
            return response()->json(401);
        }
    }

    public function logout()
    {
        auth()->user()->tokens()->delete();

        return response([
            'message' => 'Log out success'
        ]);
    }
}
