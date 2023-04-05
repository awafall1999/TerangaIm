<?php

    use App\Http\Controllers\WelcomeController;
    use App\Http\Controllers\ProfileController;
    use Illuminate\Support\Facades\Route;


    // =====================================================
    // |        📂📂 Routes Simples - Page Vitrine        |
    // =====================================================
    Route::get('/', [WelcomeController::class, 'index'])->name('home');

    Route::view('/contact', 'pages/vitrine/contact')->name("contact");
    Route::view('/homeVitrine', 'pages/vitrine/home')->name("homeVitrine");

    // =====================================================
    // |        📂📂 Routes Resource - Page Admin        |
    // =====================================================


    // =====================================================
    // |        📂📂 Routes Authentification            |
    // =====================================================
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->middleware(['auth', 'verified'])->name('dashboard');

    Route::middleware('auth')->group(function () {
        Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
        Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
        Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    });

    require __DIR__.'/auth.php';
