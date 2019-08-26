@extends('layouts.app')

@section('content')

    <div class="container-fluid">
    @foreach($users as $user)
            @foreach($days as $day)
            @if($user->id == $day->user_id)
    <div>
       <h1> {{$user->name}} </h1>
    </div>


    @foreach($months as $month)
    <div>
       <h1> {{$month->name}} </h1>
    </div>
    @endforeach
    <form action="" method="post">
        <input type="hidden" value="{{$user->id}}" name="user_id">
        <input type="hidden" value="{{$month->id}}" id="month" name="month_id">
    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
            <tr>
                <th>Days</th>
                <th>Participation</th>
                <th>Hours</th>
                <th>Comment</th>
            </tr>
        </thead>
        <tbody>
        @foreach($months as $month)
            @foreach($days as $day)
                @if($month->id == $day->month_id)
                    <tr>
                        <td>{{$day->days_dates}}</td>
                        <td>
                            <div class="form-group">
                                <select class="custom-select" id="part_{{$day->days_dates}}" name="part_{{$day->days_dates}}">
                                    @foreach($parts as $part)

                                    <option {{$day->part_id == $part->id ? 'selected':''}} value="{{$part->id}}" >{{$part->name}}</option>

                                    @endforeach
                                </select>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <input type="number" {{$day->part_id !== 7 ? 'readonly':''}} id="hours_{{$day->days_dates}}" class="form-control" name="hours_{{$day->days_dates}}"  value="{{$day->hours}}">
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <input type="text" class="form-control" name="comment_{{$day->days_dates}}" value="{{$day->comment}}"/>
                            </div>
                        </td>
                    </tr>
                    @endif
            @endforeach
        @endforeach
        <tr>
            <td colspan="3">Monthly Working Hours</td>
            <td>
                <div class="form-group">
                    <input type="text" class="form-control" readonly id="sum">
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="3">Monthly Working Days</td>
            <td>
                <div class="form-group">
                    <input type="text" class="form-control" readonly id="day">
                </div>
            </td>
        </tr>
        </tr>
        <tr>
            <td colspan="3">Weekends</td>
            <td>
                <div class="form-group">
                    <input type="text" class="form-control" readonly id="wek">
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="3">Holidays</td>
            <td>
                <div class="form-group">
                    <input type="text" class="form-control" readonly id="hol" value="0">
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="3">Sick Leaves</td>
            <td>
                <div class="form-group">
                    <input type="text" class="form-control" readonly id="sl" value="0">
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="3">Vacations</td>
            <td>
                <div class="form-group">
                    <input type="text" class="form-control" readonly id="vac" value="0">
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="3">Short Days</td>
            <td>
                <div class="form-group">
                    <input type="text" class="form-control" readonly id="sd" value="0"  >
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="3">Overtime hours</td>
            <td>
                <div class="form-group">
                    <input type="text" class="form-control" readonly id="ot" value="0">
                </div>
            </td>
        </tr>
        </tbody>
    </table>
        <div  class="form-group">
            <input type="submit" name="update" value="Submit" class="btn btn-primary btn-user btn-block"/>
        </div>
    </form>
                    @break
                @endif
            @endforeach
        @endforeach
    </div>
@endsection