@extends('layouts.app') @section('content')
<script>
function Cal() {
	var prices = document.getElementsByName('price[]');
	var cboxes = document.getElementsByName('item[]');    
	var len = cboxes.length;
    var subtotal = 0;
	for (var i=0; i<len; i++) {        
		if(cboxes[i].checked){	//calculate if checked		
			subtotal+=parseFloat(prices[i].value);	
        }					
	}
	document.getElementById('amount').value=subtotal.toFixed(2);
}
</script>
<div class="container">
    <div class="row">
        <form action="{{ route('create.order' )}}" method="post">
            {{ csrf_field() }}
            <table class="table table-hover table-striped">
                <thead>
                    <tr class="thead-dark">
                        <th>ID</th>
                        <th>Image</th>
                        <th>Name</th>
                        <th>Quantity</th>
                        <th>Total Price</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($carts as $cart)
                    <tr>
                        <td>
                            <input
                                type="checkbox"
                                name="item[]"
                                value="{{$cart->cid}}"
                                onchange="Cal()"
                            />
                        </td>
                        <td>
                            <img
                                src="{{ asset('images/') }}/{{$cart->image}}"
                                alt=""
                                width="50"
                            />
                        </td>
                        <td style="max-width:300px">
                            <h6>{{$cart->name}}</h6>
                        </td>
                        <td>{{$cart->qty}}</td>
                        @php 
                            $subtotal = $cart->qty*$cart->price 
                        @endphp
                        <td>RM {{$subtotal}}</td>
                        <input type="hidden" value="{{$subtotal}}" name="price[]" id="price[]">
                        <td>
                            <a href="" class="btn btn-warning"
                                ><i class="fas fa-edit">Edit</i></a
                            >
                            |
                            <a
                                href="{{ route('delete.cart', ['id' => $cart->cid]) }}"
                                class="btn btn-danger"
                                onclick="return confirm('Sure Want Delete?')"
                                >Delete</a
                            >
                        </td>
                    </tr>
                    @endforeach

                    <tr class="thead-dark">
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>Total</td>
                        <td><input type="text" name="amount" id="amount" value=""></td>
                        <td><input type="submit" name="chechout" value="Checkout"/></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </div>
</div>
@endsection
