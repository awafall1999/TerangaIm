<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserRole extends Model
{
    use HasFactory;
    protected $guarded = [];

     //Many to One (belongsTo)
     public function user()
     {
         return $this->belongsTo(User::class);
     }
    //Many to One (belongsTo)
    public function role()
    {
        return $this->belongsTo(Role::class);
    }
}
