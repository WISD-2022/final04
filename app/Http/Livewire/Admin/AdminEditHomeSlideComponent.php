<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use Carbon\Carbon;
use App\Models\HomeSlider;
use Livewire\WithFileUploads;

class AdminEditHomeSlideComponent extends Component
{   
    use WithFileUploads;
    public $top_title;
    public $title;
    public $sub_title;
    public $link;
    public $status;
    public $image;
    public $slide_id;
    public $newimage;

    public function mount($slide_id){
        $slide = HomeSlider::find($slide_id);
        $this->slide_id = $slide->id;
        $this->top_title = $slide->top_title;
        $this->title = $slide->title;
        $this->sub_title = $slide->sub_title;
        $this->link = $slide->link;
        $this->status = $slide->status;
        $this->image = $slide->image;
    }

    public function updateSlide(){
        $this->validate([
            'top_title' => 'required',
            'title' => 'required',
            'sub_title' => 'required',
            'link' => 'required',
            'status' => 'required',
            'image' => 'required',
        ]);

        $slide = HomeSlider::find($this->slide_id);
        $slide->top_title = $this->top_title;
        $slide->title = $this->title;
        $slide->sub_title = $this->sub_title;
        $slide->link = $this->link;
        $slide->status = $this->status;
        if($this->newimage){
            unlink('assets/imgs/slder/'.$slide->image);
            $imageName = Carbon::now()->timestamp.'.'.$this->image->extension();
            $this->image->storeAs('slider', $imageName);
            $slide->image = $imageName;
        }
        $slide->save();
        session()->flash('message', '修改成功');
    }

    public function render()
    {
        return view('livewire.admin.admin-edit-home-slide-component');
    }
}
