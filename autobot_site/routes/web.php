<?php

use App\Http\Controllers\UserController;
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

Route::post('users/update', [UserController::class, 'update']);
Route::post('users/delete', [UserController::class, 'destroy']);
Route::post('users/create', [UserController::class, 'store']);
Route::get('users/index', [UserController::class, 'index']);
Route::get('users/testData', [UserController::class, 'addFiveRandomUsers']);
Route::get('users/getCount', [UserController::class, 'getUsersCount']);

Route::get('/', function() {
    return view("UserManage");
});

Route::get('usersList', function() {
    return view("usersList");
})->name("usersList");

Route::get('UserReportFilter', function() {
    return view("UserReportFilter");
});
Route::get('UserManage', function() {
    return view("UserManage");
});
