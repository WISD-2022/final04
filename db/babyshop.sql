-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-01-16 04:34:58
-- 伺服器版本： 10.4.25-MariaDB
-- PHP 版本： 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `babyshop`
--

-- --------------------------------------------------------

--
-- 資料表結構 `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `image`, `is_popular`) VALUES
(4, 'ut eos', 'ut-eos', '2022-12-08 02:40:59', '2023-01-10 17:07:21', '1673370441.jpg', 1),
(5, 'omnis adipisci', 'omnis-adipisci', '2022-12-08 02:40:59', '2023-01-10 17:24:41', '1673275475.png', 1),
(6, 'in rerum', 'in-rerum', '2022-12-08 02:40:59', '2023-01-10 17:24:46', '1673318114.jpg', 1),
(7, 'molestiae porro', 'molestiae-porro', '2022-12-08 02:41:28', '2023-01-10 17:24:51', '1673318992.jpg', 1),
(8, 'minima blanditiis', 'minima-blanditiis', '2022-12-08 02:41:28', '2023-01-10 17:24:57', '1673369385.jpg', 1),
(9, 'vel similique', 'vel-similique', '2022-12-08 02:41:28', '2023-01-10 17:25:04', '1673333782.jpg', 1),
(11, 'alias vel', 'alias-vel', '2022-12-08 02:41:28', '2022-12-08 02:41:28', '1673370102.jpg', 0),
(12, 'commodi est', 'commodi-est', '2022-12-08 02:41:28', '2022-12-08 02:41:28', '1673369874.jpg', 0),
(14, '1234444', 'bbb-aaaa', '2023-01-08 20:50:14', '2023-01-09 18:26:27', '1673370103.jpg', 0),
(15, '4442212', 'bbb-bbb', '2023-01-08 20:50:24', '2023-01-10 17:25:14', '1673370275.jpg', 1),
(17, 'chirper', 'chirper', '2023-01-09 18:21:06', '2023-01-09 18:21:06', '1673333783.jpg', 0),
(18, '新類別', 'ssasaw-wwww', '2023-01-09 18:22:04', '2023-01-10 17:09:03', '1673370543.jpg', 1),
(19, 'ssaas', 'ssaasaaaa', '2023-01-10 16:50:56', '2023-01-10 17:08:46', '1673370526.jpg', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `top_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `top_title`, `title`, `sub_title`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, '歡迎光臨1', '精心挑選1ss', '價格實惠1', 'http://babyshop.test/shop', '1673345442.png', 1, '2023-01-10 10:10:42', '2023-01-10 10:30:06'),
(3, 'sss', '222222', '22222222', 'http://babyshop.test/shop', '1673347034.png', 1, '2023-01-10 10:37:14', '2023-01-10 10:37:42');

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_08_091425_create_categories_table', 2),
(6, '2022_12_08_091546_create_products_table', 2),
(7, '2023_01_10_145901_create_home_sliders_table', 3),
(8, '2023_01_11_001233_add_image_and_is_popular_column_to_categories_table', 4),
(13, '2023_01_11_024036_create_orders_table', 5),
(14, '2023_01_11_024121_create_order_items_table', 5),
(15, '2023_01_11_024148_create_shoppings_table', 5),
(16, '2023_01_11_024323_create_transactions_table', 5);

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `tax`, `total`, `name`, `mobile`, `email`, `line1`, `status`, `is_shipping_different`, `created_at`, `updated_at`) VALUES
(1, 3, '457.00', '95.97', '552.97', 'Artim', '1234567899', 'a1234@gmail.com', '123', 'ordered', 0, '2023-01-14 14:59:45', '2023-01-14 14:59:45'),
(2, 3, '457.00', '95.97', '552.97', 'Artim', '1234567899', 'a1234@gmail.com', '123', 'ordered', 0, '2023-01-14 15:00:32', '2023-01-14 15:00:32'),
(3, 3, '457.00', '95.97', '552.97', 'Artim', '1234567899', 'admin@test.com', '123', 'ordered', 0, '2023-01-14 15:02:45', '2023-01-14 15:02:45'),
(4, 3, '331.00', '69.51', '400.51', 'Artimccc', '1234567899', 'user@test.com', '123', 'ordered', 0, '2023-01-16 03:16:13', '2023-01-16 03:16:13'),
(5, 1, '817.00', '171.57', '988.57', 'Artimccc4872', '12345678945', 'user@test.com', '123', 'ordered', 0, '2023-01-16 03:23:46', '2023-01-16 03:23:46'),
(6, 1, '795.00', '166.95', '961.95', 'Artimccc45896', '12345678945', 'user@test.com', '123sas', 'ordered', 0, '2023-01-16 03:25:50', '2023-01-16 03:25:50'),
(7, 1, '300.00', '63.00', '363.00', 'Artimccc444', '12345678945', 'user@test.com', 's', 'ordered', 0, '2023-01-16 03:27:25', '2023-01-16 03:27:25'),
(8, 1, '678.00', '142.38', '820.38', 'Artimccc45896', '12345678945', 'user@test.com', '123sas', 'ordered', 0, '2023-01-16 03:27:55', '2023-01-16 03:27:55'),
(9, 1, '940.00', '197.40', '1,137.40', 'Artimccc444', '12345678945', 'user@test.com', '123sas', 'ordered', 0, '2023-01-16 03:32:06', '2023-01-16 03:32:06');

