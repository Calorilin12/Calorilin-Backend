<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'Admin Calorilin',
            'phone' => '08xxx',
            'born' => '2021-10-15',
            'email' => 'admin@gmail.com',
            'password' => '123',
            'check' => 1,
        ]);
    }
}
