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
                        <th scope="col">Interessados</th>
                        <th scope="col">Ações</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($donations as $donation)
                        <tr>
                            <th scope="row">{{ $loop->index + 1 }}</th>
                            <td><a href="/events/{{ $donation->id }}">{{ $donation->title }}</a></td>
                            <td>0 </td>
                            <td>
                                <a href="#" class="btn btn-info edit-btn">
                                    Editar
                                </a>
                                <a href="#">Deletar</a>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        @else
            <p>Você ainda não tem livros <a href="/events/donation">Doar Livro</a></p>
        @endif
    </div>

@endsection
