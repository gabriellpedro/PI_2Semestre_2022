@extends('layouts.main')

@section('title', 'LPV Doações')

@section('content')
  
    <div id="search-container" class="col-md-12">
        <h1>Busque um livro</h1>
        <form action="">
            <input type="text" id="search" name="search" class="form-control" placeholder="Procurar">
        </form>
    </div>
    <div id="books-container" class="col-md-12">
            <h2>Últimos livros cadastrados</h2>
            <p class="subtitle">Veja os livros que estão chegando</p>
            @if (count($donations) == 0)
                <p class="no-donations">Não há livros disponíveis no momento</p>
            @endif
            <div id="cards-container" class="row">
                @foreach ($donations as $donation)
                   <div class="card col-md-3">
                        <img src="/img/donations/{{$donation->image}}" alt="{{ $donation->title }}">
                        <div class="card-body">
                            <p class="card-date">{{ date('d/m/Y', strtoTime($donation->date)) }}</p>
                            <h5 class="card-title">{{$donation->title}}</h5>
                            <p class="card-quantidades"></p>
                            <a href="/events/{{ $donation->id }}" class="btn btn-primary">Saber mais</a>
                        </div>
                    </div> 
              
                @endforeach
                
            </div>
    </div>
@endsection
