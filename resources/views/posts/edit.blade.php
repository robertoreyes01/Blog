<x-app-layout>
    <div class="max-w-4xl mx-auto px-4 py-8">
        <div class="mb-6">
            <h1 class="text-3xl font-bold text-gray-900">Editar Post</h1>
        </div>

        <div class="bg-white rounded-lg shadow-sm p-6">
            <form action="{{route('posts.update', $post)}}" method="post" class="space-y-6">
                @csrf
                @method('PUT')
                
                <div>
                    <label for="title" class="block text-sm font-medium text-gray-700 mb-1">
                        Título
                    </label>
                    <input type="text" 
                           name="title" 
                           id="title" 
                           value="{{ old('title', $post->title) }}"
                           class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500">
                    @error('title')
                        <p class="mt-1 text-sm text-red-600">{{$message}}</p>
                    @enderror
                </div>

                <div>
                    <label for="slug" class="block text-sm font-medium text-gray-700 mb-1">
                        Slug
                    </label>
                    <input type="text" 
                           name="slug" 
                           id="slug" 
                           value="{{ old('slug', $post->slug) }}"
                           class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500">
                    @error('slug')
                        <p class="mt-1 text-sm text-red-600">{{$message}}</p>
                    @enderror
                </div>

                <div>
                    <label for="category" class="block text-sm font-medium text-gray-700 mb-1">
                        Categoría
                    </label>
                    <input type="text" 
                           name="category" 
                           id="category" 
                           value="{{ old('category', $post->category) }}"
                           class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500">
                    @error('category')
                        <p class="mt-1 text-sm text-red-600">{{$message}}</p>
                    @enderror
                </div>

                <div>
                    <label for="content" class="block text-sm font-medium text-gray-700 mb-1">
                        Contenido
                    </label>
                    <textarea name="content" 
                              id="content" 
                              rows="6"
                              class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500">{{ old('content', $post->content) }}</textarea>
                    @error('content')
                        <p class="mt-1 text-sm text-red-600">{{$message}}</p>
                    @enderror
                </div>

                <div class="flex justify-end">
                    <button type="submit" 
                            class="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 transition-colors">
                        Actualizar Post
                    </button>
                </div>
            </form>
        </div>
    </div>
</x-app-layout>