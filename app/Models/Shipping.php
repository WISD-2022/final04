<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Order;

class Shipping extends Model
{
    use HasFactory;

    protected $table = "shippings";

    public function order(){
        return $this->belongsTo(Order::class);
    }
}
