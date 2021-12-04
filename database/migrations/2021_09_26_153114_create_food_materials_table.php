<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFoodMaterialsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('food_materials', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('serve');
            $table->string('type')->nullable();
            $table->string('image')->nullable();
            $table->float('fat');
            $table->float('carbo');
            $table->float('calory');
            $table->float('protein');
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
        Schema::dropIfExists('food_materials');
    }
}
