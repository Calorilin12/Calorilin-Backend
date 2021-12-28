<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Gate;

class DashboardController extends Controller
{
    public function dashboard()
    {
        $users = DB::table('users')->count();
        $food_materials = DB::table('food_materials')->count();
        $recipes = DB::table('recipes')->count();

        $yearBefore = date('Y', strtotime(now())) - 1;
        $yearNow = date('Y', strtotime(now()));

        $januaryBefore = DB::table('users')
            ->whereMonth('created_at', 1)
            ->whereYear('created_at', $yearBefore)
            ->count();

        $februaryBefore = DB::table('users')
            ->whereMonth('created_at', 2)
            ->whereYear('created_at', $yearBefore)
            ->count();

        $marchBefore = DB::table('users')
            ->whereMonth('created_at', 3)
            ->whereYear('created_at', $yearBefore)
            ->count();

        $aprilBefore = DB::table('users')
            ->whereMonth('created_at', 4)
            ->whereYear('created_at', $yearBefore)
            ->count();

        $mayBefore = DB::table('users')
            ->whereMonth('created_at', 5)
            ->whereYear('created_at', $yearBefore)
            ->count();

        $juneBefore = DB::table('users')
            ->whereMonth('created_at', 6)
            ->whereYear('created_at', $yearBefore)
            ->count();

        $julyBefore = DB::table('users')
            ->whereMonth('created_at', 7)
            ->whereYear('created_at', $yearBefore)
            ->count();

        $augustBefore = DB::table('users')
            ->whereMonth('created_at', 8)
            ->whereYear('created_at', $yearBefore)
            ->count();

        $septemberBefore = DB::table('users')
            ->whereMonth('created_at', 9)
            ->whereYear('created_at', $yearBefore)
            ->count();

        $octoberBefore = DB::table('users')
            ->whereMonth('created_at', 10)
            ->whereYear('created_at', $yearBefore)
            ->count();

        $novemberBefore = DB::table('users')
            ->whereMonth('created_at', 11)
            ->whereYear('created_at', $yearBefore)
            ->count();

        $decemberBefore = DB::table('users')
            ->whereMonth('created_at', 12)
            ->whereYear('created_at', $yearBefore)
            ->count();

        $january = DB::table('users')
            ->whereMonth('created_at', 1)
            ->whereYear('created_at', $yearNow)
            ->count();

        $february = DB::table('users')
            ->whereMonth('created_at', 2)
            ->whereYear('created_at', $yearNow)
            ->count();

        $march = DB::table('users')
            ->whereMonth('created_at', 3)
            ->whereYear('created_at', $yearNow)
            ->count();

        $april = DB::table('users')
            ->whereMonth('created_at', 4)
            ->whereYear('created_at', $yearNow)
            ->count();

        $may = DB::table('users')
            ->whereMonth('created_at', 5)
            ->whereYear('created_at', $yearNow)
            ->count();

        $june = DB::table('users')
            ->whereMonth('created_at', 6)
            ->whereYear('created_at', $yearNow)
            ->count();

        $july = DB::table('users')
            ->whereMonth('created_at', 7)
            ->whereYear('created_at', $yearNow)
            ->count();

        $august = DB::table('users')
            ->whereMonth('created_at', 8)
            ->whereYear('created_at', $yearNow)
            ->count();

        $september = DB::table('users')
            ->whereMonth('created_at', 9)
            ->whereYear('created_at', $yearNow)
            ->count();

        $october = DB::table('users')
            ->whereMonth('created_at', 10)
            ->whereYear('created_at', $yearNow)
            ->count();

        $november = DB::table('users')
            ->whereMonth('created_at', 11)
            ->whereYear('created_at', $yearNow)
            ->count();

        $december = DB::table('users')
            ->whereMonth('created_at', 12)
            ->whereYear('created_at', $yearNow)
            ->count();

        $response = [
            'users' => $users,
            'food_materials' => $food_materials,
            'recipes' => $recipes,
        ];

        $dataYearBefore = [
            'januaryBefore' => $januaryBefore,
            'februaryBefore' => $februaryBefore,
            'marchBefore' => $marchBefore,
            'aprilBefore' => $aprilBefore,
            'mayBefore' => $mayBefore,
            'juneBefore' => $juneBefore,
            'julyBefore' => $julyBefore,
            'augustBefore' => $augustBefore,
            'septemberBefore' => $septemberBefore,
            'octoberBefore' => $octoberBefore,
            'novemberBefore' => $novemberBefore,
            'decemberBefore' => $decemberBefore,
        ];

        $dataYearNow = [
            'january' => $january,
            'february' => $february,
            'march' => $march,
            'april' => $april,
            'may' => $may,
            'june' => $june,
            'july' => $july,
            'august' => $august,
            'september' => $september,
            'october' => $october,
            'november' => $november,
            'december' => $december,

        ];

        return response()->json([
            "data$yearBefore" => $dataYearBefore,
            "data$yearNow" => $dataYearNow, "dashboard" => $response
        ], 200);
    }
}
