<?php
namespace App\Http\Controllers;
use db;
use Illuminate\Http\Request;
use App\feedback;

class FeedbackController extends Controller
{
    public function create(){
        return view('feedback');
    }

    public function store()
    {
        $r=request();
        $addFeedback=Feedback::create([
            'id'=>$r->id,
            'name'=>$r->name,
            'feedback'=>$r->feedback,
        ]);
        Return redirect()->route('feedback');
    }
}
