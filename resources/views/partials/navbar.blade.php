<div class="navbar">

  <div class="container">
    <div class="py" style="border:0;">
      <a href="/" class="logo"><img src="{{ url('logo.png') }}" height="100" alt="NAYKEL"></a>
    </div>


    <div class="flexCon align-m d-md-up hide">
      <nav class="nav bdr">
        <a href="/">Home</a>
        <a href="/er">ER Diagram</a>
        <a href="/markdown?filename=docs/project_tasks.md">Docs</a>
        <a href="/users">Users</a>
        <a href="/recent-posts">Recent Posts</a>
      </nav>
    </div>



    <div class="toggle-drawer d-md-down btn" onclick="openDrawer()">
      <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32">
        <path d="M0 23.333h32V27H0zM0 14.166h32v3.667H0zM0 5h32v3.667H0z" />
      </svg>
    </div>
  </div>

</div>

<div id="drawer">
  <div class="bx">
    <div class="btn" onclick="openDrawer()">&times;</div>
  </div>
</div>
