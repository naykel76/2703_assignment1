<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

use App\MyModels;
use App\PostModels;
use App\CommentModels;

class PostsController extends Controller
{
    /**
     * Display home page view passing posts data and title.
     */
    public function index()
    {
        $data = [
            'title' => 'Why Me!',
            'posts' => PostModels::getAllPosts()
        ];

        return view('index')->with($data);
    }

    /**
     * Display post by ID
     */
    public function show($id)
    {

        $data = [
            'title' => 'Display Post',
            // the [0] index is to return first and only item from the array
            'post' => PostModels::getPostsBy('id', $id)[0],
            'comments' => CommentModels::getComments($id),
        ];

        return view('posts.show')->with($data);
    }

    /**
     * @return array with unique users
     */
    public function getUniqueUsers()
    {
        $data = [
            'title' => 'Unique Users',
            'users' => MyModels::getUniqueRecords('username', 'posts', 'username')
        ];

        return view('posts.unique-users')->with($data);
    }


    /**
     * @return array of user posts
     */
    public function getPostsByUser($username)
    {
        $data = [
            'title' => 'Display User Posts',
            'posts' => PostModels::getPostsBy('username', $username)
        ];

        return view('posts.posts-by-user')->with($data);
    }

    /**
     * retun all past from the last 7 days
     */
    public function getRecentPosts()
    {
        $data = [
            'title' => 'Recent Posts',
            'posts' => PostModels::getRecentPosts()
        ];

        return view('posts.recent-posts')->with($data);
    }

    /**
     * Create new post
     */
    public function create()
    {
        $title = htmlspecialchars(request('title'));
        $message = htmlspecialchars(request('message'));
        $username = htmlspecialchars(request('username'));
        $avatar = htmlspecialchars(request('avatar'));

        $err1 = $this->validatePost($title, $message, $username, $avatar);

        // set default avatar
        if ($avatar === "") {
            $avatar = "/images/profile_001-128.jpg";
        }

        // if there are no errors create the post and redirect to the post page
        if (!empty($err1)) {
            // return errors from $err1 array and keep input values
            return back()->withErrors($err1)->withInput();
        } else {
            PostModels::storePost($title, $message, $username, $avatar);
            $id = DB::getPdo()->lastInsertId();
            return redirect("post/$id");
        }
    }

    /**
     * Return view with form to edit a post
     */
    public function edit($id)
    {
        $data = [
            'title' => 'Edit Post',
            'post' => PostModels::getPostsBy('id', $id)[0]
        ];

        return view('posts.edit')->with($data);
    }

    /**
     * update post, validate data and return to comments page
     */
    public function update($id)
    {
        $title = htmlspecialchars(request('title'));
        $message = htmlspecialchars(request('message'));
        $username = htmlspecialchars(request('username'));
        $avatar = htmlspecialchars(request('avatar'));
        $id = request('id'); //?????

        $err1 = $this->validatePost($title, $message, $username, $avatar);
        // dd($err1);

        // set default avatar
        if ($avatar === "") {
            $avatar = "/images/profile_001-128.jpg";
        }

        // if there are no errors create the post and redirect to the post page
        if (!empty($err1)) {
            // return errors from $err1 array and keep input values
            return back()->withErrors($err1)->withInput();
        } else {
            PostModels::updatePost($title, $message, $username, $avatar, $id);
            return redirect("/post/$id");
        }
    }

    /**
     * Delete post and related comments then redirect home
     * ----------------------------------------------------------------------
     * deleteRecord($table, $attr, $id)
     * @param id post id
     */
    public function destroy($id)
    {
        $id = request('id');

        // delete related comments
        MyModels::deleteRecord('comments', 'fk_post_id', $id);
        // delete posts
        MyModels::deleteRecord('posts', 'id', $id);

        return redirect('/');
    }

    /**
     * Check for empty fields and validate data
     * @return array of errors
     */
    public function validatePost($title, $message, $username)
    {
        $err1 = [];

        if (empty($title)) {
            $err1['title'] = "Title is required.";
        }

        if (strlen($title) < 6 || strlen($title) > 255) {
            $err1['err_title_len'] = 'Title must be between 6 and 255 characters';
        }

        if (empty($message)) {
            $err1['message'] = "Message is required.";
        }

        if (empty($username)) {
            $err1['username'] = "Username is required.";
        }

        if (strlen($username) < 6 || strlen($username) > 45) {
            $err1['err_username_len'] = 'Username must be between 6 and 45 characters';
        }

        return $err1;
    }
}