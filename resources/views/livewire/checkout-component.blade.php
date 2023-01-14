<div>
    <main class="main">
        <div class="page-header breadcrumb-wrap">
            <div class="container">
                <div class="breadcrumb">
                    <a href="/" rel="nofollow">首頁</a>
                    <span></span> 商店
                    <span></span> 確認付款
                </div>
            </div>
        </div>
        <section class="mt-50 mb-50">
            <div class="container">
                <form wire:submit.prevent="placeOrder">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-25">
                                <h4>填寫資料</h4>
                            </div>
                            <div class="form-group">
                                <input type="text" required="" name="fname" placeholder="姓名 *" wire:model="name">
                                @error('name')
                                    <span class="text-danger">{{$message}}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <input type="text" name="billing_address" required="" placeholder="住址 *" wire:model="line1">
                                @error('line1')
                                    <span class="text-danger">{{$message}}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <input required="" type="text" name="phone" placeholder="手機 *" wire:model="mobile">
                                @error('mobile')
                                    <span class="text-danger">{{$message}}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <input required="" type="text" name="email" placeholder="Email *" wire:model="email">
                                @error('email')
                                    <span class="text-danger">{{$message}}</span>
                                @enderror
                            </div>
                            <div class="mb-20">
                                <h5>備註</h5>
                            </div>
                            <div class="form-group mb-30">
                                <textarea rows="5" placeholder="Order notes"></textarea>
                            </div>
                        </div>
                        <div class="form-group fill-wife">
                            <label class="checkbox-field">
                                <input type="checkbox" id="different-add" name="different-add" value="1" wire:model="ship_to_different" style="width:25px; margin-top:10px;">
                                <span>運送不同地址嗎?</span>
                            </label>
                        </div>
                        @if($ship_to_different)
                        <div class="col-md-12">
                            <div class="form-group">
                                <input type="text" required="" name="name" placeholder="姓名 *" wire:model="s_name">
                                @error('name')
                                    <span class="text-danger">{{$message}}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <input type="text" name="billing_address" required="" placeholder="住址 *" wire:model="s_line1">
                                @error('line1')
                                    <span class="text-danger">{{$message}}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <input required="" type="text" name="phone" placeholder="手機 *" wire:model="s_mobile">
                                @error('mobile')
                                    <span class="text-danger">{{$message}}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <input required="" type="text" name="email" placeholder="Email *" wire:model="s_email">
                                @error('email')
                                    <span class="text-danger">{{$message}}</span>
                                @enderror
                            </div>
                        </div>
                        @endif
                    </div>
                        <div class="col-md-12">
                            <div class="order_review">
                                <div class="mb-20">
                                    <h4>您的訂單</h4>
                                </div>
                                <div class="table-responsive order_table text-center">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>圖片</th>
                                                <th colspan="2">產品</th>
                                                <th>價格</th>
                                            </tr>
                                        </thead>
                                        @foreach(Cart::instance('cart')->content() as $item)
                                        <tbody>
                                            <tr>
                                                <td class="image product-thumbnail"><img src="{{ asset('assets/imgs/products')}}/{{$item->model->image}}" alt="#"></td>
                                                <td colspan="2">
                                                    <h5><a href="product-details.html">{{$item->model->name}}</a></h5> <span class="product-qty">X{{$item->qty}}</span>
                                                </td>
                                                <td>${{$item->model->regular_price}}</td>
                                            </tr>
                                        </tbody>
                                        @endforeach
                                    </table>
                                    
                                    @if(Session::has('checkout'))
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>購物車合計</th>
                                                    <th>稅率</th>
                                                    <th>總計</th>
                                                </tr>
                                            </thead>
                                            <thead>
                                                <th>${{Session::get('checkout')['subtotal']}}</th>
                                                <th>${{Session::get('checkout')['tax']}}</th>
                                                <th>${{Session::get('checkout')['total']}}</th>
                                            </thead>
                                        </table>
                                    @endif
                                </div>
                                <div class="bt-1 border-color-1 mt-30 mb-30"></div>
                                <div class="payment_method">
                                    <div class="mb-25">
                                        <h5>付款方式</h5>
                                    </div>
                                    <div class="payment_option">
                                        <div class="custome-radio">
                                            <input class="form-check-input" required="" type="radio" name="payment_option" id="exampleRadios3" value="cod" wire:model="paymentmode">
                                            <label class="form-check-label" for="exampleRadios3" data-bs-toggle="collapse" data-target="#cashOnDelivery" aria-controls="cashOnDelivery">貨到付款</label>                                        
                                        </div>
                                    </div>
                                    @error('paymentmode')
                                        <span class="text-danger">{{$message}}</span>
                                    @enderror
                                </div>
                                <button type="submit" class="btn btn-fill-out btn-block mt-30">下訂單</button>
                            </div>
                        </div>
                </form>
            </div>
        </section>
    </main>
</div>
