<?php

namespace App\Http\Controllers;

use  App\Models\Donation;

use Illuminate\Http\Request;
use App\Http\Requests\StoreDonation;

class EventController extends Controller
{
    public function index(){
        
        $search = request('search');
        if($search){
            $query = Donation::where([
                ['title' , 'like', '%'.$search.'%']
            ]);

        }else{
            $query = Donation::query();
        }

        $paginatedDonations=with(clone $query)->paginate(10);
        $donations = $query->get();
        
        return view('welcome', compact('donations','search','paginatedDonations'));
   
    }

    public function donation(){
        return view('events.donation');
    }

    public function contact(){
        return view('contact');
    }


    public function store(StoreDonation $request){
        
        $donation = new Donation;
        $donation->title = $request->title;
        $donation->author = $request->author;
        $donation->category = $request->category;
        $donation->description = $request->description;
        $donation->items = $request->items;
        $donation->user_id = auth()->user()->id;
        

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
        return view('events.show', compact('donation'));
    }

    public function dashboard(){
        //dd(auth()->user()->id);
        $user = auth()->user();

        $donations  = $user->donations;
        //dd($donations);
        return view('events.dashboard', compact('donations'));

    }

    public function destroy($id){
        Event::findOrFail($id)->delete();
        return view('/dashboard')->with('msg', 'Doação Excluida com sucesso');
    }
}