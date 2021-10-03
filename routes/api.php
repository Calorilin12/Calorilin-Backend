<?php

use App\Http\Controllers\FoodController;
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

Route::get('users', 'UserController@users');
Route::get('food/resep', 'FoodController@foods');
Route::get('food/food-material', 'FoodMaterialController@food_materials');
Route::post('users/register', 'UserController@register');
Route::post('login', 'UserController@login');
Route::post('food/resep/create', 'FoodController@create');
Route::post('food/food-material/create', 'FoodMaterialController@create');
// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
