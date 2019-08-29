<?php

namespace App\Http\Controllers;

use App\MyModels;
use App\CommentModels;

class CommentsController extends Controller
{

    /**
     * Create new post
     */
    public function create()
    {

        $username = htmlspecialchars(request('username'));
        $message = htmlspecialchars(request('message'));
        $fk_post_id = htmlspecialchars(request('id'));

        $err1 = $this->validateData($message, $username);

        // if there are no errors create the post and redirect to the post page
        if (!empty($err1)) {
            // return errors from $err1 array and keep input values
            return back()->withErrors($err1)->withInput();
        } else {
            CommentModels::storeComment($message, $username, $fk_post_id);
            // $id = DB::getPdo()->lastInsertId();
            return back();
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
     * update post and return to comments page
     */
    public function update($id)
    {
        $title = request('title');
        $message = request('message');
        $username = request('username');
        $avatar = request('avatar');
        $id = request('id');

        PostModels::updatePost($title, $message, $username, $avatar, $id);

        return redirect("/post/$id");
    }

    /**
     * Delete comment then redirect home
     * ----------------------------------------------------------------------
     * deleteRecord($table, $attr, $id)
     * @param id comment id
     */
    public function destroy($id)
    {

        $id = request('id');
        MyModels::deleteRecord('comments', 'id', $id);

        return back();
    }

    /**
     * Check for empty fields and validate data
     * @return array of errors
     */
    public function validateData($message, $username)
    {
        $err1 = [];

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