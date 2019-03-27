@extends('layouts.admin')
@section('contenido')
	<div class="container">
		@include('alerts.success')
		
<div class="row">
	<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
		<h3>Listado reservas <a href="reserva/create"><button class="btn btn-succes">Nuevo</button></a></h3>
		
			</div>
</div>
<div class="row">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<div class="table-responsive">
			<table class="table table-stripped table-bordered table-condensed table-hover">
				<thead>
					<th>Id</th>
					<th>Fecha reserva</th>
					<th>Estado</th>

					
				</thead>
				@foreach ($reservas as $reserva)
				@can('read-reserva',$reserva)
				<tr>
					<td>{{ $reserva->id}}</td>
					<td>{{ $reserva->horario->fecha}}</td>
					<td>{{ $reserva->estado}}</td>
				<td>
						
						<a href="" data-target="#modal-delete-{{$reserva->id}}" data-toggle="modal"><button class="btn btn-danger">Anular</button></a>
						@endcan
					</td>
				</tr>
				@include('reservas.modal')
				@endforeach
			</table>
		</div>
		
	</div>
</div>
@endsection