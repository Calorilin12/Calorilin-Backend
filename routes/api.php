<?php

use App\FoodSchedule;
use App\Http\Controllers\FoodController;
use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\ControlCaloryController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\FoodScheduleController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('register', [AuthController::class, 'register']);
Route::post('login', [AuthController::class, 'login']);

Route::middleware(['auth:sanctum'])->group(function ()
{
    Route::post('logout', [AuthController::class, 'logout']);
    
    Route::get('users', [UserController::class, 'users']);
    Route::put('users/update/{id}', [UserController::class, 'update']);

    Route::get('food', [FoodController::class,'foods']);
    Route::post('food/create', [FoodController::class, 'create']);
    
    Route::get('food-material', [FoodMaterialController::class, 'food_materials']);
    Route::post('food-material/create', [FoodMaterialController::class, 'create']);

    Route::post('control-calory/create', [ControlCaloryController::class, 'create']);
    Route::get('control-calory', [ControlCaloryController::class, 'control_calories']);

    Route::post('food-schedule/create', [FoodScheduleController::class, 'create']);
    Route::get('food-schedule', [FoodScheduleController::class, 'food_schedules']);
});

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
