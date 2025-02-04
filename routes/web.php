<?php

use App\Http\Controllers\PostController;
use App\Models\Post;
use Illuminate\Support\Facades\Route;

use function Pest\Laravel\get;
use function Pest\Laravel\post;

Route::get('/', function () {
    return view('welcome');
});

// Route::get('/', HomeController::class);

// Route::get('/posts', [PostController::class, 'index'])->name('posts.index');
// Route::get('/posts/create', [PostController::class, 'create'])->name('posts.create');
// Route::post('/posts', [PostController::class, 'store'])->name('posts.store');
// Route::get('/posts/{post}', [PostController::class, 'show'])->name('posts.show');
// Route::get('/posts/{post}/edit', [PostController::class, 'edit'])->name('posts.edit');
// Route::put('/posts/{post}', [PostController::class, 'update'])->name('posts.update');
// Route::delete('/posts/{post}', [PostController::class, 'destroy'])->name('posts.destroy');

Route::resource('articulos', PostController::class)
    ->parameter('articulos', 'post')
    ->names('posts');

// Route::apiResource('posts', PostController::class);

Route::get('prueba', function () {
    //Crear un nuevo post
    // $post = new Post();
    // $post->title = 'Mi Cuarto Post';
    // $post->content = 'Contenido de mi cuarto post';
    // $post->category = 'Categoria de mi cuarto post';

    // Buscar un post
    $post = Post::find(1);
    // $post = Post::where('title', 'Mi segundo post')->first();
    // $post->category = 'Categoria actualizada';

    //Buscar varios posts
    // $post = Post::all();
    // $post = Post ::where('id', '>=', '2')->get();
    // $post = Post::orderBy('id', 'desc')->get();

    //Listar solo algunos campos
    // $post = Post::orderBy('category', 'asc')
    //             ->select('id', 'title', 'category')
    //             ->take(2)
    //             ->get();

    //Eliminar un post
    // $post = Post::find(1);
    // $post->delete();

    // $post->save();
    // return $post;

    return $post->published_at->format('d-m-Y');

});