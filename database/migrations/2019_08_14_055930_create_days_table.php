<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDaysTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('days', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('days_dates');
            $table->text('comment');
            $table->integer('user_id');
            $table->integer('month_id');
            $table->integer('part_id');
            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('month_id')->references('id')->on('months');
            $table->foreign('part_id')->references('id')->on('participation');
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
        Schema::dropIfExists('days');
    }
}
