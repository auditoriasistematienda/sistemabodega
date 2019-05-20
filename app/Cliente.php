<?php

namespace SistemaGlobal;

use Illuminate\Database\Eloquent\Model;

class Cliente extends Model
{
    protected $table = 'clientes';
    protected $primerykey = 'cli_id';
    public $timestamps = false;
    protected $filllable = [
        'cli_dni',
        'cli_apellidos',
        'cli_nombres',
        'cli_direccion',
        'cli_telefono',
        'cli_nacimiento',
        'cli_email',
        'cli_sexo'
    ];
    protected $guarded = [];
}
