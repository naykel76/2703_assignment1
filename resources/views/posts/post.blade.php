{{---------------------------------------------------------------------------
  post component to handle post mark-up
---------------------------------------------------------------------------}}


@include('posts.edit-modal')

<div class="bx nmt mb">

  <div class="row row-nma">

    <div class="col">

      <img src="{{ $post->avatar }}" class="avatar">

      <a href="{{ url('/post/users', $post->username) }}">{{ $post->username }}</a>

    </div>

    <div class="col txt-r">

      {{ $post->date_created }}

    </div>

  </div>

  <div class="bx-title"><a href="/post/{{$post->id}}">{{ $post->title }}</a></div>

  <p>{{ $post->message }}</p>

  <style>

  </style>
  <div class="row row-nma mt">

    <div class="col">

      <a class="btn-success sm edit" href="{{ url('/post/edit', $post->id) }}">Edit Post</a>

      <a class="btn-danger sm" onclick="return confirm('Delete the post and related comments, Are you sure?')" href="{{ url('/delete-post', $post->id) }}">
        <svg class="icon-trash">
          <use xlink:href="/svg/icons.svg#icon-trash"></use>
        </svg>
      </a>

    </div>

    <div class="col-33 txt-r">
      {{-- comment count and display post with comments --}}
      <a href="/post/{{$post->id}}"><svg class=" icon-comment">
          <use xlink:href="/svg/icons.svg#icon-comment"></use>
        </svg>
        Comments: {{ $post->numComments }}
      </a>

    </div>

  </div>

</div>
