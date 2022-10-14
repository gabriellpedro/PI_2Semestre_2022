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


    public function store(Request $request){

        $donation = new Donation;

        $donation->title = $request->title;
        $donation->category = $request->category;
        $donation->cep = $request->cep;
        $donation->phone = $request->phone;
        $donation->email = $request->email;
        $donation->description = $request->description;

        $donation->save();
        return redirect('/');
    }

}