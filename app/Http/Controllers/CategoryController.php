<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use App\Category; //step 1

// use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function create(){
        return view('insertCategory');
    }
    // if(isset($_POST['ID'])){}
    //$sql = 'insert into categories values()';
    //$query=mysqli_query($sql);

    public function store(){ //step 2 
        $r=request(); //step 3 get data from HTML
        $addCategory=Category::create([ //step 3 bind data, check the spelling insert into
            'id'=>$r->id, //bind the variable with field name $_POST['ID']
            'name'=>$r->name, //fullname from HTML
        ]);

        Return redirect()->route('product'); //step 5 back to last page
    }
}
