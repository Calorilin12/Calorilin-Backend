<?php

use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\ControlCaloryController;
use App\Http\Controllers\RecipeController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\UserDetailController;
use App\Http\Controllers\FoodScheduleController;
use App\Http\Controllers\FoodMaterialController;
use App\Http\Controllers\RecipeFavoriteController;
use App\RecipeFavorite;
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
    //Gate::allows('admin-only')
    Route::delete('/users/{id}', [UserController::class, 'users_delete']);
    //Gate::allows('admin-only')

    Route::get('/recipes', [RecipeController::class, 'recipes']);
    Route::get('/recipes/{id}', [RecipeController::class, 'recipes_find']);
    //Gate::allows('admin-only')
    Route::post('/recipes', [RecipeController::class, 'recipes_create']);
    Route::put('/recipes/{id}', [RecipeController::class, 'recipes_update']);
    Route::delete('/recipes/{id}', [RecipeController::class, 'recipes_delete']);
    //Gate::allows('admin-only')

    Route::post('/recipe-favorites/{id_user}/{id_recipe}', [RecipeFavoriteController::class, 'recipe_favorites']);
    Route::get('/recipe-favorites/{id}', [RecipeFavoriteController::class, 'recipe_favorites_show']);

    Route::get('/food-materials', [FoodMaterialController::class, 'food_materials']);
    Route::get('/food-materials/{id}', [FoodMaterialController::class, 'food_materials_find']);
    //Gate::allows('admin-only')
    Route::post('/food-materials', [FoodMaterialController::class, 'food_materials_create']);
    Route::put('/food-materials/{id}', [FoodMaterialController::class, 'food_materials_update']);
    Route::delete('/food-materials/{id}', [FoodMaterialController::class, 'food_materials_delete']);
    //Gate::allows('admin-only')

    Route::get('/control-calory', [ControlCaloryController::class, 'control_calories']);
    //Gate::allows('admin-only')
    Route::post('/control-calory', [ControlCaloryController::class, 'create']);
    Route::put('/control-calory/{id}', [ControlCaloryController::class, 'update']);
    Route::delete('/control-calory/{id}', [ControlCaloryController::class, 'delete']);
    //Gate::allows('admin-only')

    Route::get('/food-schedule', [FoodScheduleController::class, 'food_schedules']);
    //Gate::allows('admin-only')
    Route::post('/food-schedule', [FoodScheduleController::class, 'create']);
    Route::put('/food-schedule/{id}', [FoodScheduleController::class, 'update']);
    Route::delete('/food-schedule/{id}', [FoodScheduleController::class, 'delete']);
    //Gate::allows('admin-only')
});

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
