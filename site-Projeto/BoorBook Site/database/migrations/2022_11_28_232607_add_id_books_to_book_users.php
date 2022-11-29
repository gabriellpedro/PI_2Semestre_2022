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
        Schema::table('book_users', function (Blueprint $table) {
            $table->unsignedBigInteger('id_books');
        });
        Schema::table('book_users', function (Blueprint $table) {
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
        Schema::table('books', function (Blueprint $table) {
            $table->dropForeign(['id_books']);
            $table->dropColumn('id_books');
        });
    }
};
