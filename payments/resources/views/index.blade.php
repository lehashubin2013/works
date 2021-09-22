@extends('layouts.app')

@section('content')

    @auth
        <div class="section">
            <div class="container p-3 d-flex justify-content-center">
                <h1 class="font-color_user_dark">Здравствуйте, {{auth()->user()->name}}</h1>
            </div>
        </div>
        <div class="section">
            <div class="container p-3 d-flex justify-content-center">
                <canvas id="main-canvas" class="main-canvas" width="900" height="400">

                </canvas>
            </div>
        </div>
    @include('includes.blocks.categories')
    @include('includes.blocks.sub-categories')
    @include('includes.blocks.payments')

    @else
        @include('includes.blocks.guest')
    @endauth
@endsection
