# 還原專案步驟
1. 複製 git@github.com:WISD-2022/final04.git
- **打開 cmder，進入www，輸入git clone git@github.com:WISD-2022/final04.git 切換至專案所在資料夾->cd final04**

2. cmder輸入以下命令，復原專案：
- **composer install**
- **composer run‐script post‐root‐package‐install**
- **composer run‐script post‐create‐project‐cmd** 
- **npm install** 
- **npm run build**
- 並開啟新cmder視窗cd final04
- 執行 **npm run dev**

3. 將專案打開 在.env檔案內輸入資料庫資料：：
- **DB_HOST=127.0.0.1**
- **DB_PORT=33060**
- **DB_DATABASE=final04**
- **DB_USERNAME=root**
- **DB_PASSWORD=root**

4. 復原完，建立資料庫
- **建立final04的資料庫**
- **將資料庫匯入 db資料夾底下的sql檔案**

5. 進入adminer
- **資料庫系統:MYSQL**
- **伺服器:localhost:33060**
- **帳號:root**
- **密碼:root**
6. 開啟新cmder視窗cd final04
- **執行 php artisan serve --port=8001**



# 系統畫面

## -訪客/會員

### ◆首頁
<a href ="https://imgur.com/IJFZVhQ"><img src="https://imgur.com/IJFZVhQ.png" title="source: imgur.com" /></a>
### ◆首頁精選商品
<a href ="https://imgur.com/Lp5bbBI"><img src="https://imgur.com/Lp5bbBI.png" title="source: imgur.com" /></a>
### ◆熱門類別&新品上架
<a href ="https://imgur.com/lrXhrFE"><img src="https://imgur.com/lrXhrFE.png" title="source: imgur.com" /></a>
### ◆商品頁面
<a href ="https://imgur.com/z02DZtI"><img src="https://imgur.com/z02DZtI.png" title="source: imgur.com" /></a>
### ◆商品內頁
<a href ="https://imgur.com/OkrqJVU"><img src="https://imgur.com/OkrqJVU.png" title="source: imgur.com" /></a>
### ◆產品搜尋頁面
<a href ="https://imgur.com/4GMivov"><img src="https://imgur.com/4GMivov.png" title="source: imgur.com" /></a>
### ◆購物車頁面
<a href ="https://imgur.com/2RZ9hnL"><img src="https://imgur.com/2RZ9hnL.png" title="source: imgur.com" /></a>
### ◆結帳頁面
<a href ="https://imgur.com/KGRmRyi"><img src="https://imgur.com/KGRmRyi.png" title="source: imgur.com" /></a>
### ◆我的訂單頁面
<a href ="https://imgur.com/OIDIxrh"><img src="https://imgur.com/OIDIxrh.png" title="source: imgur.com" /></a>
### ◆感謝訂購頁面
<a href ="https://imgur.com/jJIU3PI"><img src="https://imgur.com/jJIU3PI.png" title="source: imgur.com" /></a>


## -管理人員

### ◆首頁
<a href ="https://imgur.com/eZYeHa9"><img src="https://imgur.com/eZYeHa9.png" title="source: imgur.com" /></a>
### ◆產品管理
<a href ="https://imgur.com/IYFb8P6"><img src="https://imgur.com/IYFb8P6.png" title="source: imgur.com" /></a>
### ◆類別管理
<a href ="https://imgur.com/BmTbMfp"><img src="https://imgur.com/BmTbMfp.png" title="source: imgur.com" /></a>
### ◆首頁Banner設定
<a href ="https://imgur.com/MjLppqU"><img src="https://imgur.com/MjLppqU.png" title="source: imgur.com" /></a>
### ◆顧客管理
<a href ="https://imgur.com/PMldpJH"><img src="https://imgur.com/PMldpJH.png" title="source: imgur.com" /></a>
### ◆訂單管理
<a href ="https://imgur.com/fTajCWI"><img src="https://imgur.com/fTajCWI.png" title="source: imgur.com" /></a>
  

# 系統名稱及作用

- 嬰幼兒店商平台系統
- 提供網購族群全方位嬰幼兒產品的購物網路平台，為忙碌的現代父母提供最便利的購物方式，滿足家長在需要嬰幼兒產品時，隨時隨地都能下單訂購的需求，改變家長的生活，減少額外購物時間，增加親子時光。 
  
# 系統主要功能

