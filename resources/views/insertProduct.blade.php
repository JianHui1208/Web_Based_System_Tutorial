@extends('layouts.app')
@section('content')
<script>
@if(Session::has('success'))
	toastr.success('{{ Session::get('success')}}')
@endif
</script>
<div style="text-align:center">
<form class="subform"  method="post" action="{{ route('addProduct.store') }}" enctype="multipart/form-data">
	{{ csrf_field() }}
	<p>
		<label for="ID" class="label">Product ID</label>
		<input type="text" name="id" id="id">
	</p>

	<p>
		<label for="name" class="label">Title</label>
		<input type="text" name="name" id="name">
	</p>
	
	<p align="center">
			<select style="width:150px;text-align:center" name="categoryID" id="categoryID" class="form-control">
					<option  value="">Select Category</option>
				@foreach($categories as $category)
					<option  value="{{ $category->id }}">{{ $category->name }}</option>
				@endforeach
			</select> 
	</p>

	<p>
		<label for="Quantity" class="label">Quantity</label>
		<input name="quantity" id="quantity" type="text" />
	</p>
	<p>
		<label for="price" class="label">Price</label>
		<input name="price" id="price" type="text" />
	</p>
	<p>
		<label for="Description" class="label">Description</label>
		<textarea name="description" id="description"></textarea>
	</p>
	<p>
		Select image to upload:
		<input type="file" name="product-image" id="product-image">
	</p>
	<p>
		<input type="submit" name="insert" value="Insert">
	</p>
</form>
</div>
@endsection