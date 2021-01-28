-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2021 at 02:04 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2021_laravel8api`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `created_at`, `updated_at`) VALUES
(1, 'Wordpress Theme Development', 'Md Murad Hosen', NULL, NULL),
(2, 'Mastering Laravel', 'Esrat Jahan Shawon', NULL, NULL);

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
(5, '2020_09_23_214845_create_books_table', 1),
(6, '2020_11_19_040822_create_posts_table', 1);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'authToken', '2020db34fa79467fb378383279b950da63c77d455a517274c52642fc4613db80', '[\"*\"]', NULL, '2021-01-28 01:59:41', '2021-01-28 01:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Pariatur qui et repellendus.', 'Sapiente modi esse assumenda eum voluptatem. Inventore neque deserunt officiis quasi dolor. Dignissimos quisquam et voluptatem qui.', '2021-01-28 01:11:22', '2021-01-28 01:11:22'),
(2, 'Quis tempora id saepe fugiat corrupti occaecati.', 'Numquam pariatur saepe excepturi quaerat. Sequi laboriosam aperiam atque itaque reprehenderit tempore. Occaecati quibusdam blanditiis aperiam. Numquam doloremque consectetur beatae.', '2021-01-28 01:11:22', '2021-01-28 01:11:22'),
(3, 'Modi dolore dolorem dicta sint harum ea dolore.', 'Illo eius repudiandae beatae odit molestias aut. In suscipit explicabo quia vero. Architecto molestias blanditiis deserunt et omnis corporis eveniet. Occaecati ut sit molestiae eligendi ducimus minima reiciendis. Molestiae saepe sunt ullam qui velit quam.', '2021-01-28 01:11:22', '2021-01-28 01:11:22'),
(4, 'Velit cum maxime aut delectus aliquam.', 'Eos ut eum animi sunt quas quis doloribus. Autem vel est sapiente alias natus reiciendis et. Assumenda natus temporibus distinctio incidunt omnis.', '2021-01-28 01:11:22', '2021-01-28 01:11:22'),
(5, 'Aut omnis culpa commodi voluptas.', 'Dicta velit quas rerum aliquid voluptates sunt voluptatibus labore. Minima et repellendus mollitia dolorem sunt quia. Culpa eum qui voluptates a consequatur optio assumenda. Consequatur assumenda voluptas facilis fugit ad. Odit fugit maiores a ut fuga laudantium magnam at. In sint vel vero.', '2021-01-28 01:11:22', '2021-01-28 01:11:22'),
(6, 'Ab consequatur mollitia voluptatem quis nam.', 'Vel maxime voluptas adipisci. Magni expedita id quis unde nesciunt. Dolor sunt saepe ex recusandae. Laborum totam reprehenderit incidunt laboriosam. Recusandae doloremque qui reiciendis impedit.', '2021-01-28 01:11:22', '2021-01-28 01:11:22'),
(7, 'Ratione rerum dolore est neque et ut vitae.', 'Animi eos aut nihil id repellendus in. Corporis quia commodi rerum eligendi quia numquam quia. Est atque aperiam rem rerum ut ipsum. Reiciendis et ad odio animi rerum. Aut doloremque ut et dolorem animi quod. Harum molestiae magnam quam. Ullam non rerum recusandae quis.', '2021-01-28 01:11:22', '2021-01-28 01:11:22'),
(8, 'Quod quam reiciendis dolores eligendi nam.', 'Quod quia reiciendis voluptas consequatur deserunt consectetur. Sapiente et beatae nihil nesciunt architecto. Recusandae voluptates in quis corrupti expedita. Ut impedit odio quibusdam eaque ut deleniti. Qui consectetur a quam ut laboriosam. Aut sint non sed sed eos eaque impedit amet.', '2021-01-28 01:11:22', '2021-01-28 01:11:22'),
(9, 'Rerum doloribus repellendus ipsa sapiente.', 'Ex et amet impedit reiciendis enim eum tempore. Reprehenderit exercitationem ea assumenda tempora commodi dolor. Et unde inventore culpa qui. Quod est dignissimos repellendus tempore. Cupiditate aut dignissimos iste ratione sit.', '2021-01-28 01:11:22', '2021-01-28 01:11:22'),
(10, 'Ad autem placeat pariatur qui.', 'Eligendi est et unde sed omnis dolores. Quia voluptas ipsam assumenda corporis. Ab sit quo quos quia. Fuga totam magni temporibus ut. Deserunt nulla et incidunt non. Eius ut dolores voluptatem et. Aut atque qui omnis aut commodi sunt.', '2021-01-28 01:11:22', '2021-01-28 01:11:22'),
(11, 'Tenetur magni voluptatibus iste voluptate non.', 'Quas inventore corporis quidem est. Reiciendis quas tenetur nihil. Dolores asperiores illo aliquid esse velit at. Sit excepturi harum ex veniam aut molestias et.', '2021-01-28 01:11:22', '2021-01-28 01:11:22'),
(12, 'Et natus hic sequi et consequatur mollitia.', 'Molestiae veritatis dolores vero repudiandae officiis. Et odit perferendis non. Blanditiis consequuntur earum voluptatem similique. Et autem quod dolores reprehenderit et vitae rerum et.', '2021-01-28 01:11:22', '2021-01-28 01:11:22'),
(13, 'Quod accusantium eligendi qui aperiam.', 'Et aut reprehenderit quo aut consequatur sint. Quisquam laborum sint animi deleniti. Omnis odit non hic fuga. Eos explicabo neque quasi eveniet. Voluptas ut accusamus non qui. Aut incidunt a nihil iste consequatur. Ut consequatur repellat eos ab ut.', '2021-01-28 01:11:22', '2021-01-28 01:11:22'),
(14, 'Ut quisquam voluptatem et consequuntur.', 'Eos aut illum qui sit molestiae accusantium qui. Voluptas quasi nostrum iste laudantium. Facere repudiandae explicabo eum dolorum id. Voluptate eum suscipit excepturi. Accusantium possimus qui temporibus rerum distinctio. Deserunt in quos sed labore non est non.', '2021-01-28 01:11:22', '2021-01-28 01:11:22'),
(15, 'Omnis aspernatur aut consectetur maiores.', 'Animi aliquid est ullam modi. Explicabo magni rerum sit maiores. Quisquam fuga quaerat dolore ipsam. Quibusdam dignissimos autem in non qui provident consequatur. Beatae repellendus iure qui odio fugiat est modi. Omnis alias aliquam doloremque ex ad. Sit fuga sed excepturi facere et iusto.', '2021-01-28 01:11:22', '2021-01-28 01:11:22'),
(16, 'Quisquam ex libero repudiandae ratione pariatur.', 'Ea et ut placeat repudiandae laudantium iusto est. A voluptatum sed quo quisquam inventore. Excepturi aut ut ipsum atque laboriosam possimus est. Est quia vero molestiae et.', '2021-01-28 01:11:22', '2021-01-28 01:11:22'),
(17, 'Velit eos reprehenderit ut.', 'Quasi quasi iusto voluptatem adipisci suscipit nihil. Non modi nostrum necessitatibus adipisci et est repellendus. Rerum sed odio corrupti aut dolorem ducimus. Soluta totam fuga dolor porro hic tempora.', '2021-01-28 01:11:22', '2021-01-28 01:11:22'),
(18, 'Quod eligendi qui ut dolore.', 'Culpa alias hic et quia temporibus. Et iusto provident eum perspiciatis a autem enim cum. Voluptate aut consectetur sed voluptas aut architecto unde. Est ut fugiat qui voluptatum quod voluptates quia. Est sint consequatur voluptas sint consequatur qui.', '2021-01-28 01:11:22', '2021-01-28 01:11:22'),
(19, 'Illum quae fugiat et adipisci esse ut sed.', 'Error eum veniam non qui ipsam magnam omnis odit. Laudantium dolorem veritatis voluptas maxime quod. Suscipit a repudiandae est nobis.', '2021-01-28 01:11:22', '2021-01-28 01:11:22'),
(20, 'Provident et ipsum non aut error aliquam.', 'Rerum debitis rerum et quia reiciendis. Dolores repellendus asperiores quod beatae sunt pariatur. Id harum libero odio. Error corporis consequatur omnis eveniet. Qui qui accusantium eius id a animi.', '2021-01-28 01:11:22', '2021-01-28 01:11:22');

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
(1, 'Md Murad Hosen', 'muradbd.info@gmail.com', NULL, '$2y$10$4AkzyGRVUnWDS921qF/iVeUQWYTkzGtQAS42YucBwHnbnCGFx7qS2', NULL, '2021-01-28 01:59:25', '2021-01-28 01:59:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
