@extends('layouts.main')

@section('title', 'LPV Doações')

@section('content')

    <div id="search-container" class="col-md-12">
        <h1>Busque um livro</h1>
        <form action="/" method="GET">
            <input type="text" id="search" name="search" class="form-control" placeholder="Procurar">
        </form>
    </div>
    <div id="books-container" class="col-md-12">
        @if ($search)
            <h2>Buscando por: {{ $search }}</h2>
        @else
            <h2>Últimos livros cadastrados</h2>
            <p class="subtitle">Veja os livros que estão chegando</p>
        @endif

        @if (count($donations) == 0 && $search)
            <p class="no-donations">Não foi encontrado nenhum livro com "{{ $search }}" <a href="/">Ver
                    todos</a></p>
        @elseif(count($donations) == 0)
            <p class="no-donations">Não há livros disponíveis no momento</p>
        @endif

    </div>
    @if ($donations->count() <= 3)
        <div id="books-container" class="col-md-12">
            <div id="cards-container" class="row">
                @foreach ($donations as $donation)
                    <div class="card col-md-3">
                        <img src="/img/donations/{{ $donation->image }}" alt="{{ $donation->title }}">
                        <div class="card-body">
                            <p class="card-date">{{ date('d/m/Y', strtoTime($donation->created_at)) }}</p>
                            <h5 class="card-title">{{ $donation->title }}</h5>
                            <p class="card-quantidades"></p>
                            <a href="/events/{{ $donation->id }}" class="btn btn-primary">Saber mais</a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    @else
        <div style="width: 60%; max-width: 60%; margin: 0 auto; display: block">
            <!-- You can Change Items using the data-item and Animation Speed by data-slidespeed -->
            <div class="tinyslider" data-items="3" data-slidespeed="700ms" data-autoplay="false">
                <div id="cards-container" class="row">
                    @foreach ($donations->take(-10)->sortByDesc('created_at') as $donation)
                        <div class="card  tinyslide ">
                            <div class="innerborder">
                                <img src="/img/donations/{{ $donation->image }}" alt="{{ $donation->title }}">
                                <div class="card-body">
                                    <p class="card-date">{{ date('d/m/Y', strtoTime($donation->created_at)) }}</p>
                                    <h5 class="card-title">{{ $donation->title }}</h5>
                                    <p class="card-quantidades"></p>
                                    <a href="/events/{{ $donation->id }}" class="btn btn-primary">Saber mais</a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    @endif
    <div id="books-container" class="col-md-12 ">
        @if (!$search)
            <h2 id="all-books">Todos os livros</h2>
            <p class="subtitle">Veja nosso acervo de livros disponíveis</p>
        @endif
    </div>
    <div id="books-container" class="col-md-12">
        <div id="cards-container" class="row">
            @foreach ($paginatedDonations as $donation)
                <div class="card col-md-3">
                    <img src="/img/donations/{{ $donation->image }}" alt="{{ $donation->title }}">
                    <div class="card-body">
                        <p class="card-date">{{ date('d/m/Y', strtoTime($donation->created_at)) }}</p>
                        <h5 class="card-title">{{ $donation->title }}</h5>
                        <p class="card-quantidades"></p>
                        <a href="/events/{{ $donation->id }}" class="btn btn-primary">Saber mais</a>
                    </div>
                </div>
            @endforeach
            <div class="d-flex flex-row justify-content-center align-items-center">
                {{ $paginatedDonations->onEachSide(1)->links() }}
            </div>
        </div>
    </div>
@endsection
