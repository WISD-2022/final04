<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Product;

class AdminProductComponent extends Component
{
    use WithPagination;

    public function deleteCategory($id){
        $product = Product::find($id);
        unlink('assets/imgs/products/'.$product->image);
        $product->delete();
        session()->flash('message', '刪除成功');
    }

    public function render()
    {
        $products = Product::orderBy('created_at', 'DESC')->paginate(10);
        return view('livewire.admin.admin-product-component', ['products'=>$products]);
    }
}