-- --------------------------------------------------------

--
-- 資料表結構 `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 10, 1, '331.00', 1, '2023-01-14 14:59:45', '2023-01-14 14:59:45'),
(2, 16, 1, '126.00', 1, '2023-01-14 14:59:45', '2023-01-14 14:59:45'),
(3, 10, 2, '331.00', 1, '2023-01-14 15:00:32', '2023-01-14 15:00:32'),
(4, 16, 2, '126.00', 1, '2023-01-14 15:00:32', '2023-01-14 15:00:32'),
(5, 10, 3, '331.00', 1, '2023-01-14 15:02:45', '2023-01-14 15:02:45'),
(6, 16, 3, '126.00', 1, '2023-01-14 15:02:45', '2023-01-14 15:02:45'),
(7, 10, 4, '331.00', 1, '2023-01-16 03:16:13', '2023-01-16 03:16:13'),
(8, 11, 5, '486.00', 1, '2023-01-16 03:23:46', '2023-01-16 03:23:46'),
(9, 10, 5, '331.00', 1, '2023-01-16 03:23:46', '2023-01-16 03:23:46'),
(10, 15, 6, '309.00', 1, '2023-01-16 03:25:50', '2023-01-16 03:25:50'),
(11, 11, 6, '486.00', 1, '2023-01-16 03:25:50', '2023-01-16 03:25:50'),
(12, 21, 7, '100.00', 3, '2023-01-16 03:27:25', '2023-01-16 03:27:25'),
(13, 19, 8, '180.00', 1, '2023-01-16 03:27:55', '2023-01-16 03:27:55'),
(14, 12, 8, '398.00', 1, '2023-01-16 03:27:55', '2023-01-16 03:27:55'),
(15, 21, 8, '100.00', 1, '2023-01-16 03:27:55', '2023-01-16 03:27:55'),
(16, 19, 9, '180.00', 3, '2023-01-16 03:32:06', '2023-01-16 03:32:06'),
(17, 21, 9, '100.00', 4, '2023-01-16 03:32:06', '2023-01-16 03:32:06');

-- --------------------------------------------------------

--
-- 資料表結構 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(5, 'doloribus numquam laborum facilis quas quasi', 'doloribus-numquam-laborum-facilis-quas-quasi', 'Eum maxime et quia sunt omnis. Corporis dolores quam dolorem quo quisquam. Et est aut minus omnis est tempora quibusdam.', 'Molestias consequatur placeat aut nihil et cumque. Eum minima id vero ea et aut inventore. Non ut occaecati in architecto blanditiis natus voluptate ut. Eos veniam blanditiis ducimus corporis voluptas voluptas. Possimus ut impedit quasi optio. Enim molestias quos qui aut molestiae voluptatem molestiae. Consequatur quaerat non est esse delectus. Reiciendis ut molestiae recusandae ad quia harum ut. Dolorem autem expedita pariatur tempora aut totam qui. A ut dolore molestiae assumenda harum.', '269.00', '260.00', 'PRD314', 'instock', 0, 39, 'product-3.jpg', NULL, 5, '2022-12-08 02:41:28', '2023-01-10 13:27:49'),
(10, 'architecto ipsa vel dolorem maiores voluptatibus', 'architecto-ipsa-vel-dolorem-maiores-voluptatibus', 'Qui excepturi sunt odio et qui. Qui ratione modi eos aperiam id ut esse.', 'Est aut dolores sint cumque nihil sint sed. Quod et quod nostrum optio doloremque rerum accusantium. Id aperiam aperiam qui aut nisi nulla qui. Ab et blanditiis eligendi. Eaque eligendi praesentium maiores accusantium. Omnis atque est dolores delectus est et qui est. Modi veritatis dolor vitae qui qui nihil laborum voluptates. Aperiam cum ipsum dolores sapiente omnis quis labore quaerat. Velit assumenda quia voluptatibus quidem.', '331.00', NULL, 'PRD225', 'instock', 0, 45, 'product-1.jpg', NULL, 5, '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(11, 'architecto non impedit natus quis ut', 'architecto-non-impedit-natus-quis-ut', 'Tempora et perferendis illo qui nostrum. Minus qui voluptatibus ipsam voluptatum dolor odio voluptatem. Velit illum dolorum voluptate eum. Cupiditate minima omnis sed quia.', 'Nam porro aut maxime mollitia nam dicta ullam. Ut modi iste cumque. Esse alias nesciunt voluptate modi natus ad facilis. Molestias voluptate dolore quisquam dolorum laboriosam. Veniam incidunt asperiores quidem sunt cumque dolorem. Ducimus quisquam ea sed aut consequuntur. Perferendis minima inventore praesentium veritatis. Neque quibusdam adipisci ullam magni minima. Dolor voluptas adipisci sed numquam voluptatem. Aliquid voluptatem deleniti similique et vero.', '486.00', NULL, 'PRD438', 'instock', 0, 23, 'product-7.jpg', NULL, 4, '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(12, 'unde ea quae quis impedit aut', 'unde-ea-quae-quis-impedit-aut', 'Maiores adipisci atque perspiciatis vel labore. Accusamus non incidunt sunt qui excepturi molestiae repudiandae qui. Et culpa atque sed vero.', 'Voluptatem qui asperiores est et ut quidem qui. Maxime repellendus repudiandae dolores inventore architecto doloremque nemo. Inventore atque amet mollitia tempora dolor voluptates. Tenetur nobis in voluptatem laudantium pariatur et. Quia consequuntur harum quibusdam sed necessitatibus animi ex. Nobis porro perspiciatis voluptatum hic qui nihil. Qui praesentium totam sunt rem.', '398.00', '300.00', 'PRD385', 'instock', 1, 37, 'product-8.jpg', NULL, 5, '2022-12-08 02:41:28', '2023-01-10 14:01:07'),
(15, 'porro aut sit adipisci vero omnis', 'porro-aut-sit-adipisci-vero-omnis', 'Ut explicabo distinctio exercitationem veritatis laboriosam consequatur quas. Non et odit suscipit cupiditate autem non maiores. Perferendis aliquid aliquam alias illum et vel quia quia.', 'At quos voluptatem praesentium est vitae. Voluptas magnam vel delectus voluptatem ad. Quibusdam magni consequatur ut qui et voluptatem minima. Et quasi labore aut id voluptatem. Autem sint praesentium asperiores aut culpa odio. Ut cupiditate qui sed est. Ea rerum ipsum laboriosam voluptatum. Alias soluta aliquam iure ex. Aut ut consectetur cum. Qui unde suscipit sit eaque necessitatibus. Molestiae sunt aut doloribus animi tempore molestiae corporis.', '309.00', '250.00', 'PRD247', 'instock', 1, 29, 'product-10.jpg', NULL, 4, '2022-12-08 02:41:28', '2023-01-10 13:59:38'),
(16, 'velit magni consectetur ex earum error', 'velit-magni-consectetur-ex-earum-error', 'Autem magni non perspiciatis velit ducimus odit repellat. Placeat eius temporibus ipsam nobis. Velit ipsa quia facere. Sint voluptatem provident sit optio ipsam.', 'Ea cumque a earum consequatur a. Sunt alias omnis consectetur assumenda laudantium totam. Cupiditate nihil qui aut quasi. Rerum ea quos aut totam eaque occaecati. Sed quia ullam nesciunt. Hic velit qui quia maxime repellat eveniet. Consequatur est id illum ut. Ut aliquam ea quia repellat. Qui exercitationem molestias velit iste. Qui alias quam sint ducimus. Unde impedit aut sit quod voluptate aut.', '126.00', '100.00', 'PRD264', 'instock', 1, 38, 'product-12.jpg', NULL, 5, '2022-12-08 02:41:28', '2023-01-10 13:59:20'),
(18, 'GOO.Nplus肌快適L96 AH專賣品', 'goonplusl96-ah', '保濕成分PLUS 添加膠原蛋白,玻尿酸,甘油', '日本百大醫師評鑑97%醫師一致好評推薦\n保濕成分PLUS 添加膠原蛋白,玻尿酸,甘油\n表層添加「日本銷售第一elleair奢華保濕面紙」相同的保濕成分\n無摩擦感的柔滑表層,溫柔呵護肌膚\n擊退刺激與乾燥!舒緩紅屁屁\n肌快適跳跳褲，寶寶舒適自在，活力十足蹦蹦跳\n溫柔貼合細嫩小肚肚 ,不勒痕不紅紅,強力防漏\n全面透氣屁屁不悶熱', '150.00', '600.00', NULL, 'instock', 0, 200, '1673318114.jpg', NULL, 18, '2023-01-09 18:35:14', '2023-01-09 18:35:14'),
(19, '真實含乳寬口玻璃奶瓶240ml_粉', 'real-milk1', '日本製奶嘴特殊七度斜角設計', '日本製奶嘴特殊七度斜角設計，讓寶寶含乳時張大嘴巴，奶嘴上緣貼合寶寶哺乳窩，引導寶寶吸吮本能。奶嘴頭重現媽媽乳頭複孔出乳，乳汁不會直嗆寶寶喉嚨，與唾液中的消化酶結合，幫助寶寶消化吸收。側邊氣孔設計，預防寶寶脹氣不適。', '180.00', '120.00', NULL, 'instock', 0, 100, '1673318992.jpg', NULL, 11, '2023-01-09 18:49:52', '2023-01-10 13:28:17'),
(21, '滿意寶寶純水濕巾一般型', 'aaa-bbb', '純水99配方', '純水99配方，擦拭手口都安心 無香精、螢光劑添加，不刺激寶寶肌膚 特製剪裁折法，張張俐落好抽不黏張', '100.00', '50.00', NULL, 'instock', 1, 200, '1673333645.png', NULL, 18, '2023-01-09 22:54:05', '2023-01-10 13:28:08'),
(22, 'Laku樂可杯第2階段直飲杯240ml-恐龍世界', 'laku2240ml', '全日本製', '●全日本製\n●可從五個月開始使用\n●訓練唇部肌力發展，學習嘴唇密合，嘴唇輕壓自動出水，飲水時不從嘴角溢出\n●耐熱110度C，可蒸氣消毒、不含BPA\n●易握手把角度，寶寶可輕易舉起飲水\n●防漏杯蓋設計，外帶方便安心\n●配件一體化，安裝清潔更輕鬆', '150.00', '100.00', NULL, 'instock', 1, 100, '1673333782.jpg', NULL, 18, '2023-01-10 06:56:13', '2023-01-10 13:28:01');

-- --------------------------------------------------------

--
-- 資料表結構 `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'cod', 'pending', '2023-01-14 15:00:32', '2023-01-14 15:00:32'),
(2, 3, 3, 'cod', 'pending', '2023-01-14 15:02:45', '2023-01-14 15:02:45'),
(3, 3, 4, 'cod', 'pending', '2023-01-16 03:16:13', '2023-01-16 03:16:13'),
(4, 1, 5, 'cod', 'pending', '2023-01-16 03:23:46', '2023-01-16 03:23:46'),
(5, 1, 6, 'cod', 'pending', '2023-01-16 03:25:50', '2023-01-16 03:25:50'),
(6, 1, 7, 'cod', 'pending', '2023-01-16 03:27:25', '2023-01-16 03:27:25'),
(7, 1, 8, 'cod', 'pending', '2023-01-16 03:27:55', '2023-01-16 03:27:55'),
(8, 1, 9, 'cod', 'pending', '2023-01-16 03:32:06', '2023-01-16 03:32:06');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NTD' COMMENT 'Admin and Normal User',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `utype`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@test.com', NULL, '$2y$10$Flbt15Aid5JB6kqyIhEoiuQyTfQCqJ8/pO4uw6lH7V1BkYddPFUuq', 'NTD', NULL, '2022-12-07 22:28:01', '2022-12-07 22:28:01'),
(2, 'admin', 'admin@test.com', NULL, '$2y$10$bNwBmzOPH/BUeL9iKBy0mOK4qHWKi/gyalbmsldzAhryM48YP0jq6', 'ADM', NULL, '2022-12-07 22:28:36', '2022-12-07 22:28:36'),
(3, 'chirper', 'a1234@gmail.com', NULL, '$2y$10$r0p8gNFvcZ1W8m.1i3QbvuCTKTGLZrc1jnMyRdq864/jbolfEUeDi', 'NTD', NULL, '2023-01-07 22:01:33', '2023-01-07 22:01:33');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- 資料表索引 `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- 資料表索引 `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- 資料表索引 `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- 資料表索引 `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- 資料表索引 `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- 資料表索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- 資料表索引 `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- 資料表索引 `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
