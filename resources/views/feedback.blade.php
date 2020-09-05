@extends('layouts.app')
@section('content')
<div style="text-align:center">
<form class="subform"  method="post" action="{{ route('addFeedback.store') }}" enctype="multipart/form-data">
	{{ csrf_field() }}
	<p>
		<label for="ID" class="label">Name</label>
		 <input type="text" name="name"> 
	</p>
	<p>
		<label for="name" class="label">Feedback</label>
		<input type="text" name="feedback">
	</p>
	<p>
		<input type="submit" name="insert" value="Insert">
	</p>
</form>
</div>
@endsection