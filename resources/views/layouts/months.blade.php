@extends('layouts.app')

@section('content')

    <div class="container-fluid">

        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Day counts</th>
            </tr>
            </thead>
            <tbody>
            @foreach($months as $month)
                <tr>
                    <td>{{ $month -> id}}</td>
                    <td>{{$month->name}}</td>
                    <td>{{$month->days_count}}</td>
                </tr>
            @endforeach
            </tbody>
        </table>

    </div>
@endsection