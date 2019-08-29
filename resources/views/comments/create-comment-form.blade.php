{{-- Add comment to post form --}}
<form class="bx" method="POST" action="/post/{{ $post->id }}/add-comment">

  @csrf

  @component('components.input', [ 'field_for' => 'username', 'title' => 'Username',])@endcomponent

  @component('components.textarea', [ 'field_for' => 'message', 'title' => 'Message',])@endcomponent

  <div class="frm-row ">

    <input type="submit" class="btn-primary" value="Add Comment">

  </div>

</form>
