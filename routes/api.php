<?php

use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\ControlCaloryController;
use App\Http\Controllers\RecipeController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\UserDetailController;
use App\Http\Controllers\FoodMaterialController;
use App\Http\Controllers\FoodMaterialFavoriteController;
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

    Route::get('/users/{id}', [UserController::class, 'users_find']);
    Route::put('/users/{id}', [UserController::class, 'users_update']);
    //Gate::allows('admin-only')
    Route::get('/users', [UserController::class, 'users']);
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
    Route::delete('/recipe-favorites/{id_user}/{id_recipe}', [RecipeFavoriteController::class, 'recipe_favorites_delete']);

    Route::get('/food-materials', [FoodMaterialController::class, 'food_materials']);
    Route::get('/food-materials/{id}', [FoodMaterialController::class, 'food_materials_find']);
    //Gate::allows('admin-only')
    Route::post('/food-materials', [FoodMaterialController::class, 'food_materials_create']);
    Route::put('/food-materials/{id}', [FoodMaterialController::class, 'food_materials_update']);
    Route::delete('/food-materials/{id}', [FoodMaterialController::class, 'food_materials_delete']);
    //Gate::allows('admin-only')

    Route::post('/food-material-favorites/{id_user}/{id_food_material}', [FoodMaterialFavoriteController::class, 'food_material_favorites']);
    Route::get('/food-material-favorites/{id}', [FoodMaterialFavoriteController::class, 'food_material_favorites_show']);
    Route::delete('/food-material-favorites/{id_user}/{id_food_material}', [FoodMaterialFavoriteController::class, 'food_material_favorites_delete']);

    Route::get('/control-calory', [ControlCaloryController::class, 'control_calories']);
    //Gate::allows('admin-only')
    Route::post('/control-calory', [ControlCaloryController::class, 'create']);
    Route::put('/control-calory/{id}', [ControlCaloryController::class, 'update']);
    Route::delete('/control-calory/{id}', [ControlCaloryController::class, 'delete']);
    //Gate::allows('admin-only')
});

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
