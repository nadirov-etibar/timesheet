@extends('layouts.app')

@section('content')

    <div class="container-fluid">

    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
        @foreach($users as $user)
            @if(Auth::user()->team_id == $user->team_id && Auth::user()->role_id == 1 )
            <tr>
               <td>{{ $user -> id}}</td>

                <td>{{$user->name}}</td>

                <td>{{$user->email}}</td>
            </tr>
                @elseif(Auth::user()->name == $user->name)
                <tr>
                <td>{{Auth::user()-> id}}</td>

                <td>{{Auth::user()->name}}</td>

                <td>{{Auth::user()->email}}</td>
                </tr>
            @endif
            @endforeach

        </tbody>
    </table>

    </div>
@endsection