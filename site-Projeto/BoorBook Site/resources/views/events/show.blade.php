@extends('layouts.main')

@section('title', $donation->title)

@section('content')
    <div class="col-md-10 offset-md-1">
        <div class="row">
            <div id="image-container" class="col-md-6">
                <img src="/img/donations/{{ $donation->image }}" class="image-fluid" alt="{{ $donation->title }}">
            </div>
            <div id="info-container" class="col-md-6">
                <h1> {{ $donation->title }}</h1>
                <p class="donation-city">
                    <ion-icon name="pin"></ion-icon>{{ $donation->user->city }}
                </p>
                <p class="donation-interested">
                    <ion-icon name="people"></ion-icon> x interessados
                </p>
                <p class="donation-owner">
                    <ion-icon name="bookmarks"></ion-icon>{{ $donation->user->name }}
                </p>
                <a href="#" class="btn btn-primary" id="donation-submit">Desejo o livro</a>
                <h3>Informações adicionais do livro</h3>
                <ul id="items-list">
                    @foreach ($donation->items as $item)
                        <li>
                            <ion-icon name="bookmarks"></ion-icon> <span>{{ $item }}</span>
                        </li>
                    @endforeach
                </ul>
            </div>
            <div class="col-md-12" id="description-container">
                <h3>Sobre o livro:</h3>
                <p class="book-description">{{ $donation->description }}</p>
            </div>
        </div>
    </div>
@endsection
