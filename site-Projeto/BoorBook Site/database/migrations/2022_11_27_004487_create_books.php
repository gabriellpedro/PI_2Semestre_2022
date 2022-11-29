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

        Schema::create('books', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string('isbn10')->unique();
            $table->string('isbn13')->unique();
            $table->string('category');
            $table->string('publisher');
            $table->string('name');
            $table->string('creators');
            $table->integer('pages');
        });
     
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('books');
    }
};
