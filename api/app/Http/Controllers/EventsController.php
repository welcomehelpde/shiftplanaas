<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;

class EventsController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
      
    }

    public function getEvent($id)
    { 
      // return response()->json(json_decode(file_get_contents(__DIR__.'/../../../event_1.json')));
        $event = DB::select('select * from event where url = \'testurl\'');

        return response()->json($event);
    }
    public function getEvent_json($id)
    { 
      return response()->json(json_decode(file_get_contents(__DIR__.'/../../../event_1.json')));
    }

}
