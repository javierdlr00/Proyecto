<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
use App\Http\Requests\ReservaFormRequest;
use App\Horario;
use App\User;
use App\Denunciaa;
use App\Reserva;
use DB;

class ReservaController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }
    
    public function index(Request $request){
        $query=trim($request->get('searchText'));
        $reservas = Reserva::where('user_id', $request->user()->id)->get();
        return view('reservas.index',['reservas' => $reservas]);
    }

    public function create()
        {
        $horarios = Horario::all();
         return view('reservas.create',compact('horarios'));
        }


        public function store(ReservaFormRequest $request)
    {   
        
        $request->user()->reservas()->create([
            'horario_id' => $request->horario_id,
           

            ]);
    
         return redirect('/reserva')->with('success','Hora agendada correctamente :3');
    }

        public function destroy ($id){

            $reserva = Reserva::find($id);
            $reserva-> delete();


         return redirect('/reserva')->with('success','Hora anulada correctamente xD');
        }
}