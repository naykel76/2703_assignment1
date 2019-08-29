<?php

namespace App;

use Illuminate\Support\Facades\DB;

class PostModels
{

    /**
     * @return array or posts with number of comments
     */
    public static function getAllPosts()
    {
        $sql = "SELECT *,
                (SELECT COUNT(*) FROM comments WHERE fk_post_id = posts.id) as numComments
                FROM posts ORDER BY date_created DESC;";
        return DB::select($sql);
    }

    /**
     * @return array with last 7 days of posts
     * seven days inclusive of the current day.
     * for example Monday - Sunday with Sunday being the 7th day.
     */
    public static function getRecentPosts()
    {

        $sql = "SELECT *,
                (SELECT COUNT(*) FROM comments WHERE fk_post_id = posts.id) as numComments
                FROM posts WHERE date_created BETWEEN date('now', 'localtime', '-6 day') AND date('now', 'localtime', '+1 day') ORDER BY date_created DESC";

        return DB::select($sql);
    }

    /**
     * @return array single post with comment count
     * @param $where clause. WHERE id = ?, WHERE username = ?
     * @param $criteria for where condition = ''
     */
    public static function getPostsBy($where, $criteria)
    {
        $sql = "SELECT *,
        (SELECT COUNT(*) FROM comments WHERE fk_post_id = posts.id) as numComments
        FROM posts
        WHERE $where = ?;";

        $results = DB::select($sql, [$criteria]);

        if (!empty($results)) {
            return $results;
        } else {
            die("Something has gone wrong, invalid query or result: $sql");
        }
    }

    /**
     * Add new post to the database
     */
    public static function storePost($title, $message, $username, $avatar)
    {
        $sql = "INSERT INTO posts ('title', 'message', 'username', 'avatar') VALUES (?, ?, ?, ?)";
        return DB::insert($sql, [$title, $message, $username, $avatar]);
    }

    /**
     * Update existing post
     */
    public static function updatePost($title, $message, $username, $avatar, $post_id)
    {
        $sql = "UPDATE posts SET title = ?, message = ?, username = ?, avatar = ? WHERE id = ?";
        return DB::update($sql, [$title, $message, $username, $avatar, $post_id]);
    }
}