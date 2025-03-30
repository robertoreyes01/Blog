<x-app-layout>
    <h1>Formulario</h1>
    
    <form action="{{route('posts.update', $post)}}" method="post">
        @csrf
        @method('PUT')
        <label for="title">
            Titulo:<input type="text" name="title" id="title" value="{{ old('title', $post->title) }}">
        </label>
        @error('title')
            <p><strong>{{$message}}</strong></p>
        @enderror
        <br>

        <br>
        <label for="slug">
            Slug:<input type="text" name="slug" id="slug" value="{{ old('slug', $post->slug) }}">
        </label>
        @error('slug')
            <p><strong>{{$message}}</strong></p>
        @enderror
        <br>

        <br>
        <label for="category">
            Categoria:<input type="text" name="category" id="category" value="{{ old('category', $post->category) }}">
        </label>
        @error('category')
            <p><strong>{{$message}}</strong></p>
        @enderror
        <br>

        <br>
        <label for="content">
            Contenido:<textarea name="content" id="content">{{ old('content', $post->content) }}</textarea>
        </label>
        @error('content')
            <p><strong>{{$message}}</strong></p>
        @enderror
        <br>

        <br>
        <button type="submit">Actualizar</button>
    </form>
    </x-app-layout>