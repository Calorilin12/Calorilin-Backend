<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class DailyHealthyController extends Controller
{
    public function daily_healthy_activity($id_user)
    {
        $daily = DB::table('daily_healthy')->where('id_user', '=', $id_user)->first();
        if (date('Y-m-d', strtotime(now())) != date('Y-m-d', strtotime($daily->updated_at))){
            DB::table('daily_healthy')->where('id_user', $id_user)
            ->update([
                'push_up' => 0,
                'sit_up' => 0,
                'run' => 0,
                'drinks' => 0,
            ]);
        }

        $daily_healthy = DB::table('daily_healthy')
            ->leftJoin('user_details', 'user_details.id_user', '=', 'daily_healthy.id_user')
            ->where('daily_healthy.id_user', $id_user)
            ->select('daily_healthy.id', 'user_details.height', 'user_details.weight', 'user_details.body_mass_index', 'daily_healthy.push_up', 'daily_healthy.sit_up', 'daily_healthy.run', 'daily_healthy.drinks')
            ->first();

        return response()->json($daily_healthy, 200);
    }

    public function daily_healthy_activity_push_up($id_user)
    {
        DB::table('daily_healthy')->where('id_user', '=', $id_user)
            ->update([
                'push_up' => 1,
            ]);

        return response()->json(["message" => "Push Up Selesai"], 201);
    }

    public function daily_healthy_activity_sit_up($id_user)
    {
        DB::table('daily_healthy')->where('id_user', '=', $id_user)
            ->update([
                'sit_up' => 1,
            ]);

        return response()->json(["message" => "Sit Up Selesai"], 201);
    }

    public function daily_healthy_activity_run($id_user)
    {
        DB::table('daily_healthy')->where('id_user', '=', $id_user)
            ->update([
                'run' => 1,
            ]);

        return response()->json(["message" => "Run Selesai"], 201);
    }

    public function daily_healthy_activity_drinks($id_user)
    {
        DB::table('daily_healthy')->where('id_user', '=', $id_user)
            ->update([
                'drinks' => DB::raw('drinks+1'),
            ]);

        return response()->json(["message" => "Drink Selesai"], 201);
    }
}
