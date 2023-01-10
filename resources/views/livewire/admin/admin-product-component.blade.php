<div>
    <head>
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
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
                    <span></span> 產品管理
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
                                        所有產品
                                    </div>
                                    <div class="col-md-6">
                                        <a href="{{ route('admin.product.add') }}" class="btn btn-success float-end">新增產品類別</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                @if(Session::has('message'))
                                <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                                @endif
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>產品圖</th>
                                            <th>產品名稱</th>
                                            <th>庫存</th>
                                            <th>價格</th>
                                            <th>產品類別</th>
                                            <th>上架時間</th>
                                            <th>動作</th>
                                        </tr>
                                        <tbody>
                                            @php
                                            	$i = ($products->currentPage()-1)*$products->perPage();
                                            @endphp
                                            @foreach($products as $product)
                                                <tr>
                                                    <td>{{ ++$i }}</td>
                                                    <td><img src="{{asset('assets/imgs/products')}}/{{$product->image}}" alt="{{ $product->name }}" width="60"></td>
                                                    <td>{{ $product->name }}</td>
                                                    <td>{{ $product->stock_status }}</td>
                                                    <td>{{ $product->regular_price }}</td>
                                                    <td>{{ $product->category->name }}</td>
                                                    <td>{{ $product->created_at }}</td>
                                                    <td>
                                                        <a href="{{route('admin.product.edit', ['product_id'=>$product->id])}}"><i class="fa fa-edit" style="font-size:24px; color:blue;"></i></a>
                                                        <a href="#" class="text_danger" wire:click.prevent="deleteCategory({{$product->id}})" style="margin-left:20px;"><i class="fa fa-trash" style="font-size:24px; color:red;"></i></a>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </thead>
                                </table>
                                {{ $products->links('vendor.pagination.bootstrap-4') }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </scation>
    </main>
</div>