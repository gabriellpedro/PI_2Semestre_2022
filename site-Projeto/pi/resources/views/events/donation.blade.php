@extends('layouts.main')

@section('title', 'Doar Livros')

@section('content')
    <div id="donation-create-container" class="col-md-6 offset-md-3">
        <h1>Doe seu Livro</h1>
        <form action="/events" method="POST">
            @csrf
            <div class="form-group">
                <label for="title">Livro</label>
                <input type="text" class="form-control" id="title" name="title" placeholder="Nome do livro">
            </div>
            <div class="form-group">
                <label for="title">Gênero</label>
                <input type="text" class="form-control" id="category" name="category" placeholder="Digite o gênero do livro ">
            </div>
            <div class="form-group">
                <label for="title">Cep</label>
                <input type="number" class="form-control" id="cep" name="cep" placeholder="Digite o CEP do local">
            </div>
            <div class="form-group">
                <label for="title">Telefone</label>
                <input type="number" class="form-control" id="phone" name="phone" placeholder="Número de contato">
            </div>
            <div class="form-group">
                <label for="title">Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Digite o email de contato ">
            </div>
            <div class="form-group">
                <label for="title">Descrição</label>
                <textarea name="description" id="description"  class="form-control" placeholder="De um resumo breve sobre o motivo de estar doando o livro"></textarea>
            </div>
            <div class="button">
            <input type="submit" class="btn btn-primary" value="Doar livro">
        </div>
        </form>
    </div>
@endsection
