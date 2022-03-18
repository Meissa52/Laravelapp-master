@extends('layouts.app')

@section('content')

    <div class="jumbotron text-center">
        <h1>Welcome To My Blog!</h1>
        <p>This is the laravel blog application you will have the ability to sign in post a blog and delete you owm posts.</p>
        <p><a class="btn btn-primary btn-lg" href="/login" role="button">Login</a> <a class="btn btn-success btn-lg" href="/register" role="button">Register</a></p>
    </div>
@endsection
