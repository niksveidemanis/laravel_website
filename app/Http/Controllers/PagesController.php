<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function index(){
        $title = 'Welcome to my Laravel project!';
        return view('pages.index')->with('title', $title);
    }

    public function about(){
        $title = 'About me!';
        return view('pages.about')->with('title', $title);
    }

    public function services(){
        $data = array(
            'title' => 'Services,(Array list test)',
            'services' => ['test1','test2','test3']
        );
        return view('pages.services')->with($data);
    }
}
