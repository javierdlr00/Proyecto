<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Denunciaa extends Model
{
  use SoftDeletes;

    protected $fillable =[

    'name',
   	'genero',
   	'namedenunciado',
   	'relato',
   	'tipodenuncia_id'];

    protected $dates = ['deleted_at'];

   	public function user()
    {
    	return $this->belongsTo(User::class);
    }

    public function tipodenuncias()
    {
        return $this->belongsTo(Tipodenuncia::class);
    }
}

