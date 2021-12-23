<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Gate;

class ReportBugController extends Controller
{
    public function report_bug_write($id_user, Request $request)
    {
        DB::table('report_bugs')->insert([
            'id_user' => $id_user,
            'report_bug' => $request->report_bug,
        ]);

        return response()->json(["message" => "Thank You For Your Report"], 201);
    }

    public function report_bug_all()
    {
        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            $report_bugs = DB::table('report_bugs')->get();

            return response()->json($report_bugs, 200);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }

    public function report_bug_delete($id)
    {
        if (Gate::allows('admin-only')) {
            // Hanya User dengan role admin yang dapat mengakses ini
            DB::table('report_bugs')->where('id', $id)->delete();

            return response()->json(["message" => "Report deleted"], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }
}
