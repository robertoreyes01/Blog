<x-app-layout>
    <h1>Formulario</h1>
    
    <form action="{{route('posts.update', $post)}}" method="post">
        @csrf
        @method('PUT')
        <label for="title">
            Titulo:<input type="text" name="title" id="title" value="{{ $post->title }}">
        </label>
        <br>
        <br>
        <label for="slug">
            Slug:<input type="text" name="slug" id="slug" value="{{ $post->slug }}">
        </label>
        <br>
        <br>
        <label for="category">
            Categoria:<input type="text" name="category" id="category" value="{{ $post->category }}">
        </label>
        <br>
        <br>
        <label for="content">
            Contenido:<textarea name="content" id="content">{{$post->content}}</textarea>
        </label>
        <br>
        <br>
        <button type="submit">Actualizar</button>
    </form>
    </x-app-layout>