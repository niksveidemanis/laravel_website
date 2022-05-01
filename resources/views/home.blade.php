@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Profile') }}</div>
                <h2 style="padding-left: 16px;">Your posts</h2>
                @if(count($posts)>0)
                    <table class="table table-striped">
                        <tr>
                            <td style="font-weight: bold;">Title</td>
                            <td></td>
                            <td></td>
                        </tr>
                        @foreach($posts as $post)
                        <tr>
                            <td class="text">{{$post->title}}</td>
                            <td><a href="/posts/{{$post->id}}/edit" class="btn btn-secondary">Edit</a></td>
                            <td>
                                {!!Form::open(['action' => ['App\Http\Controllers\PostsController@destroy', $post->id, 'method' => 'POST', 'class' => 'float-right']])!!}
                                    {{Form::hidden('_method', 'DELETE')}}
                                    {{Form::submit('Delete', ['class' => 'btn btn-danger float-end'])}}
                                {!!Form::close()!!}
                            </td>
                        </tr>
                        @endforeach
                    </table>
                @else
                    <p>You dont have any posts!</p>
                @endif

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    
                    {{ __('You are logged in!') }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
