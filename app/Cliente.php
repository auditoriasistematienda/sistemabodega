<?php

namespace SistemaGlobal;

use Illuminate\Database\Eloquent\Model;

class Cliente extends Model
{
    protected $table = 'clientes';
    protected $primaryKey = 'cli_id';
    public $timestamps = false;
    protected $fillable = [
        'cli_dni',
        'cli_apellidos',
        'cli_nombres',
        'cli_direccion',
        'cli_telefono',
        'cli_nacimiento',
        'cli_email',
        'cli_sexo',
        'cli_usuario'
    ];
    protected $guarded = [];
}
