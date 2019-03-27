<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tipodenuncia extends Model
{

	protected $fillable =[

    'name'];


  

    public function denun()
    {
    	return $this->hasMany(Denunciaa::class);
    }
}
