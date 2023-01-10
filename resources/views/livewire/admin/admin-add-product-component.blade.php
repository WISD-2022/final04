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
                    <span></span> 新增產品
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
                                    <div class="col-md-6" style="display: flex;align-items: center;">
                                        新增產品
                                    </div>
                                    <div class="col-md-6">
                                        <a href="{{ route('admin.products') }}" class="btn btn-success float-end">所有產品</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                @if(Session::has('message'))
                                    <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
                                @endif
                                <form wire:submit.prevent="addProduct">
                                    <div class="mb-3 mt-3">
                                        <label for="name" class="form-lable">產品名稱</label>
                                        <input type="text" name="name" class="form-control" placeholder="輸入產品名稱" wire:model="name" wire:keyup="genrateSlug"/>
                                        @error('name')
                                            <p class="text-danger">
                                                {{$message}}
                                            </p>
                                        @enderror
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label for="slug" class="form-lable">產品路由(英文)</label>
                                        <input type="text" name="slug" class="form-control" placeholder="輸入產品路由(英文)" wire:model="slug" />
                                        @error('slug')
                                            <p class="text-danger">
                                                {{$message}}
                                            </p>
                                        @enderror
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label for="short_description" class="form-lable">產品介紹</label>
                                        <textarea class="form-control" name="short_description" placeholder="輸入產品介紹" wire:model="short_description"></textarea>
                                        @error('short_description')
                                            <p class="text-danger">
                                                {{$message}}
                                            </p>
                                        @enderror
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label for="description" class="form-lable">產品說明</label>
                                        <textarea class="form-control" name="description" placeholder="輸入產品說明" wire:model="description"></textarea>
                                        @error('description')
                                            <p class="text-danger">
                                                {{$message}}
                                            </p>
                                        @enderror
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label for="regular_price" class="form-lable">產品成本</label>
                                        <input type="text" name="regular_price" class="form-control" placeholder="輸入產品成本" wire:model="regular_price" />
                                        @error('regular_price')
                                            <p class="text-danger">
                                                {{$message}}
                                            </p>
                                        @enderror
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label for="sale_price" class="form-lable">產品售價</label>
                                        <input type="text" name="sale_price" class="form-control" placeholder="輸入產品售價" wire:model="sale_price"/>
                                        @error('sale_price')
                                            <p class="text-danger">
                                                {{$message}}
                                            </p>
                                        @enderror
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label for="sale_price" class="form-lable">庫存狀態</label>
                                        <select class="form-control">
                                            <option value="instock">有存貨</option>
                                            <option value="outofstock">沒有存貨</option>
                                        </select>
                                        @error('name')
                                            <p class="text-danger">
                                                {{$message}}
                                            </p>
                                        @enderror
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label for="featured" class="form-lable" wire:model="featured">精選</label>
                                        <select class="form-control" wire:model="featured">
                                            <option value="0">N</option>
                                            <option value="1">Y</option>
                                        </select>
                                        @error('featured')
                                            <p class="text-danger">
                                                {{$message}}
                                            </p>
                                        @enderror
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label for="quantity" class="form-lable">產品數量</label>
                                        <input type="text" name="quantity" class="form-control" placeholder="輸入產品數量" wire:model="quantity"/>
                                        @error('quantity')
                                            <p class="text-danger">
                                                {{$message}}
                                            </p>
                                        @enderror
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label for="image" class="form-lable">產品圖片</label>
                                        <input type="file" name="image" class="form-control" wire:model="image"/>
                                        @if($image)
                                            <img src="{{$image->temporaryUrl()}}" width=120>
                                        @endif
                                        @error('image')
                                            <p class="text-danger">
                                                {{$message}}
                                            </p>
                                        @enderror
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label for="category_id" class="form-lable">產品類別</label>
                                        <select class="form-control" name="category_id" wire:model="category_id">
                                            <option value="">選擇類別</option>
                                            @foreach($categories as $category)
                                                <option value="{{$category->id}}">{{$category->name}}</option>
                                            @endforeach
                                        </select>
                                        @error('category_id')
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