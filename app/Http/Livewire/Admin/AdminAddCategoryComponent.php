<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use Illuminate\Support\Str;
use App\Models\Category;
use Carbon\Carbon;
use Livewire\WithFileUploads;

class AdminAddCategoryComponent extends Component
{
    use WithFileUploads;
    public $name;
    public $slug;
    public $image;
    public $is_popular=0;

    public function genrateSlug(){
        $this->slug = Str::slug($this->name);
    }

    public function updated($fields){
        $this->validateOnly($fields, [
            'name' => 'required',
            'slug' => 'required',
            'image' => 'required',
            'is_popular' => 'required',
        ]);
    }

    public function storeCategory(){
        $this->validate([
            'name' => 'required',
            'slug' => 'required',
            'image' => 'required',
            'is_popular' => 'required',
        ]);
        $category = new Category();
        $category->name = $this->name;
        $category->slug = $this->slug;
        $imageName = Carbon::now()->timestamp.'.'.$this->image->extension();
        $this->image->storeAs('categories', $imageName);
        $category->image = $imageName;
        $category->is_popular = $this->is_popular;
        $category->save();
        session()->flash('message', '新增成功');
    }

    public function render()
    {
        return view('livewire.admin.admin-add-category-component');
    }
}
