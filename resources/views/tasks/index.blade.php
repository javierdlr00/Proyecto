@extends('layouts.admin')
@section('contenido')
	<div class="container">
		@include('alerts.success')

<div class="row">
	<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
		<h3>Listado de Tareas <a href="task/create"><button class="btn btn-succes">Nuevo</button></a></h3>
		
			</div>
</div>


<div class="row">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<div class="table-responsive">
			<table class="table table-stripped table-bordered table-condensed table-hover">
				
				<thead>
					<th>ID</th>
					<th>Tarea</th>
					<th>Fecha</th>
					<th>sds</th>
					<th>Opciones</th>
				</thead>
				@foreach($tasks as $task)
				@can('read-task',$task)
				<tr>
					<td>{{ $task->id }}</td>
					<td>{{ $task->name }}</td>
					<td>{{ $task->created_at }}</td>
					<td>{{ $task->user-> name }}</td>
					<td>
					
				@endcan
						<a href="{{URL::action('TaskController@edit',$task->id)}}"><button class="btn btn-info">Editar</button></a>
						<a href="" data-target="#modal-delete-{{$task->id}}" data-toggle="modal"><button class="btn btn-danger">Eliminar</button></a>
					</td>
				</tr>
				@endforeach
			</table>
		</div>
	</div>
</div>
@endsection