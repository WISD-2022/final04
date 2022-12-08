<x-app-layout>
    <main class="main">
        <div class="page-header breadcrumb-wrap">
            <div class="container">
                <div class="breadcrumb">
                    <a href="/" rel="nofollow">Home</a>                    
                    <span></span> Register
                </div>
            </div>
        </div>
        <section class="pt-150 pb-150">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 m-auto">
                        <div class="row">
                            <div class="col-lg-6">
                            <div class="login_wrap widget-taber-content p-30 background-white border-radius-5">
                                    <div class="padding_eight_all bg-white">
                                        <div class="heading_s1">
                                            <h3 class="mb-30">註冊帳戶</h3>
                                        </div>                                        
                                        <form method="post" action="{{route('register')}}">
                                            @csrf
                                            <div class="form-group">
                                                <input type="text" required="" name="name" placeholder="姓名" :vaule="old('name')" required autofocus autocomplete="name">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" required="" name="email" placeholder="信箱" :vaule="old('email')" required>
                                            </div>
                                            <div class="form-group">
                                                <input required="" type="password" name="password" placeholder="密碼" required autocomplete="new-password">
                                            </div>
                                            <div class="form-group">
                                                <input required="" type="password" name="password_confirmation" placeholder="確認密碼" required autocomplete="new-password">
                                            </div>
                                            <div class="login_footer form-group">
                                                <div class="chek-form">
                                                    <div class="custome-checkbox">
                                                        <input class="form-check-input" type="checkbox" name="checkbox" id="exampleCheckbox12" value="">
                                                        <label class="form-check-label" for="exampleCheckbox12"><span>我同意條款和政策</span></label>
                                                    </div>
                                                </div>
                                                <a href="privacy-policy.html"><i class="fi-rs-book-alt mr-5 text-muted"></i>閱讀更多</a>
                                            </div>
                                            <div class="form-group">
                                                <button type="submit" class="btn btn-fill-out btn-block hover-up" name="login">註冊帳戶</button>
                                            </div>
                                        </form>                                        
                                        <div class="text-muted text-center">已有帳戶？ <a href="{{route('login')}}">登錄</a></div>
                                    </div>
                                </div>
                            </div>                            
                            <div class="col-lg-6">
                               <img src="assets/imgs/login.png">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</x-app-layout>