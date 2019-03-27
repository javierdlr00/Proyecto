@extends('layouts.admin')
@section('contenido')
	<div class="container">
		@include('alerts.success')
		
<div class="row">
	<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
		<h3>Listado denuncias <a href="denuncia/create"><button class="btn btn-succes">Nuevo</button></a></h3>
		
			</div>
</div>

<div class="container">
<div class="row">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<div class="table-responsive">
			<table class="table table-stripped table-bordered table-condensed table-hover">
				
				<thead>
					<th>ID</th>
					<th>Tipo denuncia</th>
					<th>Nombre</th>
					<th>Genero</th>
					<th>Weon</th>
					<th>Fecha</th>
					<th>Relato</th>
					<th>Opciones</th>
				</thead>
				@foreach($denuncias as $denuncia)
				
				<tr>
					<td>{{ $denuncia->id }}</td>
					<td>{{ $denuncia->tipodenuncia_id }}</td>
					<td>{{ $denuncia->name }}</td>
					<td>{{ $denuncia->genero }}</td>
					<td>{{ $denuncia->namedenunciado }}</td>
					<td>{{ $denuncia->created_at }}</td>
					<td>{{ $denuncia->relato }}</td>
					<td>
					
			
						<a href="{{URL::action('AdminController@edit',$denuncia->id)}}"><button class="btn btn-info">Editar</button></a>
						<a href="" data-target="#modal-delete-{{$denuncia->id}}" data-toggle="modal"><button class="btn btn-danger">Eliminar</button></a>
						
					</td>
				</tr>
				@endforeach
			</table>
		</div>
		
	</div>
</div>
</div>
@endsection