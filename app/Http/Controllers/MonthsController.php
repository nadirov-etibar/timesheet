<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;

class MonthsController extends Controller
{
    public function index(){
        $months = DB::table('months')->get();
        return view('layouts.months', compact('months'));
    }
}
