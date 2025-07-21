<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Subcategorias extends Model
{
    use HasFactory;

    // Relación con Categorias: "Una subcategoría PERTENECE A una categoría"
    public function categoria()
    {
        return $this->belongsTo(Categorias::class, 'idCategoria', 'idCategoria');
    }

    // Relación con Productos: "Una subcategoría TIENE MUCHOS productos"
    public function productos()
    {
        return $this->hasMany(Productos::class, 'idSubCategoria', 'idSubCategoria');
    }

}
