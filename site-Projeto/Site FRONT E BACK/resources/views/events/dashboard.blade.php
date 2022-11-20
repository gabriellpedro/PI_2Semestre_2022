@extends('layouts.main')

@section('title', 'Dashboard')

@section('content')

    <div class="col-md-10 offset-md-1 dashboard-title-container">
        <h1>Meus Eventos</h1>
    </div>
    <div class="col-md-10 offset-md-1 dashboard-donations-container">
        @if (count($donations) > 0)
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Intereçados</th>
                        <th scope="col">Ações</th>
                    </tr>
                </thead>
            </table>
            <tbody>
                @foreach ($donations as $donation)
                    <tr>
                        <th scope="row">{{ $loop->index + 1 }}</th>
                        <td><a href="/events/{{ $donation->id }}">{{ $donation->title }}</a></td>
                        <td>
                            <a href="#">Editar</a>
                            <a href="#">Deletar</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        @else
            <p>Você ainda não tem livros <a href="/events/donation">Doar Livro</a></p>
        @endif
    </div>

@endsection
