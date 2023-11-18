<?php
namespace Alkaris\TwoFAAuth;
use Alkaris\TwoFAAuth\Http\Traits\HelperTrait;
use Illuminate\Support\ServiceProvider;

class TwoFAAuthProvider extends ServiceProvider{
    use HelperTrait;

    public function boot(){
        $this->loadRoutesFrom(__DIR__ . '/routes/web.php');
        $this->loadRoutesFrom(__DIR__ . '/routes/api.php');
        $this->loadViewsFrom(__DIR__ . '/views', 'two-fa-auth');

        /* Load migrations from database/migrations */
        $this->loadMigrationsFrom(__DIR__ . '/database/migrations');
    }
    public function register(){

    }
}
