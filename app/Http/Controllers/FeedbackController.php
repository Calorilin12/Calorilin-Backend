<?php

namespace App\Http\Controllers;

use App\Feedback;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;

class FeedbackController extends Controller
{
    public function feedback_write($id_user, Request $request)
    {
        Feedback::create([
            'id_user' => $id_user,
            'feedback' => $request->feedback,
        ]);

        return response()->json(["message" => "Thank You For Your Feedback"], 201);
    }

    public function feedback_all()
    {
        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            $feedbacks = Feedback::all();

            return response()->json($feedbacks, 200);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }

    public function feedback_delete($id)
    {
        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            Feedback::find($id)->delete();

            return response()->json(["message" => "Feedback deleted"], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }
}
