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
            'name' => 'Fabyan Kindarya',
            'phone' => '085157766074',
            'born' => '2001-09-15',
            'email' => 'fkindarya@gmail.com',
            'password' => '123456',
        ]);
    }
}
