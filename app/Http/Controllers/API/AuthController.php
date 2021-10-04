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
        $createUser->phone = $input->phone;
        $createUser->born = $input->born;
        $createUser->email = $input->email;
        $createUser->password = Hash::make($input->password);

        $storeImage = $input->image->store('public/storage');
        $createUser->image = $storeImage;

        $createUser->check = $input->check;
        $createUser->save();

        $token = $createUser->createToken('CalorilinToken')->plainTextToken;

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
 
        if($user || Hash::check($request->password, $user->password))
        {
            $token = $user->createToken('CalorilinTokenLogin')->plainTextToken;
            
            $response = [
                'user' => $user,
                'token' => $token,
            ];
    
            return response($response, 201);
        }
        else
        {
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
