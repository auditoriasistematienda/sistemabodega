<?php

namespace SistemaGlobal;

use Illuminate\Database\Eloquent\Model;

class Productos extends Model
{
    protected $table = 'productos';
    protected $primarykey = 'pro_id';
    public $timestamps = false;
    protected $fillable = [
        'prod_codigo',
        'prod_nombre',
        'prov_id',
        'cat_id',
        'prod_precioCompra',
        'prod_precioVenta',
        'prod_descripcion'
    ];

    protected $guarded = [];
}
