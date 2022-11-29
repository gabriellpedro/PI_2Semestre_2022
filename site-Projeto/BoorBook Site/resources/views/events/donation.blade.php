@extends('layouts.main')

@section('title', 'Doar Livros')

@section('content')
    <div id="donation-create-container container" class="col-md-6 offset-md-3">

        <form action="/events" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <h1>Doe seu Livro</h1>
                <div class="form-group">
                    <label for="image">Imagem do livro</label>
                    <input type="file" id="image" name="image" class="form-control-file">
                </div>

                <div class="form-group col-md-6">
                    <label for="title">Livro</label>
                    <input type="text" class="form-control @error('title') is-invalid @enderror" id="title"
                        name="title" placeholder="Nome do livro">
                    @error('title')
                        <p class="text-danger">{{ $message }}</p>
                    @enderror
                </div>
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
                <div class="form-group col-md-6">
                    <label for="category">Gênero</label>
                    <select name="category" class="form-select  @error('category') is-invalid @enderror">
                        <option value="" selected>Selecione o genero</option>
                        <option value="1">Administração</option>
                        <option value="2">Artes</option>
                        <option value="3">Autoajuda/Motivacional</option>
                        <option value="4">Aventura</option>
                        <option value="5">Biografia</option>
                        <option value="6">Ciência</option>
                        <option value="7">Didático</option>
                        <option value="8">Direito</option>
                        <option value="9">Engenharia</option>
                        <option value="10">Esporte</option>
                        <option value="12">Ficção</option>
                        <option value="13">Geografia e História</option>
                        <option value="14">HQs e Mangás</option>
                        <option value="15">Infantil</option>
                        <option value="16">Informática</option>
                        <option value="17">Marketing</option>
                        <option value="18">Medicina</option>
                        <option value="19">Política</option>
                        <option value="20">Psicologia</option>
                        <option value="21">Religioso</option>
                        <option value="22">Romântico</option>
                        <option value="23">Saude</option>
                    </select>
                    @error('category')
                        <p class="text-danger">{{ $message }}</p>
                    @enderror
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12">
                    <label for="author">Autor</label>
                    <input type="author" class="form-control @error('author') is-invalid @enderror" id="author"
                        name="author" placeholder="Nome do autor">
                    @error('author')
                        <p class="text-danger">{{ $message }}</p>
                    @enderror
                </div>


                <div class="form-group">
                    <label for="description">Descrição</label>
                    <textarea name="description" id="description" class="form-control"
                        placeholder="De um resumo breve sobre o motivo de estar doando o livro"></textarea>
                </div>
                <div class="form-group">
                    <label for="title">Informações adicionais</label>
                    <div class="form-group">
                        <input type="checkbox" name="items[]" value="Possui rasuras"> Possui rasuras
                    </div>
                    <div class="form-group">
                        <input type="checkbox" name="items[]" value="Está faltando paginas"> Está faltando paginas
                    </div>
                    <div class="form-group">
                        <input type="checkbox" name="items[]" value="O livro foi pouco manuseado"> O livro foi pouco
                        manuseado
                    </div>
                    <div class="form-group">
                        <input type="checkbox" name="items[]" value="Recomendado para maiores de idade"> Recomendado
                        para
                        maiores de idade
                    </div>
                </div>
                <div class="button">
                    <input type="submit" class="btn btn-primary" value="Doar livro">
                </div>
        </form>
    </div>
@endsection