## -訪客/會員
  - 首頁 Route::get('/', HomeComponent::class)->name('home.index');  [3A932010 賴世傑](https://github.com/3A932010)
  - 商品瀏覽頁面 Route::get('/shop', ShopComponent::class)->name('shop'); [3A932010 賴世傑](https://github.com/3A932010)
  - 個別商品資訊 Route::get('/product/{slug}', DetailsComponent::class)->name('product.details');[3A932010 賴世傑](https://github.com/3A932010)
  - 購物車 Route::get('/cart', CartComponent::class)->name('shop.cart'); [3A932010 賴世傑](https://github.com/3A932010)
  - 願望清單 Route::get('/wishlist', WishlistComponent::class)->name('shop.wishlist'); [3A932010 賴世傑](https://github.com/3A932010)
  - 搜尋產品 Route::get('/search',SearchComponent::class)->name('product.search'); [3A932010 賴世傑](https://github.com/3A932010)
  - 產品類別 Route::get('/product-category/{slug}',CategoryComponent::class)->name('product.category'); [3A932010 賴世傑](https://github.com/3A932010)
  - 結帳 Route::get('/checkout', CheckoutComponent::class)->name('shop.checkout');[3A932010 賴世傑](https://github.com/3A932010)
  - 感謝訂購 Route::get('/thank-you',ThankyouComponent::class)->name('thankyou');[3A932118 謝侑庭](https://github.com/3A932118)
  - 我的訂單 Route::middleware(['auth'])->group(function () {
    Route::get('/user/dashboard', UserDashboardComponent::class)->name('user.dashboard');
    Route::get('/user/orders', UserOrdersComponent::class)->name('user.orders');
    Route::get('/user/orders/{order_id}', UserOrderDetailsComponent::class)->name('user.orderdetails');
});[3A932118 謝侑庭](https://github.com/3A932118)

## -管理者 
 - 會員管理	  Route::get('/admin/customer', AdminCustomerComponent::class)->name('admin.customer');[3A932118 謝侑庭](https://github.com/3A932118)
 - 顯示所有類別   Route::get('/admin/categories', AdminCategoriesComponent::class)->name('admin.categories');[3A932118 謝侑庭](https://github.com/3A932118)
 - 新增類別   Route::get('/admin/category/add', AdminAddCategoryComponent::class)->name('admin.category.add');[3A932118 謝侑庭](https://github.com/3A932118)
 - 編輯類別   Route::get('/admin/category/edit/{category_id}', AdminEditCategoryComponent::class)->name('admin.category.edit');[3A932118 謝侑庭](https://github.com/3A932118)
 - 顯示所有產品   Route::get('/admin/products', AdminProductComponent::class)->name('admin.products');[3A932118 謝侑庭](https://github.com/3A932118)
 - 新增產品   Route::get('/admin/product/add', AdminAddProductComponent::class)->name('admin.product.add');[3A932118 謝侑庭](https://github.com/3A932118)
 - 編輯產品   Route::get('/admin/product/edit/{product_id}', AdminEditProductComponent::class)->name('admin.product.edit');[3A932118 謝侑庭](https://github.com/3A932118)
 - 首頁Banner管理   Route::get('/admin/slider', AdminHomeSliderComponent::class)->name('admin.home.slider');[3A932118 謝侑庭](https://github.com/3A932118)
 - 首頁Banner新增   Route::get('/admin/slider/add', AdminAddHomeSlideComponent::class)->name('admin.home.slide.add');[3A932118 謝侑庭](https://github.com/3A932118)
 - 首頁Banner編輯   Route::get('/admin/slider/edit/{slide_id}', AdminEditHomeSlideComponent::class)->name('admin.home.slide.edit');[3A932118 謝侑庭](https://github.com/3A932118)
 - 顯示所有訂單   Route::get('/admin/orders', AdminOrderComponent::class)->name('admin.orders');[3A932118 謝侑庭](https://github.com/3A932118)
 - 顯示個別訂單   Route::get('/admin/orders/{order_id}', AdminOrderDetailsComponent::class)->name('admin.orderdetails');[3A932118 謝侑庭](https://github.com/3A932118)
  
# ERD
<a href ="https://imgur.com/J3ubeQ1"><img src="https://imgur.com/J3ubeQ1.png" title="source: imgur.com" /></a>


# 關聯式綱要圖

<a href ="https://imgur.com/raEFNzh"><img src="https://imgur.com/raEFNzh.png" title="source: imgur.com" /></a>



# 資料表

- 使用者(users)資料表
<a href ="https://imgur.com/kvuwzeQ"><img src="https://imgur.com/kvuwzeQ.png" title="source: imgur.com" /></a>

- 產品(products)資料表
<a href ="https://imgur.com/KPR5f0U"><img src="https://imgur.com/KPR5f0U.png" title="source: imgur.com" /></a>

- 類別(categories)資料表
<a href ="https://imgur.com/aFc1xgZ"><img src="https://imgur.com/aFc1xgZ.png" title="source: imgur.com" /></a>

- 訂單(orders)資料表
<a href ="https://imgur.com/cqv5tgX"><img src="https://imgur.com/cqv5tgX.png" title="source: imgur.com" /></a>

- 訂單明細(order_items)資料表
<a href ="https://imgur.com/Rp0Lx3V"><img src="https://imgur.com/Rp0Lx3V.png" title="source: imgur.com" /></a>

- 主頁滑塊(home_sliders)資料表
<a href ="https://imgur.com/f5uyemW"><img src="https://imgur.com/f5uyemW.png" title="source: imgur.com" /></a>


# 初始專案與DB負責的同學

- 初始專案 3A932118 謝侑庭
- DB 3A932010 賴世傑 、 3A932118 謝侑庭
  
# 額外使用的套件或樣板
 - 模板使用 https://github.com/surfsidemedia/Laravel-9-E-Commerce/ (很好的電商平臺模板) 
 - livewire 套件  $ composer require livewire/livewire (Livewire 是 Laravel 的全端框架，能建立像 Vue 一樣的動態頁面的同時又能保有 Laravel 原有的特性。除此之外在 SEO 方面仍跟原本 Laravel 的 blade 一樣可以渲染出畫面上的資料，不用擔心是否要再部署 SSR 的問題。)
  
# 系統測試資料存放位置
 final04底下的db資料夾
 
# 系統使用者測試帳號
★ 前台
     帳號：user@test.com
     密碼：user1234
    
★ 後台
     帳號：admin@test.com
     密碼：admin1234
	 
# 系統開發人員與工作分配
  
[3A932010  賴世傑](https://github.com/3A932010)
  - 訪客/會員端製作
  - DB 
  - readme 撰寫
  - 期中報告製作
  
[3A932118  謝侑庭](https://github.com/3A932118)
  - 管理者端製作
  - 初始專案
  - DB
  - readme 撰寫
  - 期中報告製作
 










