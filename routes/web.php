<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\LogoutController;
use App\Http\Controllers\ApiController;



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
Route::get('/login', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('/login', [LoginController::class, 'login']);
Route::post('/logout', [LogoutController::class, 'logout'])->name('logout');
//Route::get('/search-by-name', [ApiController::class, 'searchByName']);
Route::get('/search-by-name', [ApiController::class, 'searchByName'])->name('search-by-name')->middleware('auth');
Route::get('/search-by-nim', [ApiController::class, 'searchByNim'])->name('search-by-nim')->middleware('auth');
Route::get('/search-by-myd', [ApiController::class, 'searchByMyd'])->name('search-by-myd')->middleware('auth');

//Route::get('/search-by-nim', [ApiController::class, 'searchByNim']);
Route::get('/search-by-ymd', [ApiController::class, 'searchByYmd']);



Route::get('/welcome', function () {
    return view('welcome');
})->middleware('auth');

/*Route::get('/search-by-name', function () {
    return view('search-by-name');
})->name('search-by-name');
*/

Route::get('/', function () {
   // return view('welcome');
       return redirect()->route('login');

});
