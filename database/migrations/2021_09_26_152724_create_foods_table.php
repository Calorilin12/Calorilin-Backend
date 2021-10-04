<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFoodsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('foods', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->date('publish');
            $table->string('category');
            $table->string('level');
            $table->string('image');
            $table->string('video');
            $table->time('alarm');
            $table->longText('steps');
            $table->longText('compositions');
            $table->float('protein');
            $table->boolean('check');
            $table->string('made');
            $table->float('carbo');
            $table->float('fat');
            $table->float('calory');
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
        Schema::dropIfExists('foods');
    }
}
