<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
use App\Http\Requests\DenunciaFormRequest;
use App\Denunciaa;
use App\Tipodenuncia;
use DB;

class DenunciaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(Request $request)
    {
        $query=trim($request->get('searchText'));
        
        $denuncias = Denunciaa::where('user_id', $request->user()->id)->get();
        return view('denuncias.index',['denuncias' => $denuncias]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $tipodenuncias = Tipodenuncia::all();
         return view('denuncias.create', compact('tipodenuncias'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(DenunciaFormRequest $request)
    {
        $request->user()->denuncias()->create([
            'relato' => $request->relato,
            'name' => $request->name,
            'namedenunciado' => $request->namedenunciado,
            'genero' => $request->genero,
            'tipodenuncia_id' => $request->tipodenuncia_id,
            ]);
    
         return redirect('/denuncia')->with('success','Denuncia creada correctamente :3');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return view("denuncia.show",["denuncia"=>Denuncia::findOrFail($id)]);    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $denuncia=Denunciaa::findOrFail($id);
        $tipodenuncias=DB::table('tipodenuncias')->get();
        $userss=DB::table('users')->get();
        return view("denuncias.edit",["denuncia"=>$denuncia,"tipodenuncias"=>$tipodenuncias,"userss"=>$userss]);    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $denuncia=Denunciaa::findOrFail($id);
        //$denuncia->genero=$request->get('genero');
        $denuncia->relato=$request->get('relato');
        $denuncia->tipodenuncia_id=$request->get('tipodenuncia_id');
        $denuncia->name=$request->get('name');
        $denuncia->namedenunciado=$request->get('namedenunciado');
        $denuncia->update();
        return Redirect::to('denuncia');    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $denunciaa = denunciaa::find($id);
        $denunciaa->delete();
        return redirect('/denuncia')->with('success', 'denuncia eliminada correctamente');
    }
}
