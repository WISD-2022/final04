<?php

namespace App\Http\Livewire;
use App\Models\Product;
use Livewire\Component;

class WishlistIconComponent extends Component
{
    protected $listeners =['refreshComponent'=>'$refresh'];
    public function render()
    {
        return view('livewire.wishlist-icon-component');
    }
}
