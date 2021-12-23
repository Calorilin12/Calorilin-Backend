<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Gate;

class FeedbackController extends Controller
{
    public function feedback_write($id_user, Request $request)
    {
        DB::table('feedbacks')->insert([
            'id_user' => $id_user,
            'feedback' => $request->feedback,
        ]);

        return response()->json(["message" => "Thank You For Your Feedback"], 201);
    }

    public function feedback_all()
    {
        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            $feedbacks = DB::table('feedbacks')->get();

            return response()->json($feedbacks, 200);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }

    public function feedback_delete($id)
    {
        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            DB::table('feedbacks')->where('id', $id)->delete();

            return response()->json(["message" => "Feedback deleted"], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }
}
