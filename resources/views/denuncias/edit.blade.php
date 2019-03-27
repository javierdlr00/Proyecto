@extends ('layouts.admin')
@section ('contenido')
	<div class="row">
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<h3>Editar Denuncia: {{$denuncia->id}}</h3>
			@if (count($errors)>0)
			<div class="alert alert-danger">
				<ul>
				@foreach ($errors->all() as $error)
					<li>{{$error}}</li>
				@endforeach
				</ul>
			</div>
			@endif

			{!!Form::model($denuncia,['method'=>'PATCH', 'route'=>['denuncia.update',$denuncia->id]])!!}
            {{Form::token()}}
            <!--<div class="form-group"> 
            	<label for="name">nombre</label>
            	<input id="name" type="text" name="name"  class="form-control" value="{{$denuncia->name}}" placeholder="Ingrese su nombre">
            </div>     -->

    		<!--<label for="realto">Relato denuncia</label>
    		<textarea input id="realto" class="form-control" name="realto" rows="3" value="{{$denuncia->realto}}" placeholder="Relate lo sucedido (max. 500 caractéres)"></textarea><br>
            -->
              
              <div class="form-group">
                {!! Form::label('relato', 'Relato') !!}
                {!! Form::textarea('relato', $denuncia->relato, ['class' => 'form-control']) !!} 
            </div>


            <div class="form-group"> 
                <label for="namedenunciado">Nommbre del denunciado</label>
                <input id="namedenunciado" type="text" name="namedenunciado"  class="form-control" value="{{$denuncia->namedenunciado}}" placeholder="Ingrese nombre denunciado">
            </div>

  			

             <div class="form-group">
            	<label> Tipo denuncia</label>
            	<select name="tipodenuncia_id" class="form-control" >
            		@foreach ($tipodenuncias as $tipodenuncia)
            		<option value="{{$tipodenuncia->id}}"->{{$tipodenuncia->name}}</option>
            		@endforeach
            		</select>
      		</div>




            
				

                "Declaro hacerme responsable de todo lo descrito en la presente denuncia, confirmando que todos los hechos
                son reales y legitimos, de tal manera estar al tanto de la Ley N° 19.733 en la persecución de delitos de injuria y calumnia cometidos por medios de 
                comunicación social"<br>

                <br>
            <div class="form-group">
            	<button class="btn btn-primary" type="submit">Guardar</button>
            	<button class="btn btn-danger" type="reset">Cancelar</button>
            </div>

			{!!Form::close()!!}		
            
		</div>
	</div>

@endsection