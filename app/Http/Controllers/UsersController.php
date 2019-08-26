<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;

class UsersController extends Controller
{
    public function index(){
        $users = DB::table('users')->get();
        return view('layouts.users', compact('users'));
    }
}
