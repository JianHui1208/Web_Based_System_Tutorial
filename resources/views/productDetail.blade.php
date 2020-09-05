@extends('layouts.app') 
@section('content')
<div class="row">
    @foreach($products as $product)
    <div class="col-md-6" style="margin: 50px;">
        <img
            src="{{ asset('images/') }}/{{$product->image}}"
            alt=""
            width="50%"
            class="img-fluid"
        />
    </div>
    <div class="col-md-6" style="margin: 50px;">
        <form action="{{ route('add.to.cart') }}" method="post">
            {{ csrf_field() }}
            <h2 class="card-title">{{$product->name}}</h2>
            <h5>{{$product->description}}</h5>
            <br>
            <div style="height: 100px">
                <p>Quantity: <input type="number" name="quantity" id="qty" value="1" min="1" max="10"/></p> 
                <p>Available stock: {{$product->quantity}}</p>
                <p>RM {{$product->price}}</p>
            </div>
            <input type="hidden" name="id" id="id" value="{{$product->id}}" />
            <input type="hidden" id="name" name="name" value="{{$product->name}}"/>
            
            <input type="hidden" id="amount" name="amount" value="" />
            <div style="height: 100px; padding-left: 300px;">
                <button type="submit" class="btn btn-danger btn-xs">
                    Add To Cart
                </button>
            </div>
        </form>
        @endforeach
    </div>
</div>
@endsection
