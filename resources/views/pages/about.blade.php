@extends('layouts.app')

@section('content')
    <h1><?php echo $title; ?></h1>
    <div class="container">
    <div class="images">
    <img src="{{ asset('image/meissa.jpg') }}" />
    <img src="{{ asset('image/messi.jpeg') }}" />
    </div>
    </div>
    <div class="well">
    <p>Hi welcome to my blog this blog is design for you to use and put information
        that's you want the world to know in this blog you will have the opportunity
        to create your own account then log in after you log in you will have the dashboard
        in there you can create your own blog after that if you go to post you can see 
        other people blog you can view them, but you can't edit or delete them 
        but you can edit your own post and delete your own post.
    </p>
    </div>
@endsection