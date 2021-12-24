<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRecipeDetailTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('recipe_details', function (Blueprint $table) {
            $table->id();
            $table->foreignId('id_recipe');
            $table->string('short_description');
            $table->string('recipe_image')->nullable();
            $table->integer('duration');
            $table->integer('total_eater');
            $table->float('total_calory', 6, 2);
            $table->longText('compositions');
            $table->longText('steps_of_make');
            $table->boolean('cholesterol');
            $table->boolean('diabetes');
            $table->boolean('uric_acid');
            $table->boolean('stomach_acid');
            $table->boolean('hyper_tension');
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
        Schema::dropIfExists('recipe_detail');
    }
}
