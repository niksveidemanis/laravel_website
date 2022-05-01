-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2022 at 06:05 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `floorball`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_29_073057_create_posts_table', 1),
(6, '2022_04_30_094648_add_user_id_to_posts', 2),
(7, '2022_04_30_120543_add_cover_image_to_posts', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
(28, 'Nulla facilisi', '<p><i><strong>Duis sit amet erat lectus. Nullam semper vulputate urna, id sollicitudin arcu condimentum quis. Nam tristique, sem in blandit laoreet, ex diam pharetra metus, quis sagittis augue arcu id dolor. Suspendisse potenti. Praesent quis convallis augue. Mauris a rutrum libero.</strong></i></p><p>Curabitur velit est, viverra ultricies augue in, lobortis sodales dolor. Morbi viverra ut lacus sed scelerisque. Nulla facilisi. Fusce vulputate dapibus mauris. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec vehicula eget elit vitae tempor. Nulla facilisi. Integer justo sem, volutpat id auctor sit amet, rutrum vel nulla. Curabitur sed leo dapibus, consequat purus nec, dapibus risus. Vestibulum quis pulvinar enim, ac vestibulum arcu. Pellentesque pellentesque nibh vel sapien viverra cursus. Morbi quis pellentesque massa. Morbi scelerisque fringilla magna, scelerisque ullamcorper diam lobortis pulvinar. Sed malesuada ligula in mi elementum vestibulum.</p>', '2022-05-01 08:34:45', '2022-05-01 08:34:45', 1, '5_1651404885.jpg'),
(29, 'Vivamus vestibulum commodo odio!', '<p><i><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vestibulum sollicitudin nibh in viverra. Pellentesque erat odio, sodales quis gravida eget, malesuada a ante. Sed et commodo dui. Mauris vulputate sem eget ex aliquet, ac porta risus imperdiet. Suspendisse eget placerat neque. Phasellus sed lectus vel nunc consectetur molestie. Proin dui risus, mattis sed facilisis ut, placerat ut tortor. Morbi pretium est lacus, nec blandit dolor tincidunt a. Suspendisse potenti. Morbi ac ex et erat pulvinar imperdiet at vitae libero. Duis aliquet accumsan ante, vel posuere metus facilisis non. In sit amet euismod felis, eu porttitor velit.</strong></i></p><p>Etiam at magna quis magna commodo pellentesque sed at dolor. Vestibulum tincidunt tortor id scelerisque accumsan. Praesent feugiat tellus fermentum ipsum consequat pulvinar. Vivamus vestibulum commodo odio. Vivamus congue, tortor sed pretium gravida, velit risus dignissim enim, in facilisis justo enim vitae sapien. Nullam ultrices, nibh in volutpat dignissim, mi arcu volutpat lorem, efficitur sagittis lacus ipsum ac lacus. Vestibulum facilisis sapien vel mi tincidunt tincidunt. In quis suscipit tortor, id vestibulum massa. Praesent accumsan id ex sed tempor. Fusce vitae volutpat eros. Ut mattis mi nec eros venenatis semper. Etiam venenatis tincidunt enim pellentesque porttitor. Quisque blandit a massa sed fringilla. Proin auctor consequat tincidunt. Phasellus in ligula pretium, luctus massa id, fermentum turpis.</p><p>Nulla aliquam eleifend nunc non gravida. Nullam ac tellus quis sem ullamcorper pulvinar eget vitae nibh. Sed vestibulum enim mauris, nec sollicitudin magna consectetur in. Quisque ut justo risus. Nulla facilisi. Vivamus ornare purus sed ornare venenatis. Suspendisse consectetur, sem eget maximus lobortis, massa nisl rhoncus risus, vel rhoncus ligula libero vitae velit. Duis ut feugiat risus. Suspendisse hendrerit consectetur ex. Donec rutrum, elit eget venenatis pulvinar, ante neque dapibus mauris, sit amet vehicula risus lectus ac ipsum. Aliquam neque dui, convallis ut purus vel, laoreet laoreet turpis. Suspendisse potenti. Pellentesque molestie ut sem sit amet ultricies. In sodales purus quis risus faucibus, id gravida felis dignissim. Vestibulum diam ligula, ornare et justo et, congue commodo odio. Aenean congue placerat purus sit amet pharetra.</p><p>Ut vitae felis vitae mi ultrices porttitor sed sed lectus. Nulla placerat orci sit amet accumsan venenatis. Suspendisse eget nisl vestibulum, posuere est at, viverra nisl. Quisque ut tortor quis velit pellentesque bibendum. Aenean pretium nisl quis imperdiet condimentum. Morbi vel faucibus mauris. Nullam et ipsum feugiat, viverra augue dignissim, ornare nisl. Integer et neque euismod, malesuada lacus malesuada, ultricies lacus. Donec elementum massa non efficitur fermentum.</p><p>Duis ac ipsum bibendum, lacinia lectus quis, ultricies turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin sit amet leo ac risus molestie molestie sed sit amet diam. Mauris convallis tortor sit amet lacinia sodales. Fusce nec ullamcorper risus. Pellentesque dolor erat, egestas ac elementum vitae, consequat eget ante. Maecenas eget dui aliquam, malesuada velit sed, aliquam urna. Fusce luctus, mi et finibus malesuada, ipsum leo lacinia ipsum, vitae sodales erat mauris sit amet ipsum. Nunc posuere magna at ornare rutrum.</p>', '2022-05-01 08:35:26', '2022-05-01 08:35:26', 1, '1_1651404926.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nick', 'nick@nick', NULL, '$2y$10$9IWwHaJlNfLbyGLOC/mNaOd94yFkxusm/Xj34KkdMk/SAZSEauZh2', NULL, '2022-04-30 06:35:18', '2022-04-30 06:35:18'),
(2, 'John', 'john@john', NULL, '$2y$10$SizParRMDTPJHWtQq/ka9Oga03vSHvuwtgMTPY1iaxmPf9l6qPWNS', NULL, '2022-04-30 06:44:10', '2022-04-30 06:44:10'),
(3, 'armands', 'armands@armands', NULL, '$2y$10$MzDYnXkT2211xwKwRU5keuMgZ8vr.F6.Rhk72AJhxUI.TTfXTpOWi', NULL, '2022-04-30 07:25:46', '2022-04-30 07:25:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
