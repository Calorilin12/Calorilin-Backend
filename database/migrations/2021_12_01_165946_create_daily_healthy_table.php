<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDailyHealthyTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('daily_healthy', function (Blueprint $table) {
            $table->id();
            $table->integer('id_user');
            $table->boolean('push_up')->nullable();
            $table->boolean('sit_up')->nullable();
            $table->boolean('run')->nullable();
            $table->integer('drinks')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('daily_healthy');
    }
}
