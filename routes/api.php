<?php

use App\Http\Controllers\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\BookController;


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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

// Route::get('/posts',[PostController::class,'index']);
// Route::post('/posts',[PostController::class,'store']);
// Route::get('/posts/{id}',[PostController::class,'show']);
// Route::put('/posts/{id}',[PostController::class,'update']);
// Route::delete('/posts/{id}',[PostController::class,'destroy']);



Route::post('/api_register',[AuthController::class,'register']);
Route::post('/register',[AuthController::class,'register']);
Route::post('token',[AuthController::class,'login']);
Route::post('login',[AuthController::class,'login']);

Route::get('book',[BookController::class,'index']);

Route::group(['middleware' =>['auth:sanctum']],function()
{

Route::get('/search/{title}',[PostController::class,'search']);

Route::post('/posts',[PostController::class,'store']);
Route::get('/posts/{id}',[PostController::class,'show']);
Route::put('/posts/{id}',[PostController::class,'update']);
Route::delete('/posts/{id}',[PostController::class,'destroy']);
Route::post('/logout',[AuthController::class,'logout']);


    
});


// Route::get('book',[BookController::class,'index']);
