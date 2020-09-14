<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;
use App\Category;
use App\Product;
use Session;

class ProductController extends Controller
{
    public function create(){
        return view('insertProduct')->with('categories',Category::all());;
    }
    //Category::all() means "select * from category"

    public function store(){ 
        $r=request();
        $image=$r->file('product-image');
        $image->move('images',$image->getClientOriginalName());
        //image is the location
        $imageName=$image->getClientOriginalName();
        $addCategory=Product::create([
            'id'=>$r->id,
            'name'=>$r->name,
            'description'=>$r->description,
            'price'=>$r->price,
            'image'=>$imageName,
            'quantity'=>$r->quantity,
            'categoryID'=>$r->categoryID,
        ]);
            Session::flash('success',"Product create succesful!");
        Return redirect()->route('product');
    }

    public function show(){
        //$products=Product::all();
        $products=DB::table('products')
        ->leftjoin('categories', 'categories.id', '=', 'products.categoryID')
        ->select('categories.name as catname', 'categories.id as catid', 'products.*')
        ->get();
        // ->paginate(3);
        return view('showproduct')->with('products',$products);
        //products = foreach里面的$products
        //$products = $products=DB::table('products')
        //这边两个要一样的(上面的)
    }

    public function delete($id){
        $products = Product::find($id);
        $products->delete();
        return redirect()->route('all.product');
    }

    public function edit($id)
    {
        //select * form product where id = $id
        $products =Product::all()->where('id',$id);
        return view('editProduct')->with('products',$products)
                                ->with('categories',Category::all());
    }

    public function update(){
        $r=request();
        $products =Product::find($r->ID);
        
        if($r->file('product-image')!=''){
            $image=$r->file('product-image');        
            $image->move('images',$image->getClientOriginalName());                   
            $imageName=$image->getClientOriginalName(); 
            $products->image=$imageName;
            }    
        
        $products->name=$r->title;
        $products->description=$r->Description;
        $products->price=$r->price;
        $products->quantity=$r->Quantity;
        $products->categoryID=$r->category_id;
        $products->save();

        return redirect()->route('all.product');
    }

    public function search(){
        $r=request();
        $keyword=$r->searchProduct;
        $products=DB::table('products')
        ->leftjoin('categories', 'categories.id', '=', 'products.categoryID')
        ->select('categories.name as catname', 'categories.id as catid', 'products.*')
        ->where('products.name', 'like', '%' . $keyword . '%')
        ->orWhere('products.description', 'like', '%' . $keyword . '%')
        ->get();
        return view('showproduct')->with('products',$products);
    }

    public function showCartProduct(){
        //$products=Product::all();
        $products=DB::table('products')
        ->leftjoin('categories', 'categories.id', '=', 'products.categoryID')
        ->select('categories.name as catname', 'categories.id as catid', 'products.*')
        ->get();
        // ->paginate(3);
        return view('product')->with('products',$products);
        //products = foreach里面的$products
        //$products = $products=DB::table('products')
        //这边两个要一样的(上面的)
    }

    public function showProduct($id)
    {
        //select * form product where id = $id
        $products =Product::all()->where('id',$id);
        return view('productDetail')->with('products',$products);
    } 
}
