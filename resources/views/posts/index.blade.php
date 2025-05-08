<x-app-layout>
    <div class="max-w-4xl mx-auto px-4 py-8">
        <div class="flex justify-between items-center mb-8">
            <h1 class="text-3xl font-bold text-gray-900">Artículos</h1>
            <a href="{{route('posts.create')}}" 
               class="inline-flex items-center px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 transition-colors">
                Nuevo Post
            </a>
        </div>
        
        <div class="bg-white rounded-lg shadow-sm p-6">
            <ul class="divide-y divide-gray-200">
                @foreach ($posts as $post)
                    <li class="py-4">
                        <a href="{{route('posts.show', $post)}}" 
                           class="text-gray-700 hover:text-blue-600 transition-colors">
                            {{ $post->title }}
                        </a>
                    </li>
                @endforeach
            </ul>

            <div class="mt-6">
                {{ $posts->links() }}
            </div>
        </div>
    </div>
</x-app-layout>