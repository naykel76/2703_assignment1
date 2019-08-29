@extends('layouts.app')
@section('title', $title)

@section('content')

<h1>{{ $title }}</h1>

<p>A post <em>has many</em> comments</p>
<p>A comment <em>belongs to</em> a post</p>
<img src="{{ url('/images/er_diagram.png') }}" alt="ER - Diagram">
@endsection
