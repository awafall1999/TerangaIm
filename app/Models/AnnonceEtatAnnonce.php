<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AnnonceEtatAnnonce extends Model
{
    use HasFactory;
    protected $guarded = [];

    //Many to One (belongsTo)
    public function annonce()
    {
        return $this->belongsTo(Annonce::class);
    }
        //Many to One (belongsTo)
    public function etatAnnonce()
    {
        return $this->belongsTo(EtatAnnonce::class);
    }


}
