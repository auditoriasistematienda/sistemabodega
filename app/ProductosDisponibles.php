<?php

namespace SistemaGlobal;

use Illuminate\Database\Eloquent\Model;

class ProductosDisponibles extends Model
{
    protected $table = 'productos_disponibles';
    protected $primarykey = 'prodDisp_id';
    public $timestamps = false;
    protected $fillable = [
        'prod_id',
        'prodDisp_cantidad'
    ];
    protected $guarded = [];
}
