<?php

use App\Http\Controllers\FoodController;
use App\Http\Controllers\API\AuthController;
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
    
    Route::get('users', 'UserController@users');

    Route::get('food', 'FoodController@foods');
    Route::post('food/create', 'FoodController@create');
    
    Route::get('food-material', 'FoodMaterialController@food_materials');
    Route::post('food-material/create', 'FoodMaterialController@create');
});

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
