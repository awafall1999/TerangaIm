<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categorie extends Model
{
    use HasFactory;
    protected $guarded = [];

    // One to Many (hasMany)
    public function annonces()
    {
        return $this->hasMany(Annonce::class);
    }

     // One to Many (hasMany)
     public function sousCategories()
     {
         return $this->hasMany(SousCategorie::class);
     }

}
