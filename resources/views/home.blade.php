@extends('layouts.app')
@section('top')
    @include('partials.top')
@endsection
@section('nav')
    @include('partials.nav')
@endsection
@section('cat_nav')
    {{-- @include('partials.cat_nav') --}}
    @include('partials.cat_nav', [
        'categorias' => App\Models\Categorias::with('subcategorias')->get(),
    ])
@endsection
@section('slider')
    @include('partials.slider')
@endsection
@section('portada')
    @include('partials.portada')
@endsection
@section('footer')
    @include('partials.footer')
@endsection
