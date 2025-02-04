<x-app-layout>
    <a href="{{route('posts.index')}}">Volver</a>

    <h1>Título: {{ $post->title }}</h1>
    <p>
        <b>Categoría: </b>{{ $post->category }}
    </p>
    <p>{{$post->content}}</p>

    <a href="{{route('posts.edit', $post)}}">Editar</a>

    <form action="{{route('posts.destroy', $post)}}" method="post">
        @csrf
        @method('DELETE')
        <button type="submit">Eliminar</button>
    </form>
</x-app-layout>