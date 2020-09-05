<?php

namespace App\Http\Controllers;
use db;
use Illuminate\Http\Request;
use App\Employee;

class EmployeeController extends Controller
{
    public function create(){
        return view('employee');
    }

    public function store()
    {
        $r=request();
        $addEmployee=Employee::create([
            'empNo'=>$r->empNo,
            'empName'=>$r->empName,
            'empEmail'=>$r->empEmail,
            'empPhone'=>$r->empPhone,
        ]);
        Return redirect()->route('employee');
    }
}
