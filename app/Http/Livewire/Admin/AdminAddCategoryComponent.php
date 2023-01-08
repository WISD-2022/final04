<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use Illuminate\Support\Str;
use App\Models\Category;

class AdminAddCategoryComponent extends Component
{
    public $name;

    public function genrateSlug(){
        $this->slug = Str::slug($this->name);
    }

    public function updated($fields){
        $this->validateOnly($fields, [
            'name' => 'required',
        ]);
    }

    public function storeCategory(){
        $this->validate([
            'name' => 'required',
        ]);
        $category = new Category();
        $category->name = $this->name;
        $category->save();
        session()->flash('message', '新增成功');
    }

    public function render()
    {
        return view('livewire.admin.admin-add-category-component');
    }
}