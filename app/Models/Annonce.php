<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Annonce extends Model
{
    use HasFactory;
    protected $guarded = [];

    //Many to One (belongsTo)
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // One to Many (hasMany)
    public function notes()
    {
        return $this->hasMany(Note::class);
    }

    // One to Many (hasMany)
    public function transactions()
    {
        return $this->hasMany(Transaction::class);
    }

    //Many to One (belongsTo)
    public function categorie()
    {
        return $this->belongsTo(Categorie::class);
    }

     //Many to Many (belongsToMany)
     public function etatAnnonces()
     {
         return $this->belongsToMany(EtatAnnonce::class);
     }
}
