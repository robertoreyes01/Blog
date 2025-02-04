<x-app-layout>
    <h1>Articulos</h1>
    <a href="{{route('posts.create')}}">Nuevo Post</a>
    
    <ul>
        @foreach ($posts as $post)
            <li>
                <a href = "{{route('posts.show', $post)}}">{{ $post->title }}</a>
            </li>
        @endforeach
    </ul>

    {{ $posts->links() }}
</x-app-layout>