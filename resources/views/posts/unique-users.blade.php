{{---------------------------------------------------------------------------
  displays list of all unique users
---------------------------------------------------------------------------}}

@extends('layouts.app')

@section('title', $title)


@section('content')
<h1>{{ $title }}</h1>
@foreach ($users as $user)
<div class="bx">
  <a href="/post/users/{{ $user->username }}">{{ $user->username }}</a>
</div>

@endforeach

@endsection
