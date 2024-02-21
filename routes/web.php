<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\LogoutController;
use App\Http\Controllers\ApiController;
use App\Http\Controllers\UserController;

Route::get('/login', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('/login', [LoginController::class, 'login']);
Route::post('/logout', [LogoutController::class, 'logout'])->name('logout');

// Route untuk pencarian
Route::get('/search-by-name', [ApiController::class, 'searchByName'])->name('search-by-name')->middleware('auth');
Route::get('/search-by-nim', [ApiController::class, 'searchByNim'])->name('search-by-nim')->middleware('auth');
Route::get('/search-by-myd', [ApiController::class, 'searchByMyd'])->name('search-by-myd')->middleware('auth');
Route::get('/search-by-ymd', [ApiController::class, 'searchByYmd']);

// Route untuk pengelolaan pengguna
Route::resource('users', UserController::class)->middleware('auth');
Route::get('/users/{id}/edit', [UserController::class, 'edit'])->name('users.edit');


Route::get('/welcome', function () {
    return view('welcome');
})->middleware('auth');

Route::get('/', function () {
    return redirect()->route('login');
});
