<?php

namespace App;

use Illuminate\Support\Facades\DB;

class CommentModels
{

    /**
     * @return array comments
     */
    public static function getComments($post_id)
    {
        $sql = "SELECT * FROM comments WHERE fk_post_id = ?";
        $results = DB::select($sql, [$post_id]);
        return $results;
    }


    /**
     * Add comment to database
     */
    public static function storeComment($username, $message, $post_id)
    {
        $sql = "INSERT INTO comments ('username', 'message', 'fk_post_id') VALUES (?, ?, ?)";
        return DB::insert($sql, [$username, $message, $post_id]);
    }

    // /**
    //  * @return array or posts with number of comments
    //  */
    // public static function getAllPosts()
    // {
    //     $sql = "SELECT *,
    //             (SELECT COUNT(*) FROM comments WHERE fk_post_id = posts.id) as numComments
    //             FROM posts;";
    //     return DB::select($sql);
    // }

    // /**
    //  * @return array single post with number of comments
    //  */
    // public static function getPostById($post_id)
    // {
    //     // $sql = "SELECT * FROM posts WHERE id = ?";

    //     $sql = "SELECT *,
    //             (SELECT COUNT(*) FROM comments WHERE fk_post_id = posts.id) as numComments
    //             FROM posts
    //             WHERE id = ?;";

    //     $results = DB::select($sql, [$post_id]);

    //     // if record found then all is well, else there is a problem
    //     if (!empty($results)) {
    //         return $results;
    //     } else {
    //         die("Something has gone wrong, invalid query or result: $sql");
    //     }
    // }

    // /**
    //  * Add new post to the database
    //  */
    // public static function storePost($title, $message, $username, $avatar)
    // {
    //     $sql = "INSERT INTO posts ('title', 'message', 'username', 'avatar') VALUES (?, ?, ?, ?)";
    //     return DB::insert($sql, [$title, $message, $username, $avatar]);
    // }

    // /**
    //  * Update existing post
    //  */
    // public static function updatePost($title, $message, $username, $avatar, $post_id)
    // {
    //     $sql = "UPDATE posts SET title = ?, message = ?, username = ?, avatar = ? WHERE id = ?";
    //     return DB::update($sql, [$title, $message, $username, $avatar, $post_id]);
    // }


    // /**
    //  * Delete comments by FK
    //  */
    // public static function deleteComments($fk_post_id)
    // {
    //     $sql = "DELETE from comments WHERE fk_post_id = ?";
    //     return DB::delete($sql, [$fk_post_id]);
    // }
}