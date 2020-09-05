<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    protected $fillable=['empNo','empName','empEmail','empPhone'];
    public function employee(){
        return $this->belongsTo('App\employee');
    }
}
