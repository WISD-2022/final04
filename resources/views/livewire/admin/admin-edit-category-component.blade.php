<div>
    <style>
        nav svg{
            height: 20px;
        }

        nav .hidden{
            display: block;
        }
    </style>
    <main class="main">
        <div class="page-header breadcrumb-wrap">
            <div class="container">
                <div class="breadcrumb">
                    <a href="/" rel="nofollow">首頁</a>
                    <span></span> 修改產品類別
                </div>
            </div>
        </div>
        <section class="mt-50 mb-50">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="row">
                                    <div class="col-md-6">
                                        修改產品類別
                                    </div>
                                    <div class="col-md-6">
                                        <a href="{{ route('admin.categories') }}" class="btn btn-success float-end">所有產品類別</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                @if(Session::has('message'))
                                    <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
                                @endif
                                <form wire:submit.prevent="updateCategory">
                                    <div class="mb-3 mt-3">
                                        <label for="name" class="form-lable">類別名稱</label>
                                        <input type="text" name="name" class="form-control" placeholder="輸入產品類別名稱" wire:model="name" wire:keyup="genrateSlug"/>
                                        @error('name')
                                            <p class="text-danger">
                                                {{$message}}
                                            </p>
                                        @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label for="name" class="form-lable">類別路由</label>
                                        <input type="text" name="name" class="form-control" placeholder="輸入產品類別路由" wire:model="slug" />
                                        @error('slug')
                                            <p class="text-danger">
                                                {{$message}}
                                            </p>
                                        @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label for="newimage" class="form-lable">圖片</label>
                                        <input type="file" name="newimage" class="form-control" wire:model="newimage"/>
                                        @if($newimage)
                                            <img src="{{$newimage->temporaryUrl()}}" width=120>
                                        @else
                                            <img src="{{asset('assets/imgs/categories')}}/{{$image}}" width=120>
                                        @endif
                                        @error('newimage')
                                            <p class="text-danger">
                                                {{$message}}
                                            </p>
                                        @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label for="is_popular" class="form-lable">熱門</label>
                                        <select name="is_popular" class="form-control" wire:model="is_popular">
                                            <option value="0">N</option>
                                            <option value="1">Y</option>
                                        </select>
                                        @error('is_popular')
                                            <p class="text-danger">
                                                {{$message}}
                                            </p>
                                        @enderror
                                    </div>
                                    <button type="submit" class="btn btn-primary float-end">修改</button>
                                </form>                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </scation>
    </main>
</div>