-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 01 2021 г., 09:07
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cubing`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'Non est.', 48, '2021-07-24 09:32:32', '2021-07-24 09:32:32'),
(2, 'Fuga dolore.', 43, '2021-07-24 09:32:32', '2021-07-24 09:32:32'),
(3, 'Porro nesciunt.', 50, '2021-07-24 09:32:32', '2021-07-24 09:32:32'),
(4, 'Dignissimos.', 12, '2021-07-24 09:32:32', '2021-07-24 09:32:32'),
(5, 'Rerum quisquam.', 18, '2021-07-24 09:32:32', '2021-07-24 09:32:32');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(52, '2014_10_12_000000_create_users_table', 1),
(53, '2014_10_12_100000_create_password_resets_table', 1),
(54, '2021_07_21_105005_create_categories_table', 1),
(55, '2021_07_21_105105_create_tags_table', 1),
(56, '2021_07_21_165342_create_posts_table', 1),
(57, '2021_07_23_175358_create_post_tags_table', 1),
(58, '2021_07_24_090000_add_columns_color_to_posts_table', 1),
(59, '2021_07_24_092919_create_slugs_table', 1),
(61, '2021_07_30_162729_add_columns_role_to_users_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_by` int(11) DEFAULT NULL,
  `published` int(11) NOT NULL DEFAULT 1,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `image`, `post_by`, `published`, `category_id`, `created_at`, `updated_at`, `color`) VALUES
(1, 'Dolorum maxime.', 'Ut nam enim id explicabo et dolorum dolorem. Eveniet error maiores maxime ullam voluptas autem.', 'https://www.interfax.ru/ftproot/textphotos/2016/11/10/%D1%81ube700.jpg', NULL, 1, 4, '2021-07-24 09:32:33', '2021-07-24 09:32:33', '#cf1818'),
(7, 'Vol', 'Et exercitationem omnis commodi sit earum iure. Iusto voluptatum qui non rem excepturi quidem. Et fugiat assumenda aspernatur aut voluptatem. Suscipit sed non aut beatae vero tempora.', 'https://biz-brand.ru/wp-content/uploads/2016/11/856325.jpg', NULL, 1, 2, '2021-07-24 09:32:33', '2021-07-28 06:08:09', '#23aa4b'),
(9, 'Aut aut.', 'Maiores unde velit aliquam et omnis qui ut. Doloremque aperiam aut et consectetur quam. Qui quia impedit aliquid optio. Id rem quia ad impedit porro ipsam.', 'https://www.iphones.ru/wp-content/uploads/2019/08/kubik_rubik-000_resize.jpg', NULL, 1, 4, '2021-07-24 09:32:33', '2021-07-24 09:32:33', '#fe7a3f'),
(11, 'Fugit quis.', 'Voluptatem dolore qui tempore porro quisquam et aspernatur. Qui hic sunt et dolores inventore velit excepturi. Aut ex voluptate et dolorem voluptatem.', 'https://cccstore.ru/upload/medialibrary/a13/a13b7a4213ce4e905af8e5e0d178da31.jpg', NULL, 1, 3, '2021-07-24 09:32:33', '2021-07-24 09:32:33', '#23aa4b'),
(12, 'Repudiandae.', 'Ipsam eligendi error ipsa ipsa vitae nam incidunt. Tenetur ea impedit qui nihil qui est qui. Sunt numquam sint id id.', 'https://icdn.lenta.ru/images/2014/05/19/15/20140519154750472/detail_52dfc7b0fcf95a87e0550ea25fbed86e.jpg', NULL, 1, 1, '2021-07-24 09:32:33', '2021-07-24 09:32:33', '#fe7a3f'),
(13, 'Eaque.', 'Explicabo sit et adipisci officiis omnis tempore. Rerum dolorum debitis voluptatum rem sed velit. Eveniet molestiae sint perferendis voluptates consequatur quis quae.', 'https://icdn.lenta.ru/images/2014/05/19/15/20140519154750472/detail_52dfc7b0fcf95a87e0550ea25fbed86e.jpg', NULL, 1, 5, '2021-07-24 09:32:33', '2021-07-24 09:32:33', '#fe7a3f'),
(14, 'Alias ut odit.', 'Maiores commodi qui nemo sit magni sint nihil. Iste doloribus saepe sed nobis ratione et libero. Molestias voluptas numquam nihil delectus. Cupiditate dolor unde deserunt.', 'https://ethnomir.ru/upload/medialibrary/6b1/rubik.jpg', NULL, 1, 5, '2021-07-24 09:32:33', '2021-07-24 09:32:33', '#23aa4b'),
(15, 'Natus ut sequi.', 'Nemo sint ipsa sunt in. Ducimus id non quia. Aut qui expedita vel adipisci. Recusandae ipsum mollitia labore voluptatum at. Aut nam repellat facere dolorem.', 'https://www.iphones.ru/wp-content/uploads/2019/08/kubik_rubik-000_resize.jpg', NULL, 1, 1, '2021-07-24 09:32:33', '2021-07-24 09:32:33', '#ffff93'),
(16, 'Mollitia modi.', 'Assumenda adipisci corrupti est non ut magni natus. Ut quis dolor alias ex veniam. Cupiditate ut dolorum autem adipisci qui nihil aspernatur.', 'https://www.iphones.ru/wp-content/uploads/2019/08/kubik_rubik-000_resize.jpg', NULL, 1, 4, '2021-07-24 09:32:33', '2021-07-24 09:32:33', '#23aa4b'),
(17, 'Rerum ex.', 'Sit et praesentium porro voluptas quidem. Incidunt et id fugit porro. Voluptatum praesentium exercitationem cupiditate a necessitatibus voluptatem.', 'https://images11.popmeh.ru/upload/img_cache/a5d/a5ddac7e136e0c4dca7c2ea3a893cf0f_ce_1936x1032x0x110_cropped_666x444.jpg', NULL, 1, 2, '2021-07-24 09:32:33', '2021-07-24 09:32:33', '#ffff93'),
(18, 'Qui adipisci.', 'Perspiciatis hic libero nihil est eaque. Omnis cupiditate maiores quas. Odio sit beatae rem omnis et quod et. Culpa dignissimos at non aut aliquam tempore debitis ea.', 'https://www.interfax.ru/ftproot/textphotos/2016/11/10/%D1%81ube700.jpg', NULL, 1, 3, '2021-07-24 09:32:33', '2021-07-24 09:32:33', '#cf1818'),
(19, 'Aliquid qui.', 'Laboriosam dicta autem quis dignissimos sequi et molestiae. Illo sapiente natus omnis et voluptas sed. Tenetur occaecati quae corrupti officiis expedita aspernatur et dolor.', 'https://images11.popmeh.ru/upload/img_cache/a5d/a5ddac7e136e0c4dca7c2ea3a893cf0f_ce_1936x1032x0x110_cropped_666x444.jpg', NULL, 1, 2, '2021-07-24 09:32:33', '2021-07-24 09:32:33', '#cf1818'),
(20, 'Architecto.', 'Sint omnis cupiditate beatae et aspernatur. Iure enim sit quia reiciendis vel quia a eum. Eligendi consequuntur non tempore alias.', 'https://icdn.lenta.ru/images/2014/05/19/15/20140519154750472/detail_52dfc7b0fcf95a87e0550ea25fbed86e.jpg', NULL, 1, 3, '2021-07-24 09:32:33', '2021-07-24 09:32:33', '#ffff93'),
(21, 'Omnis dolores.', 'Autem ex quis natus sit ipsam. Eaque officia magni voluptas magnam consequatur doloremque non. Sed quam est architecto odit delectus. Quam possimus in quia voluptatem minima nihil.', 'https://images11.popmeh.ru/upload/img_cache/a5d/a5ddac7e136e0c4dca7c2ea3a893cf0f_ce_1936x1032x0x110_cropped_666x444.jpg', NULL, 1, 3, '2021-07-24 09:32:33', '2021-07-24 09:32:33', '#fe7a3f'),
(22, 'Facilis maxime.', 'Quaerat ut consectetur perspiciatis dolor autem autem minus. Iusto porro nihil dolores in rerum tempore. Velit et porro veniam ullam. Aut commodi ut eaque a ex odio.', 'https://biz-brand.ru/wp-content/uploads/2016/11/856325.jpg', NULL, 1, 4, '2021-07-24 09:32:33', '2021-07-24 09:32:33', '#23aa4b'),
(23, 'Magni dolor ut.', 'Doloremque natus labore iure eveniet qui ipsam odit nobis. Quo maiores voluptas cupiditate dolor labore temporibus non tempora. Facere fugit voluptas quia accusantium.', 'https://images11.popmeh.ru/upload/img_cache/a5d/a5ddac7e136e0c4dca7c2ea3a893cf0f_ce_1936x1032x0x110_cropped_666x444.jpg', NULL, 1, 4, '2021-07-24 09:32:33', '2021-07-24 09:32:33', '#23aa4b'),
(24, 'Fugiat ea ut.', 'Sunt odit et incidunt iure velit. Officiis optio numquam qui earum.', 'https://www.iphones.ru/wp-content/uploads/2019/08/kubik_rubik-000_resize.jpg', NULL, 1, 2, '2021-07-24 09:32:33', '2021-07-24 09:32:33', '#cf1818'),
(25, 'Repellat.', 'Impedit ipsam et veritatis est. Quod consequatur dolore voluptatibus est consectetur qui velit corrupti.', 'https://icdn.lenta.ru/images/2014/05/19/15/20140519154750472/detail_52dfc7b0fcf95a87e0550ea25fbed86e.jpg', NULL, 1, 2, '2021-07-24 09:32:34', '2021-07-24 09:32:34', '#ffff93'),
(26, 'Labore ut qui.', 'Dolore quia dolores exercitationem quaerat repudiandae repellat illum architecto. Doloremque odit et repudiandae ea libero. Necessitatibus esse sit omnis possimus quis sunt odio.', 'https://images11.popmeh.ru/upload/img_cache/a5d/a5ddac7e136e0c4dca7c2ea3a893cf0f_ce_1936x1032x0x110_cropped_666x444.jpg', NULL, 1, 1, '2021-07-24 09:32:34', '2021-07-24 09:32:34', '#fe7a3f'),
(27, 'Et impedit.', 'Beatae necessitatibus voluptatem accusantium ea. Nesciunt quia sed ullam officia facilis a. Minus quo et corrupti fugiat perferendis ex est. Odit eos cum tempora maxime deleniti pariatur odit.', 'https://ethnomir.ru/upload/medialibrary/6b1/rubik.jpg', NULL, 1, 1, '2021-07-24 09:32:34', '2021-07-24 09:32:34', '#ffff93'),
(28, 'Et quibusdam.', 'Dolores placeat omnis beatae cum. Eligendi ex et deleniti porro et nesciunt. Incidunt sed dolore qui aut alias dolor. Nihil dolorum amet est consequatur.', 'https://cccstore.ru/upload/medialibrary/a13/a13b7a4213ce4e905af8e5e0d178da31.jpg', NULL, 1, 3, '2021-07-24 09:32:34', '2021-07-24 09:32:34', '#ffff93'),
(29, 'Ipsa quae est.', 'Aut in quibusdam et numquam dolorum. Et consequatur eos iste fugit inventore nihil. Blanditiis id laudantium nesciunt enim.', 'https://www.iphones.ru/wp-content/uploads/2019/08/kubik_rubik-000_resize.jpg', NULL, 1, 4, '2021-07-24 09:32:34', '2021-07-24 09:32:34', '#23aa4b'),
(30, 'Odio ullam.', 'Quidem ut omnis incidunt voluptates aliquid labore. Consequatur aut quasi ut ipsam. Vitae explicabo sed sed et eius eos.', 'https://biz-brand.ru/wp-content/uploads/2016/11/856325.jpg', NULL, 1, 4, '2021-07-24 09:32:34', '2021-07-24 09:32:34', '#23aa4b'),
(31, 'Dolores et.', 'Consequuntur ipsum enim impedit dolorem sit impedit odio. Sunt rerum cupiditate omnis similique velit. Eos amet et fuga eius alias.', 'https://images11.popmeh.ru/upload/img_cache/a5d/a5ddac7e136e0c4dca7c2ea3a893cf0f_ce_1936x1032x0x110_cropped_666x444.jpg', NULL, 1, 5, '2021-07-24 09:32:34', '2021-07-24 09:32:34', '#cf1818'),
(32, 'Itaque est.', 'Temporibus incidunt consequatur eos id impedit ut consequuntur. Illum dolore animi sunt dicta voluptate sunt ab. Qui distinctio debitis dolorum sed doloribus. Dolorem sit aut et blanditiis.', 'https://www.interfax.ru/ftproot/textphotos/2016/11/10/%D1%81ube700.jpg', NULL, 1, 2, '2021-07-24 09:32:34', '2021-07-24 09:32:34', '#ffff93'),
(33, 'Dolorum.', 'Rerum accusantium et quia qui fuga esse a. Et fuga dolore quas cupiditate voluptas enim sint. Quia atque odit voluptas eveniet in.', 'https://www.iphones.ru/wp-content/uploads/2019/08/kubik_rubik-000_resize.jpg', NULL, 1, 3, '2021-07-24 09:32:34', '2021-07-24 09:32:34', '#cf1818'),
(34, 'In consequatur.', 'Aut odit deleniti nesciunt qui. Asperiores qui eaque ut nobis vel officiis. Alias fugit voluptates consectetur esse. Veniam rerum tempora exercitationem placeat quae.', 'https://biz-brand.ru/wp-content/uploads/2016/11/856325.jpg', NULL, 1, 4, '2021-07-24 09:32:34', '2021-07-24 09:32:34', '#23aa4b'),
(35, 'Hic velit.', 'Doloribus est voluptatibus nulla veritatis quas. Quam nobis debitis laboriosam nulla odit voluptatem. Aut doloribus unde quisquam ea hic minus.', 'https://www.iphones.ru/wp-content/uploads/2019/08/kubik_rubik-000_resize.jpg', NULL, 1, 4, '2021-07-24 09:32:34', '2021-07-24 09:32:34', '#cf1818'),
(36, 'Exercitationem.', 'Odit modi provident quae molestiae beatae deserunt. Ipsa voluptas sed illo at voluptas. Similique nulla magni consequatur est harum fugit. Qui ut pariatur quia mollitia autem fugiat.', 'https://icdn.lenta.ru/images/2014/05/19/15/20140519154750472/detail_52dfc7b0fcf95a87e0550ea25fbed86e.jpg', NULL, 1, 5, '2021-07-24 09:32:34', '2021-07-24 09:32:34', '#fe7a3f'),
(37, 'Distinctio ut.', 'Ratione adipisci quia optio voluptatem id. Laborum ut adipisci soluta ipsa. Et beatae rerum cupiditate voluptas quidem reprehenderit.', 'https://cccstore.ru/upload/medialibrary/a13/a13b7a4213ce4e905af8e5e0d178da31.jpg', NULL, 1, 2, '2021-07-24 09:32:34', '2021-07-24 09:32:34', '#fe7a3f'),
(38, 'Quis tempora.', 'Sed unde doloremque sit cum. Autem beatae ullam beatae consequatur est.', 'https://images11.popmeh.ru/upload/img_cache/a5d/a5ddac7e136e0c4dca7c2ea3a893cf0f_ce_1936x1032x0x110_cropped_666x444.jpg', NULL, 1, 3, '2021-07-24 09:32:34', '2021-07-24 09:32:34', '#23aa4b'),
(40, 'Labore.', 'Voluptatem beatae ipsum totam placeat et. Voluptas et blanditiis eaque aut repellat sed eum aut. Qui vero sint ratione tempora eos et neque. Nemo numquam quidem qui voluptas.', 'https://www.interfax.ru/ftproot/textphotos/2016/11/10/%D1%81ube700.jpg', NULL, 1, 2, '2021-07-24 09:32:34', '2021-07-24 09:32:34', '#fe7a3f'),
(41, 'Delectus amet.', 'Dolorum enim consectetur eos quia aspernatur quos. Repudiandae quo itaque natus praesentium expedita. Hic dolore mollitia porro unde harum.', 'https://www.interfax.ru/ftproot/textphotos/2016/11/10/%D1%81ube700.jpg', NULL, 1, 4, '2021-07-24 09:32:34', '2021-07-24 09:32:34', '#fe7a3f'),
(42, 'Nisi maxime.', 'Voluptas qui molestias dolor est rem deserunt culpa. Incidunt unde sunt labore molestiae tempora sint eaque. Facere nulla eum reprehenderit similique quia porro iusto ut.', 'https://www.interfax.ru/ftproot/textphotos/2016/11/10/%D1%81ube700.jpg', NULL, 1, 3, '2021-07-24 09:32:35', '2021-07-24 09:32:35', '#fe7a3f'),
(43, 'Et libero in.', 'Mollitia maxime nam sed et quia. Aut ea aut quo ex omnis possimus dolorum voluptates.', 'https://images11.popmeh.ru/upload/img_cache/a5d/a5ddac7e136e0c4dca7c2ea3a893cf0f_ce_1936x1032x0x110_cropped_666x444.jpg', NULL, 1, 2, '2021-07-24 09:32:35', '2021-07-24 09:32:35', '#ffff93'),
(44, 'Id unde illo.', 'Est tenetur inventore et sit est quidem et. Ut voluptates nobis est quia harum magni illo cum. Nesciunt voluptas rerum quasi ea. Mollitia harum tempore magni.', 'https://biz-brand.ru/wp-content/uploads/2016/11/856325.jpg', NULL, 1, 3, '2021-07-24 09:32:35', '2021-07-24 09:32:35', '#ffff93'),
(45, 'Minus aut.', 'Nulla sint ea inventore eveniet. Dolores at quidem cupiditate iste ipsam qui beatae. Quia est omnis neque et repudiandae molestiae. Nemo et nihil vitae alias quis quia autem.', 'https://ethnomir.ru/upload/medialibrary/6b1/rubik.jpg', NULL, 1, 2, '2021-07-24 09:32:35', '2021-07-24 09:32:35', '#ffff93'),
(48, 'Nostrum.', 'Consequatur et enim maiores expedita nemo aut. Alias ut ut id aut consequatur. Repellat nulla neque totam quo. Repudiandae dolorem maiores omnis sunt dolore in id corrupti.', 'https://biz-brand.ru/wp-content/uploads/2016/11/856325.jpg', NULL, 1, 3, '2021-07-24 09:32:35', '2021-07-24 09:32:35', '#fe7a3f'),
(49, 'Est dolore.', 'Tempora assumenda repellat occaecati eaque autem fuga culpa. Dolores sit temporibus veritatis sit occaecati id. Tempora deleniti mollitia est. Distinctio libero rem ipsum dolores.', 'https://ethnomir.ru/upload/medialibrary/6b1/rubik.jpg', NULL, 1, 1, '2021-07-24 09:32:35', '2021-07-24 09:32:35', '#cf1818'),
(50, '3ыв', 'Veniam quia quos voluptatem aliquid. Labore soluta placeat cum repudiandae in. Adipisci necessitatibus quod ut saepe a.', 'https://cccstore.ru/upload/medialibrary/a13/a13b7a4213ce4e905af8e5e0d178da31.jpg', NULL, 1, 1, '2021-07-24 09:32:35', '2021-07-29 05:00:05', '#23aa4b'),
(62, 'йцу', 'йцу', 'йцу', NULL, 1, 2, '2021-08-05 08:21:59', '2021-08-05 08:21:59', 'йцу');

