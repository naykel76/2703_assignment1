{{---------------------------------------------------------------------------
  displays list of all unique users
---------------------------------------------------------------------------}}

@extends('layouts.app')

@section('title', $title)

@section('content')

<div class="continer">

  <div class="row">

    <div class="col-md-33">

      @include('layouts.errors')

      <form class="bx light sticky" method="POST" action="{{ url('/create-post') }}">

        @csrf

        @component('components.input', [ 'field_for' => 'username', 'title' => 'Username',])@endcomponent

        @component('components.input', [ 'field_for' => 'title', 'title' => 'Title',])@endcomponent

        @component('components.input', [ 'field_for' => 'avatar', 'placeholder'=>'https://avatar_URL', 'title' => 'avatar',])@endcomponent

        @component('components.textarea', [ 'field_for' => 'message', 'title' => 'Message',])@endcomponent

        <div class="frm-row ">

          <input type="submit" class="btn-primary" value="Add Post">

        </div>

      </form>

    </div>


    <div class="col-md-66">

      @forelse ($posts as $post)

      @include('posts.post')

      @empty

      <h4>There are no posts to display!</h4>

      @endforelse

    </div>

  </div>

</div>

@endsection
