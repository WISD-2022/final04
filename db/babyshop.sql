-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-01-02 14:41:16
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'ab reprehenderit', 'ab-reprehenderit', '2022-12-08 02:40:59', '2022-12-08 02:40:59'),
(2, 'dolor quos', 'dolor-quos', '2022-12-08 02:40:59', '2022-12-08 02:40:59'),
(3, 'suscipit repellat', 'suscipit-repellat', '2022-12-08 02:40:59', '2022-12-08 02:40:59'),
(4, 'ut eos', 'ut-eos', '2022-12-08 02:40:59', '2022-12-08 02:40:59'),
(5, 'omnis adipisci', 'omnis-adipisci', '2022-12-08 02:40:59', '2022-12-08 02:40:59'),
(6, 'in rerum', 'in-rerum', '2022-12-08 02:40:59', '2022-12-08 02:40:59'),
(7, 'molestiae porro', 'molestiae-porro', '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(8, 'minima blanditiis', 'minima-blanditiis', '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(9, 'vel similique', 'vel-similique', '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(10, 'sit excepturi', 'sit-excepturi', '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(11, 'alias vel', 'alias-vel', '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(12, 'commodi est', 'commodi-est', '2022-12-08 02:41:28', '2022-12-08 02:41:28');

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
(6, '2022_12_08_091546_create_products_table', 2);

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
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'ab voluptatem mollitia ipsa alias maxime', 'ab-voluptatem-mollitia-ipsa-alias-maxime', 'Veritatis eligendi qui voluptas qui pariatur. Enim vel quia quisquam rerum deleniti sunt qui fuga. Et et quia ut quae autem.', 'Consectetur qui voluptatum et. Iusto maxime cum qui rerum impedit doloremque corrupti id. Omnis sequi reprehenderit facere dolor. Iusto est reprehenderit non ullam et eaque. Reiciendis vel commodi culpa. Nobis id voluptatem ipsum fugit officiis. Esse et reprehenderit deserunt dolores illo enim. Quae at voluptatem architecto sequi. Quasi cum aliquid quia magnam dolores dicta ratione numquam. Tempore officia deserunt omnis soluta.', '269.00', NULL, 'PRD308', 'instock', 0, 49, 'product-2', NULL, 4, '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(2, 'tempora consequatur architecto molestiae temporibus voluptas', 'tempora-consequatur-architecto-molestiae-temporibus-voluptas', 'Et omnis quisquam neque facilis assumenda dolorum itaque. Deserunt quod tempora iste eaque fuga. Ipsum id itaque et non modi laudantium quam.', 'Perspiciatis beatae debitis molestiae vero iusto. Illo vel consequatur maxime laudantium voluptas. Et et sed nihil iure. Sit nemo ratione quaerat cumque quidem aliquid soluta. In est ut provident iusto. Magnam et magni suscipit et sint quo autem. Explicabo ea officia hic. Sapiente ut incidunt atque pariatur soluta molestias. Et non est perferendis dolorem sint.', '312.00', NULL, 'PRD457', 'instock', 0, 30, 'product-14', NULL, 1, '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(3, 'quo in fugit quia repudiandae delectus', 'quo-in-fugit-quia-repudiandae-delectus', 'Voluptatem ex porro ipsa eaque qui sit excepturi illo. Assumenda dolores veritatis nisi odio. Libero est dignissimos quidem esse rem est.', 'Dolorem dolores dolores voluptatum accusamus. Explicabo omnis ut recusandae voluptas autem. Maiores aut aspernatur ab molestiae voluptas animi eos. Magnam quis sit fuga. Similique recusandae distinctio aspernatur temporibus quo quaerat. Rerum aperiam est soluta soluta ratione soluta voluptatem laudantium. Omnis voluptatem et et consequatur eligendi. Iusto adipisci nostrum nihil voluptatem.', '195.00', NULL, 'PRD158', 'instock', 0, 22, 'product-10', NULL, 2, '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(4, 'perferendis eum magni blanditiis dicta et', 'perferendis-eum-magni-blanditiis-dicta-et', 'Fugiat consequuntur sunt quia quos omnis alias rerum non. Assumenda earum voluptas accusantium praesentium. Dicta dolorem exercitationem atque est et amet.', 'Quis quidem tempora modi et velit voluptatem consequatur. Voluptas eos reprehenderit quae vel rerum dicta eum a. Consectetur iusto non et non reiciendis quisquam alias. Eum rem perferendis quia modi. Perferendis quaerat enim accusantium perferendis ut corporis ducimus. Iusto est quibusdam consectetur quam id ut.', '328.00', NULL, 'PRD110', 'instock', 0, 35, 'product-9', NULL, 5, '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(5, 'doloribus numquam laborum facilis quas quasi', 'doloribus-numquam-laborum-facilis-quas-quasi', 'Eum maxime et quia sunt omnis. Corporis dolores quam dolorem quo quisquam. Et est aut minus omnis est tempora quibusdam.', 'Molestias consequatur placeat aut nihil et cumque. Eum minima id vero ea et aut inventore. Non ut occaecati in architecto blanditiis natus voluptate ut. Eos veniam blanditiis ducimus corporis voluptas voluptas. Possimus ut impedit quasi optio. Enim molestias quos qui aut molestiae voluptatem molestiae. Consequatur quaerat non est esse delectus. Reiciendis ut molestiae recusandae ad quia harum ut. Dolorem autem expedita pariatur tempora aut totam qui. A ut dolore molestiae assumenda harum.', '269.00', NULL, 'PRD314', 'instock', 0, 39, 'product-12', NULL, 5, '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(6, 'amet eum aut est et aperiam', 'amet-eum-aut-est-et-aperiam', 'Sit voluptas culpa dolorem beatae modi eos impedit reprehenderit. Modi saepe voluptas voluptatem pariatur explicabo iusto.', 'Perferendis consectetur occaecati eveniet laborum nihil. Aliquam tempore adipisci eligendi quasi soluta ex. Minus sapiente atque temporibus sit ab. Quam vel et sit voluptates saepe dolores. In esse nihil eum. Consequatur est voluptatem in rem. Vel vel dolorem ratione non. Dolor dignissimos tempore dolores eaque quas iure. Ut est explicabo ratione qui a voluptatem. Dignissimos voluptatem qui dolorem.', '115.00', NULL, 'PRD285', 'instock', 0, 26, 'product-2', NULL, 2, '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(7, 'excepturi sunt fugit rerum eum maxime', 'excepturi-sunt-fugit-rerum-eum-maxime', 'Saepe debitis deserunt totam tempore animi voluptas nihil. Dolorum id nisi asperiores dolor perspiciatis eaque. Accusamus beatae autem quo at quo pariatur deserunt.', 'Nostrum repellat doloremque itaque ad blanditiis voluptatem molestiae explicabo. Voluptatum nihil aut earum est doloremque. Est quo vel cupiditate atque in. Ipsum qui omnis non voluptas. Qui et aspernatur fugiat facilis. Deleniti ut eum hic quae. Odit voluptatum veniam et a amet rerum et id. Repellat consequuntur enim libero ut nihil. Eveniet quibusdam voluptates qui nisi ut minima unde ut. Iste dolor quis ea velit porro.', '313.00', NULL, 'PRD416', 'instock', 0, 42, 'product-6', NULL, 2, '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(8, 'assumenda enim voluptas est debitis id', 'assumenda-enim-voluptas-est-debitis-id', 'Quo et qui omnis aliquam non officiis sequi pariatur. Dignissimos sunt est ipsam perspiciatis. Et alias culpa voluptatem est dolorem autem. Voluptates molestiae optio itaque quo vero quis.', 'Temporibus ipsam soluta et ut. Quibusdam minus provident voluptate dolores. Unde aperiam eos deleniti debitis. Non iure quia sit velit eum. Velit est ipsum impedit qui dolores at. Quis tempora quo odio occaecati est quis voluptatem. Reprehenderit temporibus modi iure ab. Qui sit quisquam molestiae rerum vero. Omnis ut quis cumque commodi. Molestiae nam dolore et atque id id voluptate. Maxime ipsum rem laborum quia minus odio.', '458.00', NULL, 'PRD103', 'instock', 0, 20, 'product-5', NULL, 2, '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(9, 'excepturi beatae harum excepturi sed nam', 'excepturi-beatae-harum-excepturi-sed-nam', 'Vero molestiae nemo deserunt qui sit. Consequuntur fugiat ipsam ipsam voluptas. Et et cumque dolorum temporibus repellat. Deserunt numquam ipsam ut dolores.', 'Nihil vitae veniam officiis accusantium voluptatum est. Iste dolor esse sapiente natus impedit exercitationem. Ea et aut impedit voluptas ab adipisci sunt. Saepe voluptatum voluptate possimus beatae quam. Eligendi sit voluptatem et nulla et dignissimos. Quaerat tempore soluta deserunt nemo sed qui. Quas est voluptates qui sed earum facilis non ducimus. Nemo aut adipisci cupiditate consequatur at aliquid sapiente. Ratione dolore tempore magni ex tempora quod ab.', '88.00', NULL, 'PRD127', 'instock', 0, 44, 'product-7', NULL, 3, '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(10, 'architecto ipsa vel dolorem maiores voluptatibus', 'architecto-ipsa-vel-dolorem-maiores-voluptatibus', 'Qui excepturi sunt odio et qui. Qui ratione modi eos aperiam id ut esse.', 'Est aut dolores sint cumque nihil sint sed. Quod et quod nostrum optio doloremque rerum accusantium. Id aperiam aperiam qui aut nisi nulla qui. Ab et blanditiis eligendi. Eaque eligendi praesentium maiores accusantium. Omnis atque est dolores delectus est et qui est. Modi veritatis dolor vitae qui qui nihil laborum voluptates. Aperiam cum ipsum dolores sapiente omnis quis labore quaerat. Velit assumenda quia voluptatibus quidem.', '331.00', NULL, 'PRD225', 'instock', 0, 45, 'product-1', NULL, 5, '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(11, 'architecto non impedit natus quis ut', 'architecto-non-impedit-natus-quis-ut', 'Tempora et perferendis illo qui nostrum. Minus qui voluptatibus ipsam voluptatum dolor odio voluptatem. Velit illum dolorum voluptate eum. Cupiditate minima omnis sed quia.', 'Nam porro aut maxime mollitia nam dicta ullam. Ut modi iste cumque. Esse alias nesciunt voluptate modi natus ad facilis. Molestias voluptate dolore quisquam dolorum laboriosam. Veniam incidunt asperiores quidem sunt cumque dolorem. Ducimus quisquam ea sed aut consequuntur. Perferendis minima inventore praesentium veritatis. Neque quibusdam adipisci ullam magni minima. Dolor voluptas adipisci sed numquam voluptatem. Aliquid voluptatem deleniti similique et vero.', '486.00', NULL, 'PRD438', 'instock', 0, 23, 'product-7', NULL, 4, '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(12, 'unde ea quae quis impedit aut', 'unde-ea-quae-quis-impedit-aut', 'Maiores adipisci atque perspiciatis vel labore. Accusamus non incidunt sunt qui excepturi molestiae repudiandae qui. Et culpa atque sed vero.', 'Voluptatem qui asperiores est et ut quidem qui. Maxime repellendus repudiandae dolores inventore architecto doloremque nemo. Inventore atque amet mollitia tempora dolor voluptates. Tenetur nobis in voluptatem laudantium pariatur et. Quia consequuntur harum quibusdam sed necessitatibus animi ex. Nobis porro perspiciatis voluptatum hic qui nihil. Qui praesentium totam sunt rem.', '398.00', NULL, 'PRD385', 'instock', 0, 37, 'product-8', NULL, 5, '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(13, 'deserunt a eaque quis laudantium nemo', 'deserunt-a-eaque-quis-laudantium-nemo', 'Unde quisquam id eos. Labore reiciendis amet iste ut. Repellendus ea est nesciunt cumque quae error. Qui aliquam dolore molestiae iste tempora sit harum omnis.', 'Consequatur autem fugit adipisci labore quia et nam. Aut ut autem et aut totam consequatur sit. A cumque et vitae quia nostrum. Sit incidunt magni non molestiae magnam atque. Labore accusamus sed magnam commodi autem ut. Voluptate in quaerat culpa in recusandae incidunt unde. Quisquam sunt et ut quaerat. Voluptas ab quaerat aut. Inventore pariatur dignissimos ad fugiat. Beatae et et facilis adipisci. Rerum velit commodi distinctio fuga aliquam et ipsa. Ut nihil quidem eveniet maiores est.', '97.00', NULL, 'PRD107', 'instock', 0, 23, 'product-16', NULL, 1, '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(14, 'architecto delectus et ut quos fugit', 'architecto-delectus-et-ut-quos-fugit', 'Ipsum repellat omnis rerum enim voluptatem rem. Id est velit qui reprehenderit consequatur. Id eaque maxime dolor ut.', 'Laborum earum autem fugit ut ut ex. Eum praesentium quisquam ut hic omnis sit accusantium. Et qui consequatur dolor commodi. Ea laboriosam totam distinctio iusto tempora corporis inventore. Maxime exercitationem consectetur voluptates provident et sapiente. Sit iusto id et perferendis autem eveniet quia. In modi expedita harum rerum accusantium. Est iste quis occaecati aut voluptatem.', '270.00', NULL, 'PRD360', 'instock', 0, 18, 'product-5', NULL, 2, '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(15, 'porro aut sit adipisci vero omnis', 'porro-aut-sit-adipisci-vero-omnis', 'Ut explicabo distinctio exercitationem veritatis laboriosam consequatur quas. Non et odit suscipit cupiditate autem non maiores. Perferendis aliquid aliquam alias illum et vel quia quia.', 'At quos voluptatem praesentium est vitae. Voluptas magnam vel delectus voluptatem ad. Quibusdam magni consequatur ut qui et voluptatem minima. Et quasi labore aut id voluptatem. Autem sint praesentium asperiores aut culpa odio. Ut cupiditate qui sed est. Ea rerum ipsum laboriosam voluptatum. Alias soluta aliquam iure ex. Aut ut consectetur cum. Qui unde suscipit sit eaque necessitatibus. Molestiae sunt aut doloribus animi tempore molestiae corporis.', '309.00', NULL, 'PRD247', 'instock', 0, 29, 'product-10', NULL, 4, '2022-12-08 02:41:28', '2022-12-08 02:41:28'),
(16, 'velit magni consectetur ex earum error', 'velit-magni-consectetur-ex-earum-error', 'Autem magni non perspiciatis velit ducimus odit repellat. Placeat eius temporibus ipsam nobis. Velit ipsa quia facere. Sint voluptatem provident sit optio ipsam.', 'Ea cumque a earum consequatur a. Sunt alias omnis consectetur assumenda laudantium totam. Cupiditate nihil qui aut quasi. Rerum ea quos aut totam eaque occaecati. Sed quia ullam nesciunt. Hic velit qui quia maxime repellat eveniet. Consequatur est id illum ut. Ut aliquam ea quia repellat. Qui exercitationem molestias velit iste. Qui alias quam sint ducimus. Unde impedit aut sit quod voluptate aut.', '126.00', NULL, 'PRD264', 'instock', 0, 38, 'product-12', NULL, 5, '2022-12-08 02:41:28', '2022-12-08 02:41:28');

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
(2, 'admin', 'admin@test.com', NULL, '$2y$10$bNwBmzOPH/BUeL9iKBy0mOK4qHWKi/gyalbmsldzAhryM48YP0jq6', 'ADM', NULL, '2022-12-07 22:28:36', '2022-12-07 22:28:36');

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
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
