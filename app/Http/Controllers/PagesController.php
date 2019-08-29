<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\MyModels;


class PagesController extends Controller
{

    /**
     * Display home page view passing posts data and title.
     */
    public function index()
    {
        $data = [
            'title' => 'Why Me!',
            'posts' => MyModels::getAllPosts(),
        ];

        return view('index')->with($data);
    }

    public function er()
    {
        $data = [
            'title' => 'ER - Diagram'
        ];

        return view('er-diagram')->with($data);
    }
}