<x-app-layout>
    <h1>Posts</h1>
    <a href="/post/create">Nuevo Post</a>
    
    <ul>
        @foreach ($posts as $post)
            <li>
                <a href = "/posts/{{$post->id}}">{{ $post->title }}</a>
            </li>
        @endforeach
    </ul>
</x-app-layout>