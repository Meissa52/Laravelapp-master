@extends('layouts.app')

@section('content')
    <h1>Posts</h1>
    @if(count($posts) > 0)
    <div class="well" class="black">
        <div class="row">
        @foreach($posts as $post)
    
                    <div class="col-md-6 col-sm-6" style="margin-bottom:15px;">
                        <a href="/posts/{{$post->id}}"><img style="width:100%; max-height:250px;" src="/storage/cover_images/{{$post->cover_image}}"></a>
                   
                        <h3><a href="/posts/{{$post->id}}">{{$post->title}}</a></h3>
                        <small class="black">Written on {{$post->created_at}} by {{$post->user->name}}</small>
                    </div>
     
        @endforeach
    </div>
</div>
        {{$posts->links()}}
    @else
        <p>No posts found</p>
    @endif
@endsection