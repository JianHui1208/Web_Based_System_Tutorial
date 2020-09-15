<?php

namespace App\Http\Controllers;
use DB;
use Auth;
Use Session;
use App\Product;
use App\User;
use App\myCart;
use Illuminate\Http\Request;

class CartController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

    public function add(){ 
        $r=request(); 
        $addCategory=myCart::create([
            'quantity'=>$r->quantity,             
            'orderID'=>'',
            'productID'=>$r->id,                 
            'userID'=>Auth::id(), 
        ]);
        Session::flash('success',"Product add succesful!");        
        Return redirect()->route('my.cart');
    }

    public function show(){
        $carts=DB::table('my_carts')
        ->leftjoin('products', 'products.id', '=', 'my_carts.productID')
        ->select('my_carts.quantity as qty', 'my_carts.id as cid', 'products.*')
        ->where('my_carts.orderID','=','') //'' haven't make payment
        ->get();
        //->paginate(3);       
        return view('showcart')->with('carts',$carts);
    }

    // public function delete($id){
    //     $list=DB::table('drivers')
    //     ->select('drivers.ID', '=' . $id)
    //     ->delete();
    //     return redirect()->route('all.Driver');
    // }
}
