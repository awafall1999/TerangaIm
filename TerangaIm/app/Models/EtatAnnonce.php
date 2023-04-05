<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EtatAnnonce extends Model
{
    use HasFactory;
    protected $guarded = [];

    //Many to Many (belongsToMany)
    public function annonces()
    {
        return $this->belongsToMany(Annonce::class);
    }
}
