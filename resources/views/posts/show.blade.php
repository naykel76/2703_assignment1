{{---------------------------------------------------------------------------
  displays single post and related comments
---------------------------------------------------------------------------}}

@extends('layouts.app')

@section('title', $title)


@section('content')

<div class="continer">

  <div class="row">

    <div class="col-md-33">
      @include('layouts.errors')
      {{-- Add comment to post form --}}
      <form class="bx" method="POST" action="/post/{{ $post->id }}/add-comment">

        @csrf

        @component('components.input', [ 'field_for' => 'username', 'title' => 'Username',])@endcomponent

        @component('components.textarea', [ 'field_for' => 'message', 'title' => 'Message',])@endcomponent

        <div class="frm-row ">

          <input type="submit" class="btn-primary" value="Add Comment">

        </div>

      </form>


    </div>

    <div class="col-md-66">

      @include('posts.post')


      <div class="bx">

        @forelse ($comments as $comment)
        <h5>{{ $comment->username }}</h5>
        <p>{{ $comment->message }}</p>
        <div class="txt-r"><a class="btn-danger sm" href="/delete-comment/{{ $comment->id }}">Delete Comment</a></div>
        <hr>

        @empty

        <h5>There are no comments to display!</h5>

        @endforelse

      </div>

    </div>

  </div>

</div>

@endsection
