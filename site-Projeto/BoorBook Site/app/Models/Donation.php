<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Donation extends Model
{
    use HasFactory;
    public $timestamps = true;

    protected $casts = [
        'items' => 'array'
    ];

    protected $dates = ['date'];

    /**
     * Get the phone associated with the user.
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
