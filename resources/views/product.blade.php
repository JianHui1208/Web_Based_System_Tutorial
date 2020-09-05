@extends('layouts.app') 
@section('content')
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<section class="our-webcoderskull padding-lg" style="text-align:center;"> 
<div class="container">
    <ul class="row" style="list-style:none;">
    @foreach($products as $product)
        <li class="col-12 col-md-6 col-lg-3" style="text-align:center; background-color: #00ffff; height: 500px; width: 900px;">
            <div class="cnt-block equal-hight" style="height: 349px;">
                <figure><a href="{{ route('product.detail', ['id' => $product->id]) }}"><img src="{{ asset('images/')}}/{{$product->image}}" alt="" class="img-fluid"/></a></figure>
                <h2>{{$product->name}}</h2>
                <p>RM {{$product->price}}</p>
                <button style="float: botton; height: 40px;" class="btn btn-danger btn-xs">
                    <p><a href="{{ route('product.detail', ['id' => $product->id]) }}" style="color:white;">Add to Cart</a></p>
                </button>
            </div>
        </li>
        <br><br><br>
    @endforeach
    </ul>
    </div>
</section>
@endsection
