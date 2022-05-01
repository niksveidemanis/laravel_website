@extends('layouts.app')
    
@section('content')
<a href="/posts" class="btn btn-dark">Go back</a>
    <h1>{{$post->title}}</h1>
    <hr>
    <img style="width:50%;" src="/storage/cover_images/{{$post->cover_image}}">
    <div>
        {!!$post->body!!}
    </div>
    <hr>
    <small>Written on {{$post->created_at}} by {{$post->user->name}}</small>
    @if(!Auth::guest())
        @if(Auth::user()->id == $post->user_id)   
            <hr>
            <a href="/posts/{{$post->id}}/edit" class="btn btn-dark float-start">Edit</a>
            {!!Form::open(['action' => ['App\Http\Controllers\PostsController@destroy', $post->id, 'method' => 'POST', 'class' => 'float-right']])!!}
                {{Form::hidden('_method', 'DELETE')}}
                {{Form::submit('Delete', ['class' => 'btn btn-danger float-end'])}}
            {!!Form::close()!!}
        @endif
    @endif
@endsection