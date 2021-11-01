<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;
use App\User;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        Gate::define('admin-only', function(User $user){
            return $user->check == 1;
        });
        Gate::define('user-only', function(User $user){
            return $user->check == 0;
        });
        // Gate::define('view-order', function(User $user, Order $order){
        //     return $user->id == $order->user_id;
        // });
    }
}
