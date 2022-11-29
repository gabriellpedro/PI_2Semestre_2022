<?php

namespace Database\Seeders;

use App\Models\Donation;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class DonationTableSeeder extends Seeder 
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       Donation::create([
        "title" => "A",
        "description" => "sdasdasd",
        "author" => "AAAA",
        "category" => "1",
        "image" => "d7b9dcd9618a0435b69328c69c12bc5a.jpg",
        "items" => "['Possui rasuras']",
        "user_id" => 1,
       ]);
    }
}
