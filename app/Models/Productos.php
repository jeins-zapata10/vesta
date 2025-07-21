<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Productos extends Model
{
    use HasFactory;
    
    // Relación con Subcategorias: "Un producto PERTENECE A una subcategoría"
    public function subcategoria()
    {
        return $this->belongsTo(Subcategorias::class, 'idSubCategoria', 'idSubCategoria');
    }
}
