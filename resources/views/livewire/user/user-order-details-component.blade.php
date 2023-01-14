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
                    <span></span> 所有訂單
                    <span></span> 訂單詳情
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
                                        訂單詳情
                                    </div>
                                    <div class="col-md-6">
                                        <a href="{{ route('user.orders') }}" class="btn btn-success float-end">我的訂單</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <table class="table shopping-summery text-center clean">
                                    <thead>
                                        <tr class="main-heading">
                                            <th scope="col">商品圖片</th>
                                            <th scope="col">品名</th>
                                            <th scope="col">價格</th>
                                            <th scope="col">數量</th>
                                            <th scope="col">小計</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($order->orderItems as $item)
                                            <tr>
                                                <td class="image product-thumbnail"><img src="{{ asset('assets/imgs/products')}}/{{$item->product->image}}" alt="#"></td>
                                                <td class="product-des product-name">
                                                    <h5 class="product-name"><a href="product-details.html">{{$item->product->name}}</a></h5>
                                                </td>
                                                <td class="price" data-title="Price"><span>${{$item->price}} </span></td>
                                                <td class="text-center" data-title="Stock">
                                                    <h5>{{$item->quantity}}</h5>
                                                </td>
                                                <td class="text-center" data-title="Stock">
                                                    <h5>{{$item->price * $item->quantity}}</h5>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                <div class="table-responsive">
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td class="cart_total_label">購物車小計</td>
                                                <td class="cart_total_amount"><span class="font-lg fw-900 text-brand">${{$order->subtotal}}</span></td>
                                            </tr>
                                            <tr>
                                                <td class="cart_total_label">稅率</td>
                                                <td class="cart_total_amount"><span class="font-lg fw-900 text-brand">${{$order->tax}}</span></td>
                                            </tr>
                                            <tr>
                                                <td class="cart_total_label">運費</td>
                                                <td class="cart_total_amount"> <i class="ti-gift mr-5"></i> 免運費</td>
                                            </tr>
                                            <tr>
                                                <td class="cart_total_label">總金額</td>
                                                <td class="cart_total_amount"><strong><span class="font-xl fw-900 text-brand">${{$order->total}}</span></strong></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </scation>
        <section class="mt-50 mb-50">
            <div class="container">

                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="row">
                                    <div class="col-md-6" style="display: flex;align-items: center;">
                                        計費項目
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <table class="table table-striped">
                                    <tr>
                                        <th>姓名</th>
                                        <td>{{$order->name}}</td>
                                    </tr>
                                    <tr>
                                        <th>手機</th>
                                        <td>{{$order->mobile}}</td>
                                    </tr>
                                    <tr>
                                        <th>Email</th>
                                        <td>{{$order->email}}</td>
                                    </tr>
                                    <tr>
                                        <th>地址</th>
                                        <td>{{$order->line1}}</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </scation>

        <section class="mt-50 mb-50">
            <div class="container">
                @if($order->is_shipping_different)
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="row">
                                    <div class="col-md-6" style="display: flex;align-items: center;">
                                    送貨資訊
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <table class="table table-striped">
                                    <tr>
                                        <th>姓名</th>
                                        <td>{{$order->shipping->name}}</td>
                                    </tr>
                                    <tr>
                                        <th>手機</th>
                                        <td>{{$order->shipping->mobile}}</td>
                                    </tr>
                                    <tr>
                                        <th>Email</th>
                                        <td>{{$order->shipping->email}}</td>
                                    </tr>
                                    <tr>
                                        <th>地址</th>
                                        <td>{{$order->shipping->line1}}</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                @endif
            </div>
        </scation>

        <section class="mt-50 mb-50">
            <div class="container">
                
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="row">
                                    <div class="col-md-6" style="display: flex;align-items: center;">
                                        交易方式
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <table class="table table-striped">
                                    <tr>
                                        <th>交易方式</th>
                                        <td>{{$order->transaction->mode == 'con' ? '貨到付款':'貨到付款'}}</td>
                                    </tr>
                                    <tr>
                                        <th>交易狀態</th>
                                        <td>{{$order->transaction->status == 'pending' ? '未付款':'已付款'}}</td>
                                    </tr>
                                    <tr>
                                        <th>訂單日期</th>
                                        <td>{{$order->transaction->created_at}}</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </scation>
    </main>
</div>
