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

    public function update(Request $request, $id)
    {
        $user = User::find($id);
        $user->update($request->all());
        return response($user, 200);
    }
}
