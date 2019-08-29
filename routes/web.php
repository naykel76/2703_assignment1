<?php

Route::get('/', 'PostsController@index');

Route::get('/post/{id}', 'PostsController@show');

Route::get('/users', 'PostsController@getUniqueUsers');
Route::get('/recent-posts', 'PostsController@getRecentPosts');


Route::get('/post/users/{username}', 'PostsController@getPostsByUser');
Route::get('/post/edit/{id}', 'PostsController@edit');
Route::post('/update-post/{id}', 'PostsController@update');
Route::post('/create-post', 'PostsController@create');
Route::get('/delete-post/{id}', 'PostsController@destroy');


Route::post('/post/{id}/add-comment', 'CommentsController@create');
Route::get('/comment/edit/{id}', 'CommentsController@edit');
Route::get('/delete-comment/{id}', 'CommentsController@destroy');

Route::get('/er', 'PagesController@er');



/** -------------------------------------------------------------------------
 * Render Markdown with parsedown
 * --------------------------------------------------------------------------
 * Save file in the public directory and pass filename to view
 * <a href="/markdown/?filename=example.md">Example Markdown</a>
 */

Route::get('/markdown/{filename?}', function () {
    $filename = request('filename');
    return view('layouts.markdown')->with('filename', $filename);
});