<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use App\Models\Category;
use Livewire\WithPagination;

class AdminCategoriesComponent extends Component
{
    public $category_id;

    use WithPagination;

    public function deleteCategory($id){
        $category = Category::find($id);
        $category->delete();
        session()->flash('message', '刪除成功');
    }

    public function render()
    {
        $categories = Category::orderBy('name', 'ASC')->paginate(5);
        return view('livewire.admin.admin-categories-component', ['categories'=>$categories]);
    }
}
