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
        \DB::statement("
        CREATE PROCEDURE `Procedure_View_User`()
        BEGIN
            SELECT 
                cpf AS CPF,
                name AS Nome,
                type_user AS TipoUsuario,
                adress AS Endereco,
                phone AS Contato,
                email AS Email
            FROM 
                user;
            END");
           

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        $procedure = "DROP PROCEDURE IF EXISTS `Procedure_View_User`;";
        \DB::unprepared($procedure);
    }
};
