<?php

namespace SistemaGlobal;

use Illuminate\Database\Eloquent\Model;

class Proveedor extends Model
{
    protected $table = 'proveedores';
    protected $primaryKey = 'prov_id';
    public $timestamps = false;
    protected $filllable = [
        'prov_razonSocial',
        'prov_ruc',
        'prov_direccion',
        'prov_telefono',
        'prov_email'
    ];
    protected $guarded = [];
}
