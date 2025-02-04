<x-app-layout>
    <a href="/post">Volver</a>

    <h1>Título: {{ $post->title }}</h1>
    <p>
        <b>Categoría: </b>{{ $post->category }}
    </p>
    <p>{{$post->content}}</p>

    <a href="/posts/{{ $post->id }}/edit">Editar</a>

    <form action="/posts/{{$post->id}}" method="post">
        @csrf
        @method('DELETE')
        <button type="submit">Eliminar</button>
    </form>
</x-app-layout>