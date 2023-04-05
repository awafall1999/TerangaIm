<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Nationalite extends Model
{
    use HasFactory;
    protected $guarded = [];

    // One to Many (hasMany)
     public function users()
     {
         return $this->hasMany(User::class);
     }
}
