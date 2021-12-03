<?php

use App\FoodMaterialFavorite;
use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\ControlCaloryController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DailyHealthyController;
use App\Http\Controllers\FeedbackController;
use App\Http\Controllers\RecipeController;
use App\Http\Controllers\RecipeFavoriteController;
use App\Http\Controllers\ReportBugController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\UserDetailController;
use App\Http\Controllers\FoodMaterialController;
use App\Http\Controllers\FoodMaterialFavoriteController;
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
    Route::get('/recipes-find-by-disease', [RecipeController::class, 'recipes_find_by_disease']);
    Route::get('/recipes-find-by-name', [RecipeController::class, 'recipes_find_by_name']);
    Route::get('/recipes-find-by-category', [RecipeController::class, 'recipes_find_by_category']);
    //Gate::allows('admin-only')
    Route::post('/recipes', [RecipeController::class, 'recipes_create']);
    Route::put('/recipes/{id}', [RecipeController::class, 'recipes_update']);
    Route::delete('/recipes/{id}', [RecipeController::class, 'recipes_delete']);
    //Gate::allows('admin-only')

    Route::post('/recipe-favorites/{id_user}/{id_recipe}', [RecipeFavoriteController::class, 'recipe_favorites']);
    Route::get('/recipe-favorites/{id_user}', [RecipeFavoriteController::class, 'recipe_favorites_show']);
    Route::delete('/recipe-favorites/{id_recipe_favorites}', [RecipeFavoriteController::class, 'recipe_favorites_delete']);
    //Gate::allows('admin-only')
    Route::get('/recipe-favorites', [RecipeFavoriteController::class, 'recipe_favorites_all']);
    //Gate::allows('admin-only')

    Route::get('/food-materials', [FoodMaterialController::class, 'food_materials']);
    Route::get('/food-materials/{id}', [FoodMaterialController::class, 'food_materials_find']);
    //Gate::allows('admin-only')
    Route::post('/food-materials', [FoodMaterialController::class, 'food_materials_create']);
    Route::put('/food-materials/{id}', [FoodMaterialController::class, 'food_materials_update']);
    Route::delete('/food-materials/{id}', [FoodMaterialController::class, 'food_materials_delete']);
    //Gate::allows('admin-only')

    Route::post('/food-material-favorites/{id_user}/{id_food_material}', [FoodMaterialFavoriteController::class, 'food_material_favorites']);
    Route::get('/food-material-favorites/{id}', [FoodMaterialFavoriteController::class, 'food_material_favorites_show']);
    Route::delete('/food-material-favorites/{id}', [FoodMaterialFavoriteController::class, 'food_material_favorites_delete']);
    //Gate::allows('admin-only')
    Route::get('/food-material-favorites', [FoodMaterialFavoriteController::class, 'food_material_favorites_all']);
    //Gate::allows('admin-only')

    Route::get('/control-calory/{id_user}', [ControlCaloryController::class, 'control_calories']);
    //Gate::allows('admin-only')
    Route::get('/control-calory', [ControlCaloryController::class, 'control_calories_all']);
    //Gate::allows('admin-only')

    //Gate::allows('admin-only')
    Route::get('/dashboard', [DashboardController::class, 'dashboard']);
    //Gate::allows('admin-only')

    Route::get('/daily-healthy-activity/{id_user}', [DailyHealthyController::class, 'daily_healthy_activity']);
    Route::put('/daily-healthy-activity-push-up/{id_user}', [DailyHealthyController::class, 'daily_healthy_activity_push_up']);
    Route::put('/daily-healthy-activity-sit-up/{id_user}', [DailyHealthyController::class, 'daily_healthy_activity_sit_up']);
    Route::put('/daily-healthy-activity-run/{id_user}', [DailyHealthyController::class, 'daily_healthy_activity_run']);
    Route::put('/daily-healthy-activity-drinks/{id_user}', [DailyHealthyController::class, 'daily_healthy_activity_drinks']);

    Route::post('/feedback/{id_user}', [FeedbackController::class, 'feedback_write']);
    //Gate::allows('admin-only')
    Route::get('/feedback', [FeedbackController::class, 'feedback_all']);
    Route::delete('/feedback/{id}', [FeedbackController::class, 'feedback_delete']);
    //Gate::allows('admin-only')

    Route::post('/report-bug/{id_user}', [ReportBugController::class, 'report_bug_write']);
    //Gate::allows('admin-only')
    Route::get('/report-bug', [ReportBugController::class, 'report_bug_all']);
    Route::delete('/report-bug/{id}', [ReportBugController::class, 'report_bug_delete']);
    //Gate::allows('admin-only')
});

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
