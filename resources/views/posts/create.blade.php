<x-app-layout>
    <h1>Formulario</h1>

    {{-- @if ($errors->any())
        <div>
            <h2>Errores</h2>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{$error}}</li>
                @endforeach
            </ul>
        </div>
        
    @endif --}}

    <form action="{{route('posts.store')}}" method="post">
        @csrf
        <label for="title">
            Titulo:<input type="text" name="title" id="title" value="{{old('title')}}">
        </label>
        @error('title')
            <p><strong>{{$message}}</strong></p>
        @enderror
        <br>

        <br>
        <label for="slug">
            Slug:<input type="text" name="slug" id="slug" value="{{old('slug')}}">
        </label>
        @error('slug')
            <p><strong>{{$message}}</strong></p>
        @enderror
        <br>

        <br>
        <label for="category">
            Categoria:<input type="text" name="category" id="category" value="{{old('category')}}">
        </label>
        @error('category')
            <p><strong>{{$message}}</strong></p>
        @enderror
        <br>

        <br>
        <label for="content">
            Contenido:<textarea name="content" id="content">{{old('content')}}</textarea>
        </label>
        @error('content')
            <p><strong>{{$message}}</strong></p>
        @enderror
        <br>
        
        <br>
        <button type="submit">Enviar</button>
    </form>
</x-app-layout>