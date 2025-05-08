<?php

namespace App\Http\Controllers;

use App\Http\Requests\StorePostRequest;
use App\Mail\PostCreatedMail;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class PostController extends Controller
{
    public function index()
    {
        $posts = Post::orderBy('id', 'desc')->paginate(10);

        return view('posts.index', compact('posts'));
    }

    public function show(Post $post)
    {
        // $post = Post::find($post);
        return view('posts.show', compact('post'));
    }

    public function create()
    {
        return view('posts.create');
    }

    public function store(StorePostRequest $request)
    {
        // $post = new Post();

        // $post->title = request('title');
        // $post->slug = request('slug');
        // $post->content = request('content');
        // $post->category = request('category');

        // $post->save();

        // $request->validate([
        //     'title' => ['required'],['max:255'],
        //     'slug' => 'required|unique:posts',
        //     'content' => 'required',
        //     'category' => 'required',
        // ]);
        $post = Post::create(request()->all());
        Mail::to('prueba@prueba.com')->send(new PostCreatedMail($post));
        return redirect()->route('posts.index');
    }

    public function edit(Post $post)
    {
        // $post = Post::find($post);
        return view('posts.edit', compact('post'));
    }

    public function update(Request $request, Post $post)
    {
        // $post = Post::find($post);

        // $post->title = $request->title;
        // $post->slug = $request->slug;
        // $post->content = $request->content;
        // $post->category = $request->category;

        // $post->save();

        $request->validate([
            'title' => 'required|max:255',
            'slug' => ['required'], ["unique:posts,slug,{post->id}"],
            'content' => 'required',
            'category' => 'required',
        ]);
        $post->update($request->all());
        return redirect()->route('posts.show', $post);
    }

    public function destroy(Post $post)
    {
        // $post = Post::find($post);
        $post->delete();

        return redirect()->route('posts.index');
    }
}
