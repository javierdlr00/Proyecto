@extends ('layouts.admin')
@section ('contenido')
<div class="container">

	<div class="row">
	
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<h3>Nueva Denuncia</h3>
			@if (count($errors)>0)
			<div class="alert alert-danger">
				<ul>
				@foreach ($errors->all() as $error)
					<li>{{$error}}</li>
				@endforeach
				</ul>
			</div>
			@endif

			{!!Form::open(array('url'=>'denuncia','method'=>'POST','autocomplete'=>'off'))!!}
            {{Form::token()}}
            

            <!--<div class="form-group"> 
            	<label for="realto">Relato</label>
            	<input id="realto" type="text" name="realto"  class="form-control" placeholder="Max. 500 caracteres">
            </div>-->       

    		<!-- <label for="relato">Relato denuncia</label>
    		<textarea class="form-control" name="relato" rows="3" placeholder="Relate lo sucedido (max. 500 caractéres)"></textarea><br>
            -->


            <div class="form-group">
                {!! Form::label('relato', 'Relato') !!}
                {!! Form::textarea('relato', null, ['class' => 'form-control']) !!}
            </div>

            <!--<div class="form-group"> 
                <label for="name">Nombre </label>
                <input id="name" type="text" name="name"  class="form-control" placeholder="Ingrese nombre denunciado">
            </div>-->

  			<div class="form-group"> 
                <label for="namedenunciado">Nombre del denunciado</label>
                <input id="namedenunciado" type="text" name="namedenunciado"  class="form-control" placeholder="Ingrese nombre denunciado">
            </div>


			<div class="form-group"> 
				<label for="genero">Genero</label>
					<br>
					<input type="radio" name="genero" id="genero" value="Masculino">Masculino<br>
					<input type="radio" name="genero" id="genero" value="Femenino">Femenino<br>	 
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
                
            <div class="form-group">
            	<button class="btn btn-primary" type="submit">Guardar</button>
            	<button class="btn btn-danger" type="reset">Cancelar</button>
            </div>

			{!!Form::close()!!}		
            
		</div>
	</div>
</div>
@endsection