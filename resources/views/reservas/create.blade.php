@extends ('layouts.admin')
@section ('contenido')
<div class="container">

    <div class="row">
    
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <h3>Agendar Hora</h3>
            @if (count($errors)>0)
            <div class="alert alert-danger">
                <ul>
                @foreach ($errors->all() as $error)
                    <li>{{$error}}</li>
                @endforeach
                </ul>
            </div>
            @endif

            {!!Form::open(array('url'=>'reserva','method'=>'POST','autocomplete'=>'off'))!!}
            {{Form::token()}}
            

            <!--<div class="form-group"> 
                <label for="realto">Relato</label>
                <input id="realto" type="text" name="realto"  class="form-control" placeholder="Max. 500 caracteres">
            </div>-->       
      
            <div class="form-group">
                <label> Horarios disponibles</label>
                <select name="horario_id" class="form-control" >
                    @foreach ($horarios as $horario)
                    <option value="{{$horario->id}}">{{$horario->fecha}}</option>
                    @endforeach
                    </select>
            </div>

                "Declaro hacerme responsable de todo lo descrito en la presente denuncia, confirmando que todos los hechos
                son reales y legitimos, de tal manera estar al tanto de la Ley N° 19.733 en la persecución de delitos de injuria y calumnia cometidos por medios de 
                comunicación social"<br>
                
            <div class="form-group">
                <button class="btn btn-primary" type="submit">Guardar</button>
                <button class="btn btn-danger" type="reset">Cancelar</button>
            </div>

            {!!Form::close()!!}     
            
        </div>
    </div>
</div>
@endsection