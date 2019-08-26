@extends('layouts.app')

@section('content')

    <div class="container-fluid">
        <form action="table" method="get">
            @csrf
            <div class="form-group">
                <label for="users">Choose user:</label>
                <select name="users" id="users" class="custom-select">
                    @foreach($users as $user)
                        @if(Auth::user()->team_id == $user->team_id && Auth::user()->role_id == 1 )
                        <option value="{{$user->id}}">{{$user->name}}</option>
                        @elseif(Auth::user()->name == $user->name)
                            <option value="{{Auth::user()->id}}">{{Auth::user()->name}}</option>
                            @break
                        @endif
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label for="months">Choose month:</label>
                <select name="months" id="months" class="custom-select">
                    @foreach($months as $month)
                        <option value="{{$month->id}}">{{$month->name}}</option>
                    @endforeach
                </select>
            </div>
            <div  class="form-group">
                <input type="submit" name="submit" value="Submit" class="btn btn-primary btn-user btn-block"/>
            </div>
        </form>
    </div>
@endsection