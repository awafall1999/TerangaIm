<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SousCategorie extends Model
{
    use HasFactory;
    protected $guarded = [];


    //Many to One (belongsTo)
    public function categorie()
    {
        return $this->belongsTo(Categorie::class);
    }
}
