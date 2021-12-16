<?php

namespace App\Http\Controllers;

use App\Contact;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;

class ContactController extends Controller
{
    public function contact_write(Request $request)
    {
        Contact::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone_number' => $request->phone_number,
            'comment' => $request->comment,
        ]);

        return response()->json(["message" => "Thank You For Your Message"], 201);
    }

    public function contact_all(){
        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            $contacts = Contact::all();

            return response()->json($contacts, 200);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }

    public function contact_delete($id)
    {
        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            Contact::find($id)->delete();

            return response()->json(["message" => "Message deleted"], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }
}
