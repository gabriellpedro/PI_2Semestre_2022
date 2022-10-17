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
        $donation->city = $request->city;
        $donation->cep = $request->cep;
        $donation->phone = $request->phone;
        $donation->email = $request->email;
        $donation->description = $request->description;


        //image upload
        if ($request->hasfile('image') && $request->file('image')->isValid()) {
            
            $requestImage = $request->image;
            
            $extension = $requestImage->extension();
            
            $imageName = md5($requestImage->getClientOriginalName() . strtotime("now")) . "." . $extension;
            
            $requestImage->move(public_path('img/donations'), $imageName);

            $donation->image = $imageName;
        }

        $donation->save();
        return redirect('/')->with('msg', 'Livro cadastrado com sucesso!');
    }

    public function show($id){
        $donation = Donation::findOrFail($id);
        return view('events.show', ['event' =>$donation]);
    }
}