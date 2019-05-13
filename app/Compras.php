<?php

namespace SistemaGlobal;

use Illuminate\Database\Eloquent\Model;

class Compras extends Model
{
    protected $table = 'compras';
    protected $primerykey = 'com_id';
    public $timestamps = false;
    protected $filllable = [
        'com_codigo',
        'prov_id',
        'com_almacenado'
        
    ];
    protected $guarded = [];
}
