<x-app-layout>
    <div class="max-w-4xl mx-auto px-4 py-8">
        <div class="mb-6">
            <a href="{{route('posts.index')}}" class="text-blue-600 hover:text-blue-800 transition-colors">
                ← Volver
            </a>
        </div>

        <div class="bg-white rounded-lg shadow-sm p-6">
            <h1 class="text-3xl font-bold text-gray-900 mb-4">{{ $post->title }}</h1>
            
            <div class="mb-6">
                <span class="inline-block bg-gray-100 text-gray-700 px-3 py-1 rounded-full text-sm">
                    {{ $post->category }}
                </span>
            </div>

            <div class="prose max-w-none mb-8">
                <p class="text-gray-700 leading-relaxed">{{$post->content}}</p>
            </div>

            <div class="flex gap-4">
                <a href="{{route('posts.edit', $post)}}" 
                   class="inline-flex items-center px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 transition-colors">
                    Editar
                </a>

                <form action="{{route('posts.destroy', $post)}}" method="post" class="inline">
                    @csrf
                    @method('DELETE')
                    <button type="submit" 
                            class="inline-flex items-center px-4 py-2 bg-red-600 text-white rounded-md hover:bg-red-700 transition-colors">
                        Eliminar
                    </button>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>