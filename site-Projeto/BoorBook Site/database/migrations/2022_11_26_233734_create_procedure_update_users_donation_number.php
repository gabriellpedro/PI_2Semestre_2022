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

        $procedure = "DROP PROCEDURE IF EXISTS `update_users_donation_number`;

            CREATE PROCEDURE `update_users_donation_number` (IN idx int)

            BEGIN

                UPDATE users set donation_number = donation_number + 1 where id = idx;

            END;";

  

        \DB::unprepared($procedure);

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        $procedure = "DROP PROCEDURE IF EXISTS `update_users_donation_number`;";
        \DB::unprepared($procedure);
    }
};
