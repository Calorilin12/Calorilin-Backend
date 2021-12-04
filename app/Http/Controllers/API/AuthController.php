<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\User;
use App\UserDetail;
use App\ControlCalory;
use App\DailyHealthy;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $createUser = new User;
        $createUser->name = $request->name;
        $createUser->email = $request->email;
        $createUser->password = Hash::make($request->password);
        $createUser->check = 0;
        $createUser->save();

        UserDetail::create([
            'id_user' => $createUser->id,
        ]);

        ControlCalory::create([
            'id_user' => $createUser->id,
        ]);

        DailyHealthy::create([
            'id_user' => $createUser->id,
            'push_up' => 0,
            'sit_up' => 0,
            'run' => 0,
            'drinks' => 0,
        ]);
 
        $token = $createUser->createToken('Register Token')->plainTextToken;

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

        if ($user && Hash::check($request->password, $user->password)) {
            $token = $user->createToken('Login Token')->plainTextToken;

            $response = [
                'user' => $user,
                'token' => $token,
            ];

            return response($response, 201);
        } else {
            return response()->json(["message" => "Your Email or Password is Incorrect"], 401);
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
