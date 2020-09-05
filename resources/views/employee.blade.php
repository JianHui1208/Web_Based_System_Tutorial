@extends('layouts.app')
@section('content')
<div style="text-align:center">
<form class="subform"  method="post" action="{{ route('addEmployee.store') }}" enctype="multipart/form-data">
	{{ csrf_field() }}
	<p>
		<label for="ID" class="label">Name</label>
		 <input type="text" name="empName"> 
	</p>
	<p>
		<label for="name" class="label">Email</label>
		<input type="text" name="empEmail">
	</p>
    <p>
		<label for="name" class="label">Phone</label>
		<input type="text" name="empPhone">
	</p>
	<p>
		<input type="submit" name="insert" value="Insert">
	</p>
</form>
</div>
@endsection