<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class feedback extends Model
{   
    protected $fillable=['name','feedback'];
    public function feedback(){
        return $this->belongsTo('App\feedback');
    }
}
