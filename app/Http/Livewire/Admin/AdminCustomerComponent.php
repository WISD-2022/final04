<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use App\Models\User;
use Livewire\WithPagination;

class AdminCustomerComponent extends Component
{
    use WithPagination;
    public function deleteUser($id){
        $users = User::find($id);
        $users->delete();
        session()->flash('message', '刪除成功');
    }

    public function render()
    {
        $users = User::where('utype', 'NTD')->orderBy('id', 'ASC')->paginate(8);
        return view('livewire.admin.admin-customer-component', ['users'=>$users]);
    }
}
