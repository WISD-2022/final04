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
                    <span></span> 新增首頁Banner
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
                                        新增首頁Banner
                                    </div>
                                    <div class="col-md-6">
                                        <a href="{{ route('admin.home.slider') }}" class="btn btn-success float-end">所有首頁Banner</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                @if(Session::has('message'))
                                    <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
                                @endif
                                <form wire:submit.prevent="addSlide">
                                    <div class="mb-3 mt-3">
                                        <label class="form-lable">標題一</label>
                                        <input type="text" class="form-control" placeholder="輸入標題一" wire:model="top_title"/>
                                        @error('top_title')
                                            <p class="text-danger">
                                                {{$message}}
                                            </p>
                                        @enderror
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label class="form-lable">標題二</label>
                                        <input type="text" class="form-control" placeholder="輸入標題二" wire:model="title"/>
                                        @error('title')
                                            <p class="text-danger">
                                                {{$message}}
                                            </p>
                                        @enderror
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label class="form-lable">標題三</label>
                                        <input type="text" class="form-control" placeholder="輸入標題三" wire:model="sub_title"/>
                                        @error('sub_title')
                                            <p class="text-danger">
                                                {{$message}}
                                            </p>
                                        @enderror
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label class="form-lable">連結</label>
                                        <input type="text" class="form-control" placeholder="輸入連結" wire:model="link"/>
                                        @error('link')
                                            <p class="text-danger">
                                                {{$message}}
                                            </p>
                                        @enderror
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label class="form-lable">狀態</label>
                                        <select class="form-select" wire:model="status">
                                            <option value="1">開啟</option>
                                            <option value="0">關閉</option>
                                        </select>
                                        @error('status')
                                            <p class="text-danger">
                                                {{$message}}
                                            </p>
                                        @enderror
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label class="form-lable">圖片</label>
                                        <input type="file" class="form-control" wire:model="image"/>
                                        @if($image)
                                            <img src="{{$image->temporaryUrl()}}" width=120>
                                        @endif
                                        @error('image')
                                            <p class="text-danger">
                                                {{$message}}
                                            </p>
                                        @enderror
                                    </div>

                                    <button type="submit" class="btn btn-primary float-end">新增</button>
                                </form>                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </scation>
    </main>
</div>