<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

        Schema::create('stock', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->integer('quantity');
            $table->date('date_register');
            $table->date('date_update');
        });
        Schema::table('stock', function (Blueprint $table) {
            $table->unsignedBigInteger('id_books');
        });
        Schema::table('stock', function (Blueprint $table) {
            $table->foreign('id_books')->references('id')->on('books');

        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('stock');
    }
};
