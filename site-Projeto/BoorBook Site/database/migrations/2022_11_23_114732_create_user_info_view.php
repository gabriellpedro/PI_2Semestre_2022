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
        CREATE VIEW doacoes_minas_gerais
        AS
        SELECT
           title as Título,
           city as Cidade,
           cep as CEP,
           description as Descrição,
           author as Autor
        FROM
            users
            INNER JOIN donations ON donations.user_id = users.id
            where users.cep > 30000000 and users.cep < 39999999 
            ;

         ");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        \DB::statement("
        
        DROP VIEW doacoes_minas_gerais
        ");
    }
};
