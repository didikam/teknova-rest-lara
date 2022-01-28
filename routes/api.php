<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\PegawaiController;
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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::post('register', [AuthController::class, 'register']);
Route::post('login', [AuthController::class, 'login']);

Route::middleware('auth:sanctum')->group(function () {
    // Route::put('pegawai', [PegawaiController::class, 'update']);
    Route::get('pegawai', [PegawaiController::class, 'show']);
    Route::get('pegawai-list', [PegawaiController::class, 'getPegawai'])->name('pegawai.list');
    Route::post('pegawai', [PegawaiController::class, 'store']);
    Route::delete('pegawai', [PegawaiController::class, 'destroy']);


    Route::get('user', [AuthController::class, 'user']);
    Route::post('logout', [AuthController::class, 'logout']);
});
