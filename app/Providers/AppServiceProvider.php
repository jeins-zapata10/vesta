<?php

namespace App\Providers;

use App\Http\Controllers\CategoriasController;
use Illuminate\Support\Facades\View;
use App\Models\Categorias;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot()
    {
        View::composer('partials.cat_nav', CategoriasController::class . '@generarMenu');
    }
}
