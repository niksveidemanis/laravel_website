@extends('layouts.app')

@section('content')
    <h1>Posts</h1>
    @if(count($posts)>0)
        @foreach($posts as $post)
            <div class="card" style="margin-top: 10px; padding:6px;">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <img style="width:100%;" src="/storage/cover_images/{{$post->cover_image}}">
                    </div>
                    <div class="col-md-8 col-sm-8">
                        <a class="nav-link" style="padding-left:0; font-size:24px;" href="/posts/{{$post->id}}">{{$post->title}}</a>
                        <small style="color:grey;">Written on {{$post->created_at}} by {{$post->user->name}}</small>
            
                    </div>
                </div>
                
            </div>
        @endforeach

        {{--If more then 5posts--}}
        {{$posts->links('pagination::bootstrap-4')}}
    @else
        <p>No posts found!</p>
    @endif
@endsection