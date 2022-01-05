<?php

use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\ControlCaloryController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DailyHealthyController;
use App\Http\Controllers\FavoriteController;
use App\Http\Controllers\FeedbackController;
use App\Http\Controllers\RecipeController;
use App\Http\Controllers\RecipeFavoriteController;
use App\Http\Controllers\ReportBugController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\UserDetailController;
use App\Http\Controllers\FoodMaterialController;
use App\Http\Controllers\FoodMaterialFavoriteController;
use App\Http\Controllers\TentangKamiController;
use App\Http\Controllers\PenggunaanAplikasiController;
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

Route::post('/contact-write', [ContactController::class, 'contact_write']);
Route::get('/tentang-kami', [TentangKamiController::class, 'tentang_kami']);
Route::get('/penggunaan-aplikasi', [PenggunaanAplikasiController::class, 'penggunaan_aplikasi']);

Route::middleware(['auth:sanctum'])->group(function () {
    Route::post('/logout', [AuthController::class, 'logout']);

    Route::put('/user-details/{id}', [UserDetailController::class, 'user_details_update']);

    Route::get('/users/{id}', [UserController::class, 'users_find']);
    Route::put('/users/{id}', [UserController::class, 'users_update']);
    Route::put('/users_password/{id}', [UserController::class, 'users_update_password']);
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
    Route::get('/food-material-favorites-by-time-show/{id_user}', [FoodMaterialFavoriteController::class, 'food_material_favorites_by_time_show']);
    Route::get('/food-material-favorites-get-total-nutrition/{id_user}', [FoodMaterialFavoriteController::class, 'food_material_favorites_get_total_nutrition']);
    //Gate::allows('admin-only')
    Route::get('/food-material-favorites', [FoodMaterialFavoriteController::class, 'food_material_favorites_all']);
    //Gate::allows('admin-only')

    Route::get('/control-calory/{id_user}', [ControlCaloryController::class, 'control_calories']);
    //Gate::allows('admin-only')
    Route::get('/control-calory', [ControlCaloryController::class, 'control_calories_all']);
    //Gate::allows('admin-only')

    Route::get('/dashboard', [DashboardController::class, 'dashboard']);

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

    Route::get('/search-favorite', [FavoriteController::class, 'search_favorite']);
    Route::get('/favorite/{id_user}', [FavoriteController::class, 'favorite_show']);
    Route::get('/favorite-by-time-show/{id_user}', [FavoriteController::class, 'favorite_by_time_show']);

    //Gate::allows('admin-only')
    Route::get('/contacts', [ContactController::class, 'contact_all']);
    Route::delete('/contact/{id}', [ContactController::class, 'contact_delete']);
    //Gate::allows('admin-only')

    //Gate::allows('admin-only')
    Route::post('/article', [ArticleController::class, 'create_article']);
    Route::delete('/article/{id}', [ArticleController::class, 'article_delete']);
    Route::put('/article/{id}', [ArticleController::class, 'article_update']);
    //Gate::allows('admin-only')
    Route::get('/article/{id}', [ArticleController::class, 'article_show']);
    Route::get('/article', [ArticleController::class, 'article_all']);
    
});

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
