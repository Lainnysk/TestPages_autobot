<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\TelegramUserController;
use App\Models\TelegramUser;
use App\Http\Controllers\CheckCarsController;
use App\Models\CheckCars;
use App\Http\Controllers\RegCarsController;
use App\Models\RegCars;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth');
})->name('auth');

Route::apiResource('telegram_user', TelegramUserController::class)->middleware('role');

Route::post('telegram_user/update', [TelegramUserController::class, 'update'])->middleware('role');

Route::post('login', [AuthController::class, 'login'])->name("login");

Route::get('welcome', function(){
    return view('welcome');
})->name("index")->middleware('role');

Route::post('logout', [AuthController::class, 'logout'])->name('logout');



Route::apiResource('reg_cars', RegCarsController::class)->middleware('role');

Route::post('reg_cars/update', [RegCarsController::class, 'update'])->middleware('role');


Route::get('/RegCars', function () {
    return view('RegCars');
})->name('RegCars')->middleware('role');
