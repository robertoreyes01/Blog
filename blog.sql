-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 29-05-2025 a las 00:24:35
-- Versión del servidor: 11.3.2-MariaDB
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_16_002909_create_posts_table', 1),
(5, '2025_01_16_004909_add_avatar_to_users_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `category` varchar(255) NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `category`, `published_at`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'accusamus nostrum tempora maxime.', 'dolorem-inventore-odio-exercitationem-quidem-voluptates-aliquid-aut-aperiam', 'Ut nihil qui et dolor. Eum repellendus et est porro quia blanditiis. Maiores error quisquam sed.', 'error', '2023-07-16 06:10:33', 0, '2025-02-05 05:51:17', '2025-02-05 05:51:17'),
(3, 'dolorem autem ab praesentium omnis quia quaerat.', 'eveniet-fugiat-et-expedita-tempora-deserunt', 'Qui aut dolorem quia saepe incidunt occaecati. Sed tempora sed optio non eaque esse et. Nihil velit et a et ut voluptas sit tenetur. Iusto quae enim veniam eveniet ipsa nemo qui.', 'molestias', '1993-10-30 09:22:52', 0, '2025-02-05 05:51:17', '2025-02-05 05:51:17'),
(4, 'adipisci pariatur dolorum omnis voluptate.', 'cupiditate-debitis-voluptates-mollitia-repudiandae-odit', 'Officiis voluptatem eveniet hic neque perspiciatis officia itaque. In esse laudantium quia optio quos excepturi facilis. Animi vel officiis consequatur qui doloribus illum.', 'rerum', '2018-10-14 01:57:41', 0, '2025-02-05 05:51:17', '2025-02-05 05:51:17'),
(5, 'adipisci magnam accusamus voluptatum corrupti.', 'non-id-sint-consequatur-id', 'Provident sapiente illum sed placeat velit quaerat error est. Id deleniti libero ad aut optio est quibusdam. Et quas asperiores quibusdam aut.', 'ipsam', '1998-03-05 03:15:50', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(6, 'dolore repellat expedita beatae minima quis non hic.', 'minus-est-dolorem-minima-fuga-repudiandae-ullam-at', 'Illo et recusandae ea distinctio maiores. Et quas quia doloremque reprehenderit molestiae doloribus. Reiciendis et veritatis necessitatibus maiores quasi. Fuga et atque ut sint earum occaecati velit.', 'nulla', '2012-03-18 08:23:38', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(7, 'inventore vel voluptatem maiores totam tempora.', 'itaque-sunt-dolorem-voluptate-sint', 'Id animi repudiandae quibusdam ut eligendi. Molestias autem eos harum eius. Nihil saepe animi veniam sapiente praesentium. Possimus consequuntur a provident rerum aperiam. Ea nostrum temporibus nisi rerum.', 'eligendi', '1985-09-22 02:04:32', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(8, 'repellendus velit veniam consectetur voluptas provident.', 'odio-sit-iste-necessitatibus-vitae-dolor', 'Magnam dicta quaerat velit. Eveniet et laboriosam laborum beatae reprehenderit quia iure occaecati. Fugiat incidunt dignissimos quia blanditiis voluptas consequatur magni. Nihil enim impedit voluptatem.', 'eum', '1978-08-01 19:36:46', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(9, 'ea ducimus et praesentium eos veritatis minima laborum facilis.', 'dolor-omnis-amet-nisi-quam-expedita', 'Nihil asperiores ut quod sed cupiditate nobis neque. Alias vel nulla porro adipisci. Inventore aspernatur est quam animi. Aut voluptas quaerat iure et sed sed dignissimos ipsam.', 'eaque', '1993-05-28 09:33:09', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(10, 'possimus placeat ut error voluptatem incidunt.', 'voluptas-quo-molestias-et-eos-officia-omnis', 'Vel quae itaque molestiae iusto reiciendis sint. Nobis ad vitae autem laudantium rem. Illo qui facilis vero totam tempore provident.', 'est', '1976-06-15 10:09:35', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(11, 'minima ad illum cupiditate dicta eos.', 'saepe-ipsa-distinctio-voluptatem-et-ullam-harum', 'Exercitationem velit quia enim molestiae facilis. Atque consequatur exercitationem qui nobis sit et quae.', 'rerum', '1975-07-27 11:29:15', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(12, 'rerum corrupti fugit at omnis veritatis rerum.', 'natus-et-unde-voluptates-velit-dolores', 'Laboriosam qui sint nesciunt molestiae optio. Quae et numquam et qui. Ex consequuntur sed qui dolorum.', 'perferendis', '1987-08-08 04:41:43', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(13, 'aperiam sunt corrupti soluta nihil.', 'magnam-sit-molestiae-sit-sed', 'Ducimus quod voluptate earum dicta fugiat repudiandae omnis laborum. Vero dolorem dolorem iste saepe recusandae explicabo neque. Recusandae et et laborum omnis quis nesciunt. Assumenda corporis eos et placeat.', 'neque', '1997-09-08 01:29:57', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(14, 'voluptatibus voluptatum magni omnis voluptas impedit.', 'quos-nemo-asperiores-magni-officiis-ratione-laudantium', 'Eligendi dolore voluptatem dolorem sit. Qui ea quia quibusdam sapiente debitis amet modi. Qui placeat libero sapiente enim. Voluptas odit sunt enim sed eum.', 'quos', '1994-02-14 07:56:14', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(15, 'veniam eligendi ullam neque velit quia laboriosam molestias deserunt.', 'molestiae-nobis-ullam-assumenda-quas-ut-consequuntur', 'In dignissimos pariatur illo et ipsa eos nemo. Exercitationem deserunt accusamus adipisci quaerat. Nobis asperiores aut fugiat nostrum tenetur quas ipsa.', 'sit', '1977-03-27 19:07:45', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(16, 'aut consectetur nesciunt ratione amet.', 'expedita-quis-et-distinctio-at-assumenda-quibusdam-molestiae', 'Libero consequatur voluptatibus rerum. Laboriosam at voluptatum rerum assumenda nam. In voluptatem corrupti quis fugiat nihil dolore.', 'dolore', '2015-03-06 08:37:31', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(17, 'deserunt eligendi quaerat error perspiciatis repellat reiciendis.', 'consequuntur-vero-sint-qui-nam-vero-perspiciatis', 'Corporis laboriosam adipisci qui beatae itaque. Iure in laborum et occaecati eum numquam. Consequuntur iste eum deserunt et aliquid asperiores. Ullam facilis perspiciatis quae id ipsa alias.', 'ipsum', '2014-12-16 12:52:04', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(18, 'error eum sit est delectus natus inventore voluptatem itaque.', 'ducimus-qui-autem-officiis-qui-velit-in-aperiam', 'Dolorum laborum quo sit sint fuga veniam. Qui asperiores est est. A rem quis et. Sed occaecati explicabo dignissimos sed eius rerum et.', 'eius', '1983-01-27 06:02:30', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(19, 'eos ut quo sit ea.', 'quia-sequi-vel-porro-rerum', 'Sequi sunt repellat fugiat vitae inventore autem cupiditate. Adipisci sed et ut totam perspiciatis qui culpa. Voluptatem similique voluptate velit quia. Magni eum doloremque est in eligendi harum nesciunt.', 'quia', '1996-10-19 16:49:44', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(20, 'voluptatem modi suscipit facilis nemo.', 'repudiandae-facilis-ut-aperiam-aspernatur-possimus-nam', 'Et deserunt ut deserunt facere laboriosam dolor inventore. Sint minus necessitatibus aut cumque maxime vitae est. Vel et sit explicabo aspernatur sed dolor. Aut aut aperiam laborum rerum neque impedit perferendis.', 'distinctio', '1973-09-22 18:23:27', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(21, 'repudiandae laboriosam aliquam voluptatum labore ut aut amet.', 'qui-vel-est-qui-deleniti-dignissimos-minima-dolore', 'Aut a delectus voluptas alias libero. Et eos eum ex fuga non voluptatem. Praesentium nobis a molestias mollitia. Dicta sit omnis laboriosam quos laboriosam quasi.', 'et', '2012-05-02 17:03:45', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(22, 'corrupti non voluptatem aut neque molestias.', 'quaerat-sunt-aliquam-corporis-nemo-ea-ex-veritatis', 'Et nobis nihil asperiores minus esse inventore quod in. Excepturi sit sapiente culpa qui dolor dolorum. Illum maxime accusamus et. Eos officia quo earum. Porro ratione consectetur aut aspernatur doloribus.', 'facere', '1990-12-12 23:39:04', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(23, 'voluptate omnis quaerat sapiente praesentium distinctio voluptas.', 'sequi-aut-laborum-eum-esse-error', 'Voluptatem assumenda cumque atque natus. Debitis ut reiciendis cumque adipisci est aperiam aut. Molestias illo pariatur repellat quasi quae dolores voluptatem. Odio et sint aut id. Est quod perspiciatis temporibus deleniti inventore et a.', 'veniam', '2022-11-24 02:46:35', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(24, 'accusamus voluptatem dolores tenetur est fugiat id voluptatem enim.', 'velit-molestiae-iste-aliquam-repellat-quia', 'Labore delectus eos tenetur sit minima et mollitia fuga. Laboriosam et consequuntur assumenda et.', 'dolores', '2006-04-21 21:41:10', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(25, 'est temporibus sed dolorem eligendi pariatur ut.', 'doloribus-et-quod-ipsa-atque', 'Officia eveniet quidem temporibus autem. Et in eum a qui dolorem. Deserunt culpa nostrum dolor sed.', 'doloremque', '1982-05-14 22:26:12', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(26, 'et dicta recusandae quaerat iste.', 'eaque-qui-quia-deserunt', 'Totam numquam voluptate ut veniam rerum quisquam. Veniam mollitia commodi architecto autem provident ex nisi. Perspiciatis distinctio sapiente et iure et et voluptatibus.', 'recusandae', '2022-07-18 02:02:08', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(27, 'molestiae sed rerum ut corporis officiis assumenda.', 'nihil-similique-cum-et-et', 'Sapiente sint veritatis quo consequatur soluta consectetur. Ducimus et impedit sunt sit nobis blanditiis. Id mollitia necessitatibus illo iure autem labore laborum. Facere quidem quia dolorem omnis pariatur aut repellat. Commodi quia libero mollitia odio magni.', 'quam', '1991-04-28 05:44:03', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(28, 'qui consequatur deleniti temporibus et quia sed non.', 'et-et-distinctio-saepe-odio-qui-voluptas-tempore', 'Eaque qui eum omnis rerum nostrum quasi doloremque. Voluptatem delectus quaerat voluptate.', 'provident', '2010-06-30 19:38:11', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(29, 'expedita quia doloribus eum aut.', 'impedit-rerum-ipsa-ut-mollitia-ut-numquam-hic', 'Quisquam doloribus saepe et facilis consequatur rem. Ea in quaerat rem distinctio ratione sunt cum. Impedit neque aperiam occaecati perspiciatis saepe illo.', 'voluptatem', '1972-02-14 06:34:37', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(30, 'nobis et molestiae earum ea.', 'provident-sapiente-ducimus-eaque-tempora-minima-ipsum-illo-consequatur', 'Deleniti ab nobis sed sit atque vitae qui sint. Quo alias aspernatur quidem assumenda temporibus omnis ea. Adipisci voluptatibus aliquid et eligendi dolorem et.', 'ut', '1977-11-19 11:30:48', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(31, 'laborum dolorem quibusdam aperiam voluptas et aut consequatur.', 'est-laudantium-nihil-quo-consequatur-dolores', 'Voluptates minima labore ea consectetur aliquid sequi ad dolores. Illum deleniti maiores laudantium veniam. Consequatur dolorem quia sed saepe dolorum sint nisi autem. Maxime quae est fugit debitis qui.', 'totam', '2020-01-08 18:15:04', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(32, 'impedit aut dicta ducimus dolorum.', 'rerum-rerum-natus-voluptatum-vel', 'Omnis inventore et necessitatibus ut a. Quam necessitatibus et quia quo ut sequi. Est optio unde molestias.', 'eos', '1972-09-09 05:03:58', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(33, 'nostrum at ut dolor iusto cumque.', 'neque-qui-est-quia-dignissimos-voluptates-deserunt-quibusdam-aut', 'Odit doloribus autem unde aut. Et quia sit atque voluptatem. Aliquam magni dolor asperiores quas sit rerum expedita.', 'quae', '2009-04-08 10:01:51', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(34, 'reprehenderit iure veniam rerum rerum deserunt esse quos.', 'quisquam-omnis-quae-est-necessitatibus-cupiditate-mollitia-ad', 'Tempore alias qui sequi consequuntur reprehenderit ut. Eaque quidem sint dolorum. Laborum odit sunt corporis impedit rerum sint exercitationem sit. Iure sit facere ab quaerat quo quidem.', 'ut', '2021-04-18 10:09:42', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(35, 'laboriosam officia nam est itaque temporibus optio.', 'quidem-nam-omnis-dolor-sit-alias-laboriosam', 'Velit rerum et dolores tenetur molestiae et eligendi. Doloribus minus et eos et corporis. Soluta at ex non quidem illum. Saepe hic fuga provident deserunt odio optio vel.', 'magni', '1991-11-09 20:03:10', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(36, 'omnis porro sequi quia qui perspiciatis.', 'et-perferendis-modi-non-magnam-quia-distinctio-eos', 'Veniam sapiente aut voluptatibus reprehenderit. Porro temporibus eius ducimus consequatur dolore. Et ut itaque sequi aut quam.', 'facilis', '1996-06-25 04:03:51', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(37, 'ad atque voluptatibus velit consequatur doloremque.', 'quia-neque-aperiam-quasi-id-dolorem', 'Occaecati qui labore commodi aut error velit. Et consequatur praesentium at vel.', 'consequatur', '1985-11-01 12:10:04', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(38, 'quaerat itaque vitae suscipit illo.', 'dolore-sit-odit-distinctio-ullam-voluptas-eum', 'Quasi necessitatibus eaque libero. Facilis voluptate laborum qui quo ullam. Ipsa consequuntur voluptas cupiditate voluptas molestiae.', 'optio', '1980-06-10 05:53:22', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(39, 'corporis qui consequatur ut itaque et consectetur dolores in.', 'accusantium-voluptatem-numquam-sunt-doloremque-dolorem-sit-odit', 'Odit quis optio perspiciatis voluptates deleniti. Expedita architecto quos sint animi rem similique nihil. Aut tempora veniam dolores ipsum. Rerum provident praesentium nam autem voluptatum ratione. Doloribus dolor amet voluptas ab.', 'fugit', '1976-07-17 04:14:08', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(40, 'dignissimos ut est et dignissimos.', 'dolore-voluptatem-occaecati-sit-eveniet', 'Quos qui placeat nihil dolor commodi. Possimus sed quasi modi necessitatibus dolores. Aut illum blanditiis eius sint. Architecto occaecati minus est.', 'sit', '1982-05-30 07:51:36', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(41, 'aut voluptates mollitia voluptas odit magnam.', 'saepe-distinctio-voluptas-rerum-autem-molestias', 'Vel perspiciatis nam perspiciatis molestias rem. Rem commodi ea harum ipsa dolorem perferendis. Incidunt omnis et ut iure minima maxime commodi.', 'nihil', '1978-01-17 02:51:05', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(42, 'omnis culpa sint earum non facere.', 'reprehenderit-laboriosam-dolorum-qui-ducimus-ut-laudantium', 'Soluta illum velit officiis rem consequuntur ab. Labore rerum quidem repellendus dolor nisi.', 'quasi', '2013-02-25 02:15:42', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(43, 'sed architecto et enim.', 'necessitatibus-inventore-ad-dolorem-mollitia', 'Est ut voluptas beatae consequatur exercitationem itaque. Sint corporis voluptas deserunt ut aut.', 'mollitia', '2020-09-17 04:39:02', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(44, 'ex aliquam non aliquid vero occaecati sunt omnis dolores.', 'et-ex-omnis-qui-ab-aut-omnis', 'Ea porro ratione earum tempore. Ut numquam rem porro maxime. Facere possimus harum qui qui est. Aliquid consequatur quia nemo sint libero ullam est labore.', 'sunt', '2015-04-15 10:44:39', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(45, 'excepturi deserunt fugit expedita omnis tempore.', 'sequi-accusantium-similique-sint', 'Voluptas incidunt aut culpa provident nihil possimus beatae. Soluta molestiae fugit repudiandae qui natus. Aliquam molestiae nulla quaerat velit ut. Et pariatur sint quod et magnam.', 'iusto', '1981-08-08 15:21:39', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(46, 'eum sunt sed dolore sed maxime.', 'omnis-fuga-molestiae-magni-quam-aut-vitae-earum', 'Alias delectus soluta est rerum cumque doloremque. Et vitae quis et autem molestiae. Quibusdam aperiam cumque ullam.', 'commodi', '1986-06-01 17:57:28', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(47, 'iusto quia totam incidunt sint quasi est consequatur.', 'sint-illo-et-quis-ea-accusantium-ut-qui-officiis', 'Ut odio quos reiciendis ad. Culpa nesciunt et facere quasi voluptatem.', 'quaerat', '1990-05-30 19:14:59', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(48, 'alias ut labore cum iste et totam expedita.', 'at-dolore-eveniet-magni-dolorem-impedit-quis', 'Nisi quae et blanditiis. Occaecati sed esse incidunt sunt animi nisi maxime. Eius tenetur quo sit consequuntur dolores impedit.', 'qui', '1994-09-27 15:45:12', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(49, 'aut aspernatur mollitia expedita nostrum reiciendis.', 'maiores-facilis-cumque-et-aut', 'Aut voluptas amet voluptas molestiae tempore minima illum. Eos et quam atque dolor aut et in dolore. Ipsam iste error voluptatem. Ipsum voluptas quo a magnam qui harum vel. Nihil tempora incidunt molestias eligendi quos porro amet non.', 'voluptatibus', '2005-07-01 05:45:16', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(50, 'nam nisi numquam aliquid.', 'et-quae-sunt-qui-quae', 'Ut rerum necessitatibus fugit. Impedit quas est distinctio molestiae adipisci rerum totam. Asperiores non exercitationem doloremque. Et nihil odit perferendis totam minus aliquam.', 'quas', '2002-04-14 01:21:35', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(51, 'nemo tenetur officia a esse.', 'neque-aut-autem-dolorem-tempore', 'Blanditiis labore laudantium qui ipsam sequi. Et at vel ut officia. Est ut quia non dolor numquam incidunt. Earum dolores tenetur temporibus.', 'aut', '1982-10-06 18:55:21', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(52, 'non ipsum corporis similique officiis voluptatem non quod rerum.', 'consectetur-cum-blanditiis-nostrum-sunt', 'Facilis earum a enim ut debitis praesentium eligendi. Consectetur dolorem eius velit magni sequi quod accusamus. Id eveniet dolorem natus ut ullam. Exercitationem repudiandae repudiandae sit earum sint corporis. Modi voluptatem magnam et rem.', 'provident', '1971-06-04 22:16:44', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(53, 'consequatur exercitationem beatae omnis.', 'accusantium-et-quaerat-perspiciatis-ut-ut-ea', 'Velit quasi id perspiciatis odit impedit illum. Doloribus sunt corrupti nemo totam est. Voluptatum ut sed numquam facere in ratione. Eveniet praesentium tenetur similique a cumque.', 'vel', '1988-12-09 00:29:38', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(54, 'adipisci et explicabo qui libero repudiandae.', 'quisquam-sint-aut-atque-deserunt-non-excepturi', 'Illo et aliquid voluptate a esse ullam hic. Alias vel consequatur architecto exercitationem voluptatem asperiores. Dolores blanditiis quidem nobis ut dolorem. Consequuntur rem deserunt quam architecto tenetur.', 'sapiente', '1987-11-29 00:02:34', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(55, 'ducimus optio optio ut eveniet quae.', 'officia-eius-aut-qui-in-quidem-odit', 'Libero hic est molestias hic qui in assumenda. Animi ut tempora deleniti voluptas pariatur tenetur. Est temporibus qui laborum omnis fugiat cumque vero.', 'consectetur', '1979-04-23 13:44:11', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(56, 'porro harum inventore nulla neque.', 'ratione-delectus-autem-aut-voluptatem', 'Nostrum fuga est eius aperiam dicta quo et. Unde quo cupiditate quas qui. Modi explicabo nihil voluptas sit dolore et enim. Eaque voluptatem neque omnis a ex.', 'omnis', '1981-08-05 18:57:50', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(57, 'ut autem excepturi rem nam velit pariatur.', 'quis-ipsum-non-illo', 'Ducimus vitae dolorem non aperiam magni. Consectetur aspernatur officiis quidem numquam eveniet vero. Ad aut mollitia nesciunt perferendis vitae. Assumenda nulla aliquid dolores ex quisquam qui debitis.', 'cum', '2012-05-24 06:45:02', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(58, 'ut dolore autem reprehenderit eveniet.', 'placeat-possimus-ipsum-itaque', 'Culpa eligendi quam cum porro alias omnis. Quos nam maiores recusandae et aliquid sed. Omnis atque vitae neque qui est quo. Natus illo voluptates aliquid amet.', 'qui', '1972-06-07 17:12:08', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(59, 'iure ut est repellendus ratione est.', 'cupiditate-eum-doloremque-ipsa', 'Dolor repudiandae ad vel laborum. Quisquam cum vel fugit. Quam corporis ut quisquam nulla dolore. Amet beatae labore saepe.', 'quod', '1994-11-05 02:02:46', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(60, 'porro sunt qui eum nisi.', 'minima-cupiditate-totam-consequuntur-deserunt', 'Aliquid dolores amet quia deserunt totam. Quos asperiores est distinctio iste quo et fuga. Molestiae sint ipsa voluptas voluptatem.', 'culpa', '1994-10-03 22:37:57', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(61, 'officiis ut voluptatem enim placeat nostrum.', 'est-non-error-consequatur', 'Sapiente qui mollitia totam tempore aperiam blanditiis. Velit dignissimos repellendus accusantium consequatur voluptas. Dolorem voluptatum laudantium commodi dolores sit.', 'minima', '2000-05-26 05:18:51', 0, '2025-02-05 05:51:18', '2025-02-05 05:51:18'),
(62, 'magni debitis et perferendis repudiandae iusto.', 'eaque-tenetur-quas-perspiciatis-deserunt-pariatur-mollitia', 'Quaerat quia qui et autem non hic. A asperiores quae voluptate iusto beatae perferendis laudantium deserunt. Molestiae aperiam dolor voluptatum est praesentium recusandae.', 'labore', '2019-09-23 06:26:35', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(63, 'voluptate est ea et qui earum maxime asperiores quod.', 'accusamus-voluptas-voluptatem-possimus', 'Minus fugit sint aliquam consectetur velit dolor atque et. Consequuntur veniam laborum impedit consequatur. Enim quia eos et excepturi nemo esse.', 'ipsum', '2009-07-21 14:59:21', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(64, 'modi consequatur quo reiciendis placeat.', 'qui-sunt-distinctio-excepturi-ab-dolorem-aut-totam-ut', 'Eos laboriosam voluptatem nihil sunt. A similique nam consequuntur explicabo tempora. Eligendi occaecati voluptas officiis harum.', 'soluta', '1972-07-09 14:36:07', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(65, 'sed dolor saepe eligendi dignissimos et expedita.', 'accusamus-delectus-non-cum-et-incidunt', 'Eos cum omnis ducimus dolorem doloremque eos. Eum dolorem ab nisi ut voluptas laboriosam. Nam totam quam voluptatem.', 'dolor', '1992-02-03 10:24:44', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(66, 'omnis hic ipsam placeat sequi eum aut odio.', 'fuga-non-distinctio-dolorem-labore-est-consequuntur-quod', 'Aut modi ex voluptatibus repellendus in. Rerum et et et at. Quasi veniam tempora nostrum doloremque id.', 'praesentium', '2016-05-29 11:31:36', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(67, 'fuga nihil necessitatibus et hic iusto dolores assumenda.', 'a-et-neque-enim-ea-voluptatem-omnis-tempore', 'Eaque accusamus provident voluptatibus nulla. Qui nam quam voluptas suscipit ad id eaque illo. Amet provident quasi facere corrupti sunt.', 'beatae', '2000-04-23 00:32:27', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(68, 'explicabo tempora tempora ullam ut ad architecto ea.', 'inventore-ad-veniam-vel-est', 'Quasi est nisi veritatis aut eligendi. Eum id aut quo nam culpa. Reiciendis tempore dolores rerum nihil blanditiis.', 'repudiandae', '2016-10-07 22:59:51', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(69, 'dolor reprehenderit velit non quas doloremque blanditiis magni.', 'et-et-ea-rem-et-sequi-et', 'Quaerat voluptates officiis quis saepe velit quam. Voluptatum eos rem qui quo quia nam ex. Ut consequatur in expedita consectetur repellendus.', 'voluptate', '1975-02-17 06:31:42', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(70, 'dolor nemo blanditiis ut assumenda facere iste.', 'atque-exercitationem-suscipit-culpa-ex-veritatis-ut', 'Aut voluptas vel quam repellat. Magni dolorum ab voluptatem et enim. Modi omnis corrupti voluptas dolorem. Ullam praesentium tempore illo corrupti laboriosam quia quo qui.', 'quis', '1980-07-04 18:11:51', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(71, 'provident quibusdam voluptas quidem corrupti velit magnam eos.', 'quia-natus-quia-et-quam', 'Quia ratione aliquam atque sint ab ut voluptatibus. Et dolorum illo est quia. Sunt omnis inventore nihil exercitationem provident rerum mollitia. Corrupti earum harum esse delectus rerum libero doloribus iusto.', 'dolores', '1989-03-20 19:35:39', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(72, 'aut sit ipsum omnis at excepturi cum.', 'dolorem-rerum-nobis-sint-repudiandae-autem-aut', 'Enim provident ut qui labore. Occaecati culpa quos dolore non perspiciatis quis.', 'quisquam', '1985-04-30 19:01:33', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(73, 'alias autem occaecati commodi labore corporis repudiandae inventore vel.', 'rerum-ut-repudiandae-dolorum-tempore-quia-non-voluptate-voluptas', 'Unde fugit nobis et maxime. Itaque ex qui at neque voluptatum sit maxime. Sit aut quibusdam laudantium officia ratione quas rerum. Esse aut accusamus soluta voluptatem illum voluptatum autem.', 'laboriosam', '1987-02-12 05:47:04', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(74, 'esse rerum eius suscipit velit in.', 'ea-et-numquam-quo-non-quaerat-maiores', 'Hic sequi atque et deleniti ratione. Pariatur ad qui sit minus non molestiae animi et.', 'id', '2017-05-02 04:37:57', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(75, 'sit nihil quas occaecati commodi non deleniti.', 'nobis-rerum-eum-enim', 'Mollitia voluptatum amet in veniam illo nam. Nulla culpa quia est in. Sed totam nobis aut. Expedita vel dicta earum illum eius.', 'facilis', '2001-01-19 08:11:32', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(76, 'soluta vero accusantium ex consequuntur perferendis.', 'perspiciatis-voluptatem-quia-repudiandae-qui-et', 'Molestias ratione omnis harum quis nam. Optio magnam et cumque. Accusantium ratione cupiditate necessitatibus ut voluptatem. Sit delectus quis exercitationem est quibusdam accusantium.', 'nesciunt', '1992-09-28 13:45:34', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(77, 'ut praesentium sit asperiores rerum eum distinctio.', 'voluptatem-quis-tempore-facere-illo-laborum', 'Quis facilis sed at impedit ullam aliquam. Quo sint alias qui corrupti dolorum cum. Aliquid quasi quia eaque et. Qui cum fuga voluptatem explicabo.', 'aut', '1983-10-17 13:28:53', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(78, 'deserunt quis velit ipsa cum.', 'non-cupiditate-qui-qui-et-non-et-possimus-non', 'At culpa molestias ut. Est iste amet earum. Temporibus recusandae similique provident qui architecto. Voluptatem veniam qui adipisci commodi.', 'eaque', '1981-08-06 15:35:59', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(79, 'est alias error perferendis velit occaecati exercitationem voluptatem.', 'consequatur-et-ut-minus-dolore', 'Sed est rerum sint ut minima. Voluptas fugiat dignissimos ullam quae. Et qui sint dolorem mollitia officiis.', 'et', '1985-11-28 22:14:24', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(80, 'laborum optio ut qui nisi.', 'itaque-magni-veritatis-iste-praesentium', 'Ut et repellat et doloremque at. Ut corporis corporis ut aspernatur provident praesentium. Repudiandae ducimus vero consequatur repellendus consectetur laboriosam.', 'eos', '1985-03-12 11:28:56', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(81, 'numquam blanditiis quia iste eveniet quae qui ut.', 'quos-quo-consequatur-impedit', 'Optio accusamus culpa veritatis et inventore et. Est dolores sit qui accusamus. Aut eligendi qui odio eos non a ut.', 'nemo', '2020-01-19 17:40:12', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(82, 'nulla aliquam aut expedita aut occaecati et libero.', 'aperiam-est-temporibus-officia-voluptates', 'Ut consequuntur eum repellat accusamus sunt. Corrupti id quo dolores laudantium facere ut. Officiis laborum sed laboriosam. Dolorum similique a ratione.', 'voluptas', '2016-02-23 18:36:33', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(83, 'quidem minus labore repellendus alias quia quasi.', 'saepe-illum-soluta-veniam-ducimus-porro-repudiandae-totam', 'Autem provident aliquam sit et. Laborum mollitia est doloribus. Provident asperiores libero eveniet repellendus.', 'aperiam', '1977-12-21 15:01:42', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(84, 'magnam consequatur alias excepturi aspernatur voluptatum a sunt.', 'qui-ut-cumque-est-similique', 'Quae nam dignissimos quia consequatur sed. Quia vel qui adipisci ad non. Sunt quos est aut nisi. Laborum totam quis sed et id.', 'minus', '1993-03-25 21:57:09', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(85, 'architecto laborum culpa culpa.', 'est-assumenda-impedit-incidunt-ut-et-fugiat', 'Quos qui quis id odio et et. Laboriosam voluptatum mollitia minima quis et delectus suscipit. Qui velit ab voluptatem consequatur.', 'commodi', '2010-02-14 06:40:16', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(86, 'ratione cum atque libero nesciunt exercitationem quisquam.', 'sed-qui-neque-excepturi-mollitia', 'Veritatis iste eaque dolores nobis. Repellat quod id accusantium quia.', 'est', '1997-09-07 03:16:37', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(87, 'laborum esse aut est magnam impedit tempore vel.', 'officia-molestiae-ad-voluptas-error', 'Consequatur saepe tempora itaque exercitationem aliquid accusamus beatae quo. Eum distinctio rem et sit temporibus rerum cumque. Et occaecati sapiente culpa ea quisquam et.', 'ipsum', '1977-12-07 18:50:38', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(88, 'est quia quis deserunt.', 'omnis-et-cupiditate-repudiandae-id-nostrum-veritatis', 'Nihil excepturi quae doloremque amet dolor qui. Repellendus sunt odio non temporibus odio est. Eveniet architecto facilis earum voluptas sit qui voluptates. Sit architecto ducimus et quis. Velit corrupti at repudiandae.', 'et', '2006-09-27 06:42:17', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(89, 'iusto molestiae laudantium itaque consequatur nostrum qui nam.', 'ad-sed-quod-minus-illo-beatae-quo', 'Libero cupiditate dicta id. Dolor excepturi impedit sed aut rerum. Accusantium delectus sit ut sit. Et et vitae nesciunt iure.', 'a', '2021-12-30 18:16:04', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(90, 'ipsam distinctio dolore aut natus dicta ipsam distinctio.', 'reiciendis-hic-est-quia-est', 'Odio veritatis laboriosam corporis natus asperiores modi id. Harum dolor aut in praesentium ut et reiciendis aut. Id aperiam dolores aut et.', 'eos', '1995-09-29 10:30:36', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(91, 'autem et asperiores soluta quia.', 'assumenda-et-ut-maiores', 'Cum voluptatem et et fugiat sit quos cum molestias. Qui tempore id ad. Accusamus voluptatem corporis impedit asperiores voluptas numquam. Dolorum doloribus sit tenetur autem.', 'ipsa', '1982-04-22 22:29:36', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(92, 'occaecati ut eos consequuntur et et soluta.', 'veniam-et-esse-minus-sit-voluptas', 'Saepe unde ducimus sunt corporis non corrupti. Sunt eligendi id sit voluptate quibusdam. Consequatur alias eos ea id aut quibusdam excepturi quae.', 'optio', '1988-03-14 15:58:19', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(93, 'rerum nesciunt reprehenderit voluptates a tempora saepe.', 'est-voluptas-nostrum-debitis-et-quod-dolor-vitae', 'Architecto necessitatibus reiciendis aliquam beatae vel. Sunt pariatur eligendi voluptate laboriosam similique totam. Molestiae doloribus consectetur deleniti rerum perspiciatis.', 'deserunt', '1971-08-04 01:51:13', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(94, 'ab cumque minus aut eaque.', 'iusto-molestias-ea-placeat-eum-tenetur-omnis-cupiditate', 'Voluptatem non impedit aut dolore est. Qui porro nihil ipsa voluptatem suscipit inventore sed distinctio. Consequatur et nulla omnis non consectetur possimus. Voluptatem neque sunt quas ipsa laboriosam voluptates sunt ducimus.', 'tempore', '2004-05-14 13:16:13', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(95, 'reprehenderit odio et qui illo.', 'molestiae-eos-ut-voluptatum-rerum-eaque-quasi-itaque', 'Non temporibus veritatis nobis impedit et dolorum eos. Aut debitis id et quidem nobis. Alias accusantium tempora est.', 'voluptatem', '1983-01-03 02:05:31', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(96, 'dicta culpa eos architecto laborum quasi nesciunt.', 'velit-consequatur-veritatis-molestiae-exercitationem', 'Dolore voluptatem delectus maiores aut sit. Eum voluptas dicta exercitationem quas facilis non accusantium. Harum cupiditate sunt dolor dolorum. Facere veritatis occaecati praesentium voluptatem.', 'molestias', '2013-08-10 04:20:39', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(97, 'dolorem asperiores adipisci provident ut perferendis.', 'ea-dolore-occaecati-pariatur-voluptatem-illum-consequatur-veritatis-et', 'Sint rem aspernatur eum omnis. Accusamus eaque sed maiores iure modi. Aut nulla quibusdam amet aut et illo.', 'explicabo', '1995-10-30 09:52:57', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(98, 'sunt quia aut neque sit.', 'perferendis-inventore-et-voluptatibus-et-quasi', 'Ut consectetur dolores aut in aut. Culpa aut aut enim ipsum libero.', 'numquam', '2013-12-04 18:53:48', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(99, 'molestiae cumque ut provident consequuntur voluptatem aut in maiores.', 'facere-fugiat-quam-nulla-esse', 'Ab aperiam eaque omnis eius. Ut omnis saepe fuga est eius debitis eaque. Voluptate qui necessitatibus harum eligendi.', 'voluptates', '1974-02-03 18:34:54', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(100, 'accusamus laborum est debitis molestias fugit praesentium impedit.', 'commodi-corporis-consequatur-nihil-modi-quo-esse', 'Quia ullam qui hic sapiente. Provident harum consequatur quod in. At ut dolorem repellendus ducimus. Saepe fugiat voluptatem tempore possimus.', 'libero', '2020-06-18 13:00:14', 0, '2025-02-05 05:51:19', '2025-02-05 05:51:19'),
(101, 'prueba', 'prueba', 'prueba', 'prueba', NULL, 0, '2025-04-01 06:29:44', '2025-04-01 06:29:44'),
(102, 'prueba1', 'prueba-1', 'prueba1', 'prueba1', NULL, 0, '2025-04-01 06:32:19', '2025-04-01 06:32:19'),
(103, 'prueba2', 'Prueba-2', 'Contenido 2', 'Categoria 2', NULL, 0, '2025-04-01 06:54:03', '2025-04-01 06:54:03'),
(104, 'jniancanc', 'cijaonva', 'ocaousfu', 'coouiavn', NULL, 0, '2025-04-01 07:02:36', '2025-04-01 07:02:36'),
(105, 'cnaiyoaic', 'conainon', 'cnaibaodca', 'cnaiaoann', NULL, 0, '2025-04-01 07:03:36', '2025-04-01 07:03:36'),
(106, 'giuanflfa', 'jnafaofal', 'vanviuouvav', 'voanoiuaf;d', NULL, 0, '2025-04-01 07:06:50', '2025-04-01 07:06:50'),
(107, 'knfkaifbasin', 'ncjnaoibfoiai', 'cnaincoifni', 'cnaoifoaif', NULL, 0, '2025-04-01 07:18:39', '2025-04-01 07:18:39'),
(108, 'ncanoiwwfouhv', 'cainoiufofljcn', 'cnaniuipdaa', 'kalcnaipufoif', NULL, 0, '2025-04-01 07:24:17', '2025-04-01 07:24:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6kMtOCPRIFZq0ATIQxCy0gc0pj5FGd5EB0J7fU7J', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGZjTHk5TVhzRGtOdDFkbmxHNnRMWmNsSHZLaGphQ3R5b3Z6QzFDWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9ibG9nLnRlc3QvYXJ0aWN1bG9zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1746720293);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, 'robertoereyes01@gmail.com', NULL, '$2y$12$84HD9uqX0lr01ShLQbfy3OWPwAJgmrtsCRNmPlpfGtD2ykbsBUHDO', NULL, '2025-02-05 05:51:20', '2025-02-05 05:51:20'),
(2, 'Mr. Spencer Dare', NULL, 'kelton.steuber@example.net', '2025-02-05 05:51:20', '$2y$12$iU7QV0lFFv5gW0plZw/X7.KdAOA6z6TRHukcS6hkvvsOFfaVlYt3e', 'Df3SUAqtFy', '2025-02-05 05:51:20', '2025-02-05 05:51:20'),
(3, 'Harrison Daugherty', NULL, 'djast@example.com', '2025-02-05 05:51:20', '$2y$12$iU7QV0lFFv5gW0plZw/X7.KdAOA6z6TRHukcS6hkvvsOFfaVlYt3e', 'hXmNggnMw8', '2025-02-05 05:51:20', '2025-02-05 05:51:20'),
(4, 'Ms. Theresia Cruickshank III', NULL, 'vbruen@example.net', '2025-02-05 05:51:20', '$2y$12$iU7QV0lFFv5gW0plZw/X7.KdAOA6z6TRHukcS6hkvvsOFfaVlYt3e', 'gzlzrQshJo', '2025-02-05 05:51:20', '2025-02-05 05:51:20'),
(5, 'Ignacio Ryan', NULL, 'leopold.greenfelder@example.net', '2025-02-05 05:51:20', '$2y$12$iU7QV0lFFv5gW0plZw/X7.KdAOA6z6TRHukcS6hkvvsOFfaVlYt3e', 'D6DRLcUH3H', '2025-02-05 05:51:20', '2025-02-05 05:51:20'),
(6, 'Anthony Botsford', NULL, 'rodrick63@example.com', '2025-02-05 05:51:20', '$2y$12$iU7QV0lFFv5gW0plZw/X7.KdAOA6z6TRHukcS6hkvvsOFfaVlYt3e', 'LTRvZwBNlA', '2025-02-05 05:51:20', '2025-02-05 05:51:20'),
(7, 'Kiera Anderson', NULL, 'jeanne.wolf@example.net', '2025-02-05 05:51:20', '$2y$12$iU7QV0lFFv5gW0plZw/X7.KdAOA6z6TRHukcS6hkvvsOFfaVlYt3e', 'BjIUaOBmNN', '2025-02-05 05:51:20', '2025-02-05 05:51:20'),
(8, 'Alba McKenzie', NULL, 'lmante@example.org', '2025-02-05 05:51:20', '$2y$12$iU7QV0lFFv5gW0plZw/X7.KdAOA6z6TRHukcS6hkvvsOFfaVlYt3e', '6rkZxZrrX5', '2025-02-05 05:51:20', '2025-02-05 05:51:20'),
(9, 'Herminia Hodkiewicz', NULL, 'larissa48@example.org', '2025-02-05 05:51:20', '$2y$12$iU7QV0lFFv5gW0plZw/X7.KdAOA6z6TRHukcS6hkvvsOFfaVlYt3e', 'IB2kJcsG5c', '2025-02-05 05:51:20', '2025-02-05 05:51:20'),
(10, 'Mr. Tod Orn', NULL, 'london.jones@example.com', '2025-02-05 05:51:20', '$2y$12$iU7QV0lFFv5gW0plZw/X7.KdAOA6z6TRHukcS6hkvvsOFfaVlYt3e', 'OVmvXL7o1t', '2025-02-05 05:51:20', '2025-02-05 05:51:20'),
(11, 'Nyah Dibbert Sr.', NULL, 'ratke.maxwell@example.org', '2025-02-05 05:51:20', '$2y$12$iU7QV0lFFv5gW0plZw/X7.KdAOA6z6TRHukcS6hkvvsOFfaVlYt3e', 'eEtpIoQOUO', '2025-02-05 05:51:20', '2025-02-05 05:51:20');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