-- --------------------------------------------------------

--
-- Структура таблицы `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `slugs`
--

CREATE TABLE `slugs` (
  `id` int(10) UNSIGNED NOT NULL,
  `cyr_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `slugs`
--

INSERT INTO `slugs` (`id`, `cyr_slug`, `lat_slug`, `created_at`, `updated_at`) VALUES
(1, 'Категория', 'index.category', NULL, NULL),
(2, 'Главная', 'index', NULL, NULL),
(3, 'Уроки', 'index.lessons', NULL, NULL),
(4, 'Новости', 'index.news', NULL, NULL),
(5, 'Статья', 'index.show', NULL, NULL),
(6, 'Логин', 'login', NULL, NULL),
(7, 'Регистрация', 'register', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Omnis est quo.', '2021-07-24 09:32:35', '2021-07-24 09:32:35'),
(2, 'Nemo dolorum.', '2021-07-24 09:32:35', '2021-07-24 09:32:35'),
(3, 'Assumenda.', '2021-07-24 09:32:35', '2021-07-24 09:32:35'),
(4, 'Ut voluptas.', '2021-07-24 09:32:35', '2021-07-24 09:32:35'),
(5, 'Dolorum dolor.', '2021-07-24 09:32:35', '2021-07-24 09:32:35'),
(6, 'Iure sunt et.', '2021-07-24 09:32:35', '2021-07-24 09:32:35'),
(7, 'Et animi porro.', '2021-07-24 09:32:35', '2021-07-24 09:32:35'),
(8, 'Provident.', '2021-07-24 09:32:35', '2021-07-24 09:32:35'),
(9, 'Numquam nulla.', '2021-07-24 09:32:35', '2021-07-24 09:32:35'),
(10, 'Est eveniet.', '2021-07-24 09:32:35', '2021-07-24 09:32:35'),
(11, 'Laudantium.', '2021-07-24 09:32:35', '2021-07-24 09:32:35'),
(12, 'Voluptatibus.', '2021-07-24 09:32:35', '2021-07-24 09:32:35'),
(13, 'Hic officia.', '2021-07-24 09:32:35', '2021-07-24 09:32:35'),
(14, 'Sit quas.', '2021-07-24 09:32:35', '2021-07-24 09:32:35'),
(15, 'Et suscipit.', '2021-07-24 09:32:35', '2021-07-24 09:32:35');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(11, 'Danil123', 'lahe@sdfgmn.com', '$2y$10$dMBGy0QHNLoY5FcQEVKbwOGXITlQdNC/gWzhlK7FWGYKOQJrLJm6e', NULL, '2021-08-08 06:28:00', '2021-08-08 06:28:00', 'user'),
(12, 'leha', 'leha@gmail.com', '$2y$10$iQHnAZeE7qkbCbMK07yLweBfuVIsmJIfRoEnIcX5lkALqNqwIvv2a', NULL, '2021-08-08 06:33:39', '2021-08-09 03:07:32', 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tags_post_id_foreign` (`post_id`),
  ADD KEY `post_tags_tag_id_foreign` (`tag_id`);

--
-- Индексы таблицы `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slugs_cyr_slug_unique` (`cyr_slug`),
  ADD UNIQUE KEY `slugs_lat_slug_unique` (`lat_slug`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT для таблицы `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ограничения внешнего ключа таблицы `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `tags` (`id`),
  ADD CONSTRAINT `post_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `posts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
