<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use Illuminate\Support\Str;
use App\Models\Category;

class AdminEditCategoryComponent extends Component
{
    public $category_id;
    public $name;


    public function mount($category_id){
        $category = Category::find($category_id);
        $this->category_id = $category->id;
        $this->name = $category->name;
    }

    public function genrateSlug(){
        $this->slug = Str::slug($this->name);
    }

    public function updated($fields){
        $this->validateOnly($fields, [
            'name' => 'required',
        ]);
    }

    public function updateCategory(){
        $this->validate([
            'name' => 'required',
        ]);
        $category = Category::find($this->category_id);
        $category->name = $this->name;
        $category->save();
        session()->flash('message', '修改成功');
    }

    public function render()
    {
        return view('livewire.admin.admin-edit-category-component');
    }
}