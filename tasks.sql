-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 22-01-2019 a las 10:11:56
-- Versión del servidor: 10.1.37-MariaDB-0+deb9u1
-- Versión de PHP: 7.0.30-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tasks`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `denunciaas`
--

CREATE TABLE `denunciaas` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tipodenuncia_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genero` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `namedenunciado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `relato` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `condicion` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `denunciaas`
--

INSERT INTO `denunciaas` (`id`, `user_id`, `tipodenuncia_id`, `name`, `genero`, `namedenunciado`, `relato`, `condicion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Nicolas', 'Masculino', 'Cristian', 'alalaolalo sisi 123 probando', 1, NULL, NULL, NULL),
(2, 1, 0, 'Nikolo', '', '', '', 0, '2019-01-06 19:58:00', '2019-01-06 19:58:00', NULL),
(28, 2, 1, 'sdsdsdsdx', '', 'aaaa', '', 0, '2019-01-07 00:42:32', '2019-01-22 05:09:56', '2019-01-22 05:09:56'),
(29, 2, 1, 'sdsdsdsdsdsdsx', 'Femenino', 'rrrrr', '', 0, '2019-01-07 00:54:09', '2019-01-22 05:12:08', '2019-01-22 05:12:08'),
(30, 0, 0, 'sssss', 'Masculino', 'aaaaa', '', 0, '2019-01-07 00:57:56', '2019-01-07 00:57:56', NULL),
(31, 0, 0, 'pppp', 'Femenino', 'ppppp', '', 0, '2019-01-07 00:58:21', '2019-01-07 00:58:21', NULL),
(32, 1, 0, 'icolas', 'Masculino', 'Catalinda', '', 0, '2019-01-09 00:05:17', '2019-01-09 00:05:17', NULL),
(33, 1, 0, 'sssssssss', 'Masculino', 'ssssssss', '', 0, '2019-01-09 00:12:26', '2019-01-09 00:12:26', NULL),
(34, 1, 0, 'gggg', 'Femenino', 'ggggg', '', 0, '2019-01-09 00:21:32', '2019-01-09 00:21:32', NULL),
(35, 1, 0, 'yyyy', 'Masculino', 'yyyyy', '', 0, '2019-01-09 00:27:27', '2019-01-09 00:27:27', NULL),
(36, 1, 0, 'rrrrrrr', 'Masculino', 'rrrrrrrrrrrrrrrr', '', 0, '2019-01-09 00:29:44', '2019-01-09 00:29:44', NULL),
(37, 1, 2, 'ffffffff', 'Masculino', ' micgurl', '', 0, '2019-01-09 00:34:06', '2019-01-09 00:34:06', NULL),
(38, 1, 1, 'Miguel', 'Femenino', 'Migguelito', '', 0, '2019-01-09 00:46:54', '2019-01-09 00:46:54', NULL),
(39, 1, 2, 'niko', 'Masculino', 'shamix', '', 0, '2019-01-09 01:50:02', '2019-01-09 01:50:02', NULL),
(40, 2, 1, 'ssss', 'Femenino', 'frfrfr', '', 0, '2019-01-09 02:31:56', '2019-01-22 05:13:46', '2019-01-22 05:13:46'),
(41, 2, 1, 'kapa', 'Femenino', 'kappocha', '', 0, '2019-01-09 02:51:04', '2019-01-22 05:32:32', '2019-01-22 05:32:32'),
(42, 2, 2, 'sdsa', 'Femenino', 'Javier', '', 0, '2019-01-09 02:53:06', '2019-01-22 05:32:37', '2019-01-22 05:32:37'),
(43, 2, 1, 'lia', 'Masculino', 'nomex', 'ñiañiax', 0, '2019-01-09 02:57:35', '2019-01-22 13:02:38', '2019-01-22 13:02:38'),
(44, 2, 4, 'Cristian', 'Masculino', 'Nicolas Novoa', 'Mi compañero se quiso propasar conmigo', 0, '2019-01-10 17:05:17', '2019-01-22 13:11:13', NULL),
(45, 2, 2, 'hola', 'Femenino', 'holaa', '', 0, '2019-01-10 17:11:26', '2019-01-22 13:02:43', '2019-01-22 13:02:43'),
(46, 2, 2, 'sdsds', 'Masculino', 'sdsds', '', 0, '2019-01-10 17:12:28', '2019-01-22 13:02:47', '2019-01-22 13:02:47'),
(47, 0, 0, '', '', '', '', 1, '2019-01-10 17:12:28', '2019-01-10 17:12:28', NULL),
(48, 2, 2, 'oooooo', 'Masculino', 'ppppp', '', 0, '2019-01-10 17:14:53', '2019-01-22 13:02:52', '2019-01-22 13:02:52'),
(49, 0, 0, '', '', '', '', 1, '2019-01-10 17:14:53', '2019-01-10 17:14:53', NULL),
(50, 2, 1, 'sss', 'Masculino', 'ssss', '', 0, '2019-01-10 17:16:42', '2019-01-22 13:02:56', '2019-01-22 13:02:56'),
(51, 1, 2, 'NIko', 'Masculino', 'Juan pablo', '', 0, '2019-01-16 21:42:39', '2019-01-16 21:42:39', NULL),
(52, 2, 2, 'Nico', 'Femenino', 'kzir', '', 0, '2019-01-21 22:35:57', '2019-01-22 13:03:00', '2019-01-22 13:03:00'),
(53, 2, 1, 'Carlos', 'Femenino', 'Nicolas', '', 0, '2019-01-22 00:40:44', '2019-01-22 13:03:04', '2019-01-22 13:03:04'),
(54, 2, 1, 'cris', 'Masculino', 'nico', '', 0, '2019-01-22 02:47:36', '2019-01-22 13:03:08', '2019-01-22 13:03:08'),
(55, 2, 1, 'lksaj', 'Femenino', 'asd', 'holixo', 0, '2019-01-22 02:53:54', '2019-01-22 05:14:23', '2019-01-22 05:14:23'),
(56, 2, 4, '', 'Masculino', 'Nicolas el cochino Novoa', 'el nico me quiso violar', 0, '2019-01-22 05:33:21', '2019-01-22 13:42:09', NULL),
(57, 2, 2, 'Cristian', 'Masculino', 'xxxx', 'Hola, quiero mi profesora chantajea para pasar el ramo', 0, '2019-01-22 13:15:16', '2019-01-22 13:15:16', NULL),
(58, 2, 4, NULL, 'Masculino', 'asdasd', 'asdsa', 0, '2019-01-22 13:50:50', '2019-01-22 13:50:50', NULL),
(59, 2, 4, NULL, 'Masculino', 'asdsadsa', 'sadsad', 0, '2019-01-22 13:54:53', '2019-01-22 13:54:53', NULL),
(60, 2, 5, NULL, 'Femenino', 'SHAMA', 'HOLA', 0, '2019-01-22 13:57:05', '2019-01-22 13:57:05', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id`, `fecha`, `created_at`, `updated_at`) VALUES
(1, '2019-01-16 16:00:00', NULL, NULL),
(2, '2019-01-20 11:00:00', NULL, NULL),
(3, '2019-01-24 06:08:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2019_01_03_224705_create_tasks_table', 2),
('2019_01_06_071053_create_tipodenuncias_table', 3),
('2019_01_06_182742_create_denuncias_table', 4),
('2019_01_06_161252_create_denunciaas_table', 5),
('2019_01_10_192446_create_admins_table', 6),
('2019_01_16_124421_create_roles_table', 6),
('2019_01_16_183705_create_reservas_table', 7),
('2019_01_16_184550_create_horarios_table', 7),
('2019_01_22_015457_add_deleted_to_denunciaas_table', 8),
('2019_01_22_032418_add_deleted_to_reservas_table', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `horario_id` int(11) NOT NULL,
  `estado` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `user_id`, `horario_id`, `estado`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, '', '2019-01-16 22:40:55', '2019-01-16 22:40:55', NULL),
(2, 1, 2, '', '2019-01-16 22:42:51', '2019-01-16 22:42:51', NULL),
(3, 1, 3, '', '2019-01-21 16:54:53', '2019-01-21 16:54:53', NULL),
(4, 2, 2, '', '2019-01-21 22:36:34', '2019-01-21 22:36:34', NULL),
(5, 2, 3, '', '2019-01-22 06:26:30', '2019-01-22 06:26:38', '2019-01-22 06:26:38'),
(6, 2, 2, '', '2019-01-22 13:16:45', '2019-01-22 13:16:45', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'Este rol puede acceder a todo', NULL, NULL),
(2, 'Denunciante', 'Este rol permite emitir denuncias, editarlas, eliminarlas reservar horas al psicologo y eliminar horas al psicologo', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tarea 1', '2019-01-04 02:26:38', '2019-01-04 02:26:38'),
(2, 1, 'Tarea 2', '2019-01-04 02:27:31', '2019-01-04 02:27:31'),
(3, 2, 'tarea 3', '2019-01-04 02:28:02', '2019-01-04 02:28:02'),
(6, 2, 'saia', '2019-01-04 03:10:31', '2019-01-04 03:10:31'),
(7, 2, 'nota 7', '2019-01-04 03:23:56', '2019-01-04 03:23:56'),
(8, 2, 'nota 72', '2019-01-04 03:27:43', '2019-01-04 03:27:43'),
(9, 2, 'nota 722', '2019-01-04 03:28:19', '2019-01-04 03:28:19'),
(10, 2, 'nico', '2019-01-04 03:35:15', '2019-01-04 03:35:15'),
(11, 2, 'sasanico', '2019-01-04 03:38:35', '2019-01-04 03:38:35'),
(12, 1, 'jeancito', '2019-01-04 06:41:52', '2019-01-04 06:41:52'),
(13, 1, 'holaa', '2019-01-06 20:10:43', '2019-01-06 20:10:43'),
(14, 1, 'zapaka', '2019-01-06 20:19:26', '2019-01-06 20:19:26'),
(15, 1, 'wena chro', '2019-01-06 20:38:58', '2019-01-06 20:38:58'),
(16, 2, 'sdssdsd', '2019-01-06 18:43:04', '2019-01-06 18:43:04'),
(17, 1, 'hi', '2019-01-09 01:37:17', '2019-01-09 01:37:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodenuncias`
--

CREATE TABLE `tipodenuncias` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipodenuncias`
--

INSERT INTO `tipodenuncias` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Abuso sexual', NULL, NULL),
(2, 'Acoso laboral\r\n', NULL, NULL),
(3, 'Violacion', NULL, NULL),
(4, 'Acoso', NULL, NULL),
(5, 'Violencia', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 2, 'Nicolas', 'nico@nico.com', '$2y$10$l.GVOVryt/ikb9FEYO79j.Zt3phVzmv8rYY17iVD12fAdr7zs7OGy', 'uMI4M50Mly8nUqQr7FvLLNgt5SpGrXqEBw9djm43Z7DsBjo5EUH0cfbqE9s1', '2019-01-04 01:43:53', '2019-01-16 15:57:14'),
(2, 2, 'Cristian', 'shama@shama.com', '$2y$10$o6RMbbS.TcZi.pViCcJdmuNj.731xSONJzeFmK0FGZ8UiP6vMtKVC', 'khnM9ye2qKhlZdcPxeN5GPELKgV4fgvnSyy59cB6XGaMdHHt65raSgR1UUp1', '2019-01-04 01:45:16', '2019-01-22 13:02:03'),
(3, 0, 'admin', 'admin@admin.com', '$2y$10$k3qUdRr125GnY3v3Eja.d.ZWrijLXTR9UNm9giy.ZKWocVomJQY7y', 'pGnJlzpRHHu363IriAWYqGtVwcBDnn2VaR5M1AMYfCW2LvU7ysLkbUkeb2q0', '2019-01-16 15:57:39', '2019-01-21 23:57:08');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `denunciaas`
--
ALTER TABLE `denunciaas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `denunciaas_user_id_index` (`user_id`),
  ADD KEY `denunciaas_tipodenuncia_id_index` (`tipodenuncia_id`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservas_user_id_index` (`user_id`),
  ADD KEY `reservas_horario_id_index` (`horario_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_index` (`user_id`);

--
-- Indices de la tabla `tipodenuncias`
--
ALTER TABLE `tipodenuncias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `denunciaas`
--
ALTER TABLE `denunciaas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `tipodenuncias`
--
ALTER TABLE `tipodenuncias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
