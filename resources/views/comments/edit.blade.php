@extends('layouts.app')

@section('title', $title)

@section('content')

<div class="continer">

  <h1>{{ $title }}</h1>

  <br>

  <form class="bx" method="POST" action="{{ url('/update-comment', $comment->id) }}">

    @csrf

    @component('components.input', [ 'field_for' => 'username', 'title' => 'Username', 'value' => $comment->username])@endcomponent

    @component('components.textarea', [ 'field_for' => 'message', 'title' => 'Message', 'value' => $comment->message])@endcomponent

    <div class="frm-row">

      <input type="submit" class="btn-primary">

    </div>

  </form>

</div>

@endsection

{{--

@component('components.modal', ['modalId' => 'edit-post', 'modal_title' => 'Edit Post'])

<h1>{{ $title }}</h1>

<br>

<form class="bx" method="POST" action="{{ url('/update-post', $post->id) }}">

  @csrf

  @component('components.input', [ 'field_for' => 'username', 'title' => 'Username', 'value' => $post->username])@endcomponent

  @component('components.input', [ 'field_for' => 'title', 'title' => 'Title', 'value' => $post->title])@endcomponent

  @component('components.input', [ 'field_for' => 'avatar', 'placeholder'=>'https://avatar_URL', 'title' => 'avatar URL', 'value' => $post->avatar])@endcomponent

  @component('components.textarea', [ 'field_for' => 'message', 'title' => 'Message', 'value' => $post->message])@endcomponent

  <div class="frm-row">

    <input type="submit" class="btn-primary">

  </div>

</form>

@endcomponent --}}
