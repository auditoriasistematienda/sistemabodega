<?php

namespace SistemaGlobal;

use Illuminate\Database\Eloquent\Model;

class Ventas extends Model
{
    protected $table = 'ventas';
    protected $primerykey = 'venta_id';
    public $timestamps = false;
    protected $filllable = [
        'venta_codigo',
        'venta_tipoVenta',
        'venta_estadoVenta',
        'venta_fecha'
        
    ];
    protected $guarded = [];
}
