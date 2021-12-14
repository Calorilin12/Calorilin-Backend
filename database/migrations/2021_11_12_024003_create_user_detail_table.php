<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUserDetailTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_details', function (Blueprint $table) {
            $table->id();
            $table->foreignId('id_user');
            $table->date('born_date')->nullable();
            $table->integer('phone_number')->nullable();
            $table->string('image')->nullable();
            $table->string('body_mass_index')->nullable();
            $table->float('weight')->nullable();
            $table->float('height')->nullable();
            $table->string('tension')->nullable();
            $table->boolean('cholesterol')->nullable();
            $table->boolean('diabetes')->nullable();
            $table->boolean('uric_acid')->nullable();
            $table->boolean('stomach_acid')->nullable();
            $table->boolean('hyper_tension')->nullable();
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
        Schema::dropIfExists('user_detail');
    }
}
