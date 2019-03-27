<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Reserva extends Model
{
	use SoftDeletes;

	 protected $fillable =[

    'user_id',
    'horario_id',
    'estado'];


     protected $dates = ['deleted_at'];


   public function user()
    {
    	return $this->belongsTo(User::class);
    }

    public function horario()
    {
        return $this->belongsTo(Horario::class);
    }
}