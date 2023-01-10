<?php

namespace App\Http\Livewire\Admin;

use App\Models\HomeSlider;
use Livewire\Component;

class AdminHomeSliderComponent extends Component
{
    public function deleteslide($id){
        $slide = HomeSlider::find($id);
        unlink('assets/imgs/slider/'.$slide->image);
        $slide->delete();
        session()->flash('message', '刪除成功');
    }
    
    public function render()
    {
        
        $slides = HomeSlider::orderBy('created_at', 'DESC')->get();
        return view('livewire.admin.admin-home-slider-component', ['slides'=>$slides]);
    }
}
