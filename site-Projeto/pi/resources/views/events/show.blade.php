@extends('layouts.main')

@section('title', $event->title)

@section('content')
    <div class="col-md-10 offset-md-1">
        <div class="row">
            <div id="image-container" class="col-md-6">
                <img src="/img/donations/{{ $event->image }}" class="image-fluid" alt="{{ $event->title }}">
            </div>
            <div id="info-container" class="col-md-6">
                <h1> {{ $event->title }}</h1>
                <p class="donation-city"><ion-icon name="pin"></ion-icon>{{ $event->city }}</p>
                <p class="donation-interested"><ion-icon name="people"></ion-icon> x interessados</p>
                <p class="donation-owner"><ion-icon name="bookmarks"></ion-icon> Dono do livro</p>
                <a href="#" class="btn btn-primary" id="donation-submit">Desejo o livro</a>
            </div>
            <div class="col-md-12" id="description-container">
                <h3>Sobre o livro:</h3>
                <p class="book-description">{{ $event->description }}</p>
            </div>
        </div>
    </div>
@endsection