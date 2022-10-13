<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use  App\Models\Donation;

class EventController extends Controller
{
    public function index(){
        
        $donations = Donation::all();
        return view('welcome', ['donations' =>$donations]);
   
    }

    public function donation(){
        return view('events.donation');
    }

    public function contact(){
        return view('contact');
    }

    public function products(){
        return view('products');
    }
}
