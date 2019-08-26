<?php

namespace App\Http\Controllers;

use App\Send;
use Illuminate\Http\Request;

use DB;

class TableController extends Controller
{
    public function index(Request $request){
        $month_id = $request["months"];
        $user_id = $request["users"];
        $part_id = $request["participation"];
//        return $id;
        $users = DB::table('users')->get()->where('id', $user_id);
        $months = DB::table('months')->get()->where('id', $month_id);
        $days = DB::table('days')->get()->where('user_id', $user_id);
        $sum = DB::table('days')->sum('hours');
        $parts = DB::table('participation')->get();
        return view('layouts.table', compact('users', 'months', 'sum', 'days', 'parts'));
    }

//    public function store(){
//        $input = Request::all();
//
//        Send::create($input);
//    }
//
//    public function returnDay(Request $request){
//        $user_id = $request["users"];
//        $days = DB::table('days')->get()->where('id', $user_id);
//        return $days;
//    }

    public function update(Request $request){


        $inputData = $request->input();
        $month_id = $request["months"];
        $user_id = $request["users"];
        $id = $request["user_id"];
        $id_month = $request["month_id"];
        $part_id = $request["participation"];
//        return $id;
        $users = DB::table('users')->get()->where('id', $user_id);
        $months = DB::table('months')->get()->where('id', $month_id);
        $days = DB::table('days')->get()->where('user_id', $user_id);
        $sum = DB::table('days')->where('user_id', $id)->sum('hours');
        $parts = DB::table('participation')->get();


        for ($i=1; $i<=count($days); $i++){

              DB::table('days')->where([['user_id', '=', $id], ['month_id', '=', $id_month], ['days_dates', '=', $i]])->update(['comment' => ''.$inputData['comment_'.$i.'']]);
              DB::table('days')->where([['user_id', '=', $id], ['month_id', '=', $id_month], ['days_dates', '=', $i]])->update(['part_id' => $inputData['part_'.$i.'']]);
              DB::table('days')->where([['user_id', '=', $id], ['month_id', '=', $id_month], ['days_dates', '=', $i]])->update(['hours' => $inputData['hours_'.$i.'']]);

        }

return redirect()->back();
//        return view('layouts.table', compact('users', 'months', 'days', 'sum', 'parts'));
//        DB::table('users')
//            ->where('id', $array['id'])
//            ->update(['name' => $array['name']);

    }
}
