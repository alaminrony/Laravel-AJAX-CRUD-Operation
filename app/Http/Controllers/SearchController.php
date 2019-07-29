<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class SearchController extends Controller
{
     public function search(Request $request){
        if($request->search){
            $searchs = DB::table('customers')
                        ->whare('name','like','%'.$request->search.'%')
                        ->orWhare('email','like','%'.$request->search.'%')
                        ->get();

                 if($searchs){
                    foreach($searchs as $key=>$search){
                        echo '<tr><td>'.$search->name.'</td><td>'.$search->phone.'</td><td>'.$search->email.'</td><td>'.$search->district.'</td></tr>';
                                  
                                  
                                
                    }

                 }       

        }
    }
}
