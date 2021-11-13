<?php

use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\ControlCaloryController;
use App\Http\Controllers\RecipeController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\UserDetailController;
use App\Http\Controllers\FoodScheduleController;
use App\Http\Controllers\FoodMaterialController;
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

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

Route::middleware(['auth:sanctum'])->group(function ()
{
    Route::post('/logout', [AuthController::class, 'logout']);

    Route::put('/user-details/{id}', [UserDetailController::class, 'user_details_update']);

    Route::get('/users', [UserController::class, 'users']);
    Route::get('/users/{id}', [UserController::class, 'users_find']);
    Route::put('/users/{id}', [UserController::class, 'users_update']);

    Route::get('/recipes', [RecipeController::class, 'recipes']);
    Route::get('/recipes/{id}', [RecipeController::class, 'recipes_find']);
    //Perlu Authorization
    Route::post('/recipes', [RecipeController::class, 'recipes_create']);
    Route::put('/recipes/{id}', [RecipeController::class, 'recipes_update']);
    Route::delete('/recipes/{id}', [RecipeController::class, 'recipes_delete']);

    Route::get('/food-material', [FoodMaterialController::class, 'food_materials']);
    //Perlu Authorization
    Route::post('/food-material', [FoodMaterialController::class, 'create']);
    Route::put('/food-material/{id}', [FoodMaterialController::class, 'update']);
    Route::delete('/food-material/{id}', [FoodMaterialController::class, 'delete']);

    Route::get('/control-calory', [ControlCaloryController::class, 'control_calories']);
    //Perlu Authorization
    Route::post('/control-calory', [ControlCaloryController::class, 'create']);
    Route::put('/control-calory/{id}', [ControlCaloryController::class, 'update']);
    Route::delete('/control-calory/{id}', [ControlCaloryController::class, 'delete']);

    Route::get('/food-schedule', [FoodScheduleController::class, 'food_schedules']);
    //Perlu Authorization
    Route::post('/food-schedule', [FoodScheduleController::class, 'create']);
    Route::put('/food-schedule/{id}', [FoodScheduleController::class, 'update']);
    Route::delete('/food-schedule/{id}', [FoodScheduleController::class, 'delete']);
});

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
