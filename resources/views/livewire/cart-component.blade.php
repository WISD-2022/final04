<div>
    <main class="main">
        <div class="page-header breadcrumb-wrap">
            <div class="container">
                <div class="breadcrumb">
                    <a href="/" rel="nofollow">首頁</a>
                    <span></span> 商店
                    <span></span> 你的購物車
                </div>
            </div>
        </div>
        <section class="mt-50 mb-50">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        @if(Cart::instance('cart')->count() > 0)
                        <div class="table-responsive">
                            @if(Session::has('success_message'))
                                <div class="alert alert-success">
                                        <strong>Success| {{Session::get('success_message')}}</strong>
                                </div>
                            @endif
                            @if(Cart::instance('cart')->count()>0)
                                <table class="table shopping-summery text-center clean">
                                    <thead>
                                        <tr class="main-heading">
                                            <th scope="col">商品圖片</th>
                                            <th scope="col">品名</th>
                                            <th scope="col">價格</th>
                                            <th scope="col">數量</th>
                                            <th scope="col">小計</th>
                                            <th scope="col">移除</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach(Cart::instance('cart')->content() as $item)
                                            <tr>
                                                <td class="image product-thumbnail"><img src="{{ asset('assets/imgs/products')}}/{{$item->model->image}}" alt="#"></td>
                                                <td class="product-des product-name">
                                                    <h5 class="product-name"><a href="product-details.html">{{$item->model->name}}</a></h5>
                                                </td>
                                                <td class="price" data-title="Price"><span>${{$item->model->regular_price}} </span></td>
                                                <td class="text-center" data-title="Stock">
                                                    <div class="detail-qty border radius  m-auto">
                                                        <a href="#" class="qty-down" wire:click.prevent="decreaseQuantity('{{$item->rowId}}')"><i class="fi-rs-angle-small-down"></i></a>
                                                        <span class="qty-val">{{$item->qty}}</span>
                                                        <a href="#" class="qty-up" wire:click.prevent="increaseQuantity('{{$item->rowId}}')"><i class="fi-rs-angle-small-up"></i></a>
                                                    </div>
                                                </td>
                                                <td class="text-right" data-title="Cart">
                                                    <span>${{$item->subtotal}} </span>
                                                </td>
                                                <td class="action" data-title="Remove"><a href="#" class="text-muted" wire:click.prevent="destroy('{{$item->rowId}}')"><i class="fi-rs-trash"></i></a></td>
                                            </tr>
                                        @endforeach                                    
                                        <tr>
                                            <td colspan="6" class="text-end">
                                                <a href="#" class="text-muted" wire:click.prevent="clearAll()"> <i class="fi-rs-cross-small"></i> 清空購物車</a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            @else
                                <p>沒有任何商品在購物車中</p>
                            @endif
                        </div>

                        <div class="cart-action text-end">
                             <a class="btn " href="{{route('shop')}}"><i class="fi-rs-shopping-bag mr-10"></i>繼續購物</a>
                        </div>

                        <div class="divider center_icon mt-50 mb-50"><i class="fi-rs-fingerprint"></i></div>
                        <div class="row mb-50">
                            <div class="col-lg-6 col-md-12">
                                <div class="heading_s1 mb-3">
                                    <h4>估算運費</h4>
                                </div>
                                <p class="mt-15 mb-30">稅率: <span class="font-xl text-brand fw-900">5%</span></p>
                              
                            </div>
                            <div class="col-lg-6 col-md-12">
                                <div class="border p-md-4 p-30 border-radius cart-totals">
                                    <div class="heading_s1 mb-3">
                                        <div class="heading_s1 mb-3">
                                       <h4>總計</h4>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <tbody>
                                                <tr>
                                                    <td class="cart_total_label">購物車小計</td>
                                                    <td class="cart_total_amount"><span class="font-lg fw-900 text-brand">${{Cart::subtotal()}}</span></td>
                                                </tr>
                                                <tr>
                                                    <td class="cart_total_label">稅率</td>
                                                    <td class="cart_total_amount"><span class="font-lg fw-900 text-brand">${{Cart::tax()}}</span></td>
                                                </tr>
                                                <tr>
                                                    <td class="cart_total_label">運費</td>
                                                    <td class="cart_total_amount"> <i class="ti-gift mr-5"></i> 免運費</td>
                                                </tr>
                                                <tr>
                                                    <td class="cart_total_label">總金額</td>
                                                    <td class="cart_total_amount"><strong><span class="font-xl fw-900 text-brand">${{Cart::total()}}</span></strong></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    @auth
                                        <a href="#"  class="btn " wire:click.prevent="checkout"> <i class="fi-rs-box-alt mr-10"></i> 確認</a>
                                    @else
                                        <a href="{{route('login')}}"  class="btn "> <i class="fi-rs-box-alt mr-10"></i> 確認</a>
                                    @endif
                                </div>
                            </div>
                        </div>
                        @else
                            <div class="text-center" style="padding:30px 0;">
                                <h1>購物車是空的</h1>
                                <p>現在馬上選購</p>
                                <a href="{{route('shop')}}" class="btn btn-success">購物去</a>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </section>
    </main>
</div>
