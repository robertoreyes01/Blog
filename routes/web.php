<?php

use App\Models\Post;
use Illuminate\Support\Facades\Route;

use function Pest\Laravel\get;
use function Pest\Laravel\post;

Route::get('/', function () {
    return view('welcome');
});

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