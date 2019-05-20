<?php

namespace SistemaGlobal;

use Illuminate\Database\Eloquent\Model;

class ProductosAlmacen extends Model
{
    protected $table = 'productos_en_almacen';
    protected $primaryKey = 'prodAlm_id';
    public $timestamps = false;
    protected $fillable = [
        'prod_id',
        'prodAlm_stock',
        'alm_id'
    ];
    protected $guarded = [];
}
