@extends('layouts.app')
@section('content')
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>	
<div class="container">
	    <div class="row">
		    <table class="table table-hover table-striped">
		        <thead>
		        <tr class="thead-dark">
		            <th>ID</th>
		            <th>Image</th>
		            <th>Name</th>
		            <th>Category</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Action</th>
		        </tr>
		        </thead>
		        <tbody>
		        @foreach($products as $product)
		            <tr>
                    <!-- foreach的$products和ProductController的$products是一样的 -->
                    <!-- foreach的$product和这个里面的$product是一样的 -->
		                <td>{{$product->id}}</td>
                        <td><img src="{{ asset('images/')}}/{{$product->image}}" alt="" height="30%"></td>
		                <td style="max-width:300px">
		                    <h6>{{$product->name}}</h6>
		                    <em class="text-muted">{{$product->description}}</em>
		                </td>
		                <td>{{$product->catname}}</td>
                        <td>{{$product->quantity}}</td>
                        <td>RM {{$product->price}}</td>
		                <td>
		                    <a href="{{ route('edit.product', ['id' => $product->id]) }}" class="btn btn-warning"><i class="fas fa-edit"></i>Edit</a>
		                    <a href="{{ route('delete.product', ['id' => $product->id]) }}" class="btn btn-danger" onclick="return confirm('Sure Want Delete?')"><i class="fas fa-trash"></i>Delete</a>
		                </td>
		            </tr>
                @endforeach
		        </tbody>
		    </table>
	</div>
</div>
@endsection