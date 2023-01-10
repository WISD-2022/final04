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
### ◆商品頁
<a href ="https://imgur.com/Lp5bbBI"><img src="https://imgur.com/Lp5bbBI.png" title="source: imgur.com" /></a>
### ◆商品內頁
<a href ="https://imgur.com/OkrqJVU"><img src="https://imgur.com/OkrqJVU.png" title="source: imgur.com" /></a>

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

   
# 系統主要功能
