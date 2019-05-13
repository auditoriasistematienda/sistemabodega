<?php

namespace SistemaGlobal;

use Illuminate\Database\Eloquent\Model;

class Almacen extends Model
{
    protected $table = 'almacenes';
    protected $primerykey = 'alm_id';
    public $timestamps = false;
    protected $filllable = [
        'alm_nombre',
        'alm_descripcion'
        
    ];
    protected $guarded = [];
}
