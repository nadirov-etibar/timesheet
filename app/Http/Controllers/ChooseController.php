<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;

class ChooseController extends Controller
{
    public function index(){
        $users = DB::table('users')->get();
        $months = DB::table('months')->get();
        return view('layouts.choose', compact('users', 'months'));
    }


}
