@extends('layouts\app')

@section('content')
        <h1>{{$title}}</h1>
        @if(count($services) > 0)
        <ul>
            @foreach($services as $services)
                <li class="list-group-item">{{$services}}</li>
            @endforeach
        </ul>
        @endif
@endsection
