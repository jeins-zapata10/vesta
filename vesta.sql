-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-07-2025 a las 21:59:43
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vesta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idCategoria` bigint(20) UNSIGNED NOT NULL,
  `nombreCategoria` varchar(75) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idCategoria`, `nombreCategoria`, `created_at`, `updated_at`) VALUES
(1, 'Ropa y Calzado', '2025-07-21 14:15:35', '2025-07-21 14:47:55'),
(2, 'Protección Personal', '2025-07-21 14:15:35', '2025-07-21 14:15:35'),
(3, 'Señalización y Control de Riesgos', '2025-07-21 14:16:24', '2025-07-21 14:16:24'),
(4, 'Limpieza y Mantenimiento', '2025-07-21 14:16:24', '2025-07-21 14:16:24'),
(5, 'Emergencias y Primeros Auxilios', '2025-07-21 14:16:49', '2025-07-21 14:16:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2025_07_21_140659_create_categorias_table', 2),
(9, '2025_07_21_150525_create_subcategorias_table', 3),
(10, '2025_07_21_150549_create_productos_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProductos` bigint(20) UNSIGNED NOT NULL,
  `nombreProducto` varchar(250) NOT NULL,
  `idSubCategoria` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProductos`, `nombreProducto`, `idSubCategoria`, `created_at`, `updated_at`) VALUES
(1, 'Ignífugos', 1, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(2, 'Impermeables', 1, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(3, 'Desechables', 1, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(4, 'Antiestáticos', 1, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(5, 'Reflectivos', 1, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(6, 'De algodón', 2, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(7, 'Antiflama', 2, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(8, 'De Mezclilla', 2, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(9, 'Reflectivos', 2, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(10, 'Laboratorio', 3, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(11, 'Limpieza', 3, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(12, 'Cocina', 3, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(13, 'Médicas', 3, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(14, 'Desechables', 3, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(15, 'Antiestáticas', 3, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(16, 'Industriales', 3, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(17, 'Reflectivo', 3, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(18, 'Ejecutivos', 4, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(19, 'Operativos', 4, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(20, 'Logísticos', 4, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(21, 'Institucionales', 4, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(22, 'De Servicio', 4, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(23, 'Personalizados', 4, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(24, 'Botas dieléctricas', 5, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(25, 'Botas con puntera de acero', 5, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(26, 'Botas antideslizantes', 5, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(27, 'Botas impermeables', 5, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(28, 'Calzado para cocina', 5, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(29, 'Calzado hospitalario', 5, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(30, 'Plantilla antipinchazos', 5, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(31, 'Suela SRC / SRA', 5, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(32, 'Tapones desechables (espuma, silicona)', 6, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(33, 'Tapones con banda / arco', 6, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(34, 'Tipo copa (orejeras pasivas)', 6, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(35, 'Con diadema / para casco', 6, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(36, 'Auriculares con cancelación activa de ruido', 6, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(37, 'Protectores auditivos con radio/Bluetooth', 6, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(38, 'Gafas de seguridad', 7, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(39, 'Goggles cerrados / herméticos', 7, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(40, 'Caretas faciales (PETG, malla metálica)', 7, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(41, 'Pantallas para soldadura', 7, '2025-07-21 16:40:13', '2025-07-21 16:40:13'),
(42, 'Pantallas para soldadura', 7, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(43, 'Mascarillas N95/KN95/FFP2/FFP3', 8, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(44, 'Mascarillas quirúrgicas', 8, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(45, 'Mascarillas con carbón activado', 8, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(46, 'Respiradores de media cara', 8, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(47, 'Respiradores de cara completa', 8, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(48, 'Filtros A, B, E, K, P1, P2, P3', 8, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(49, 'Respiradores motorizados', 8, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(50, 'Capuchas de aire forzado', 8, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(51, 'Guantes de nitrilo', 9, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(52, 'Guantes de cuero', 9, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(53, 'Guantes anticorte', 9, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(54, 'Guantes térmicos', 9, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(55, 'Guantes impermeables', 9, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(56, 'Guantes para soldadura', 9, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(57, 'Cascos de seguridad', 10, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(58, 'Cascos con ranuras para visor', 10, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(59, 'Gorras tipo bump cap', 10, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(60, 'Accesorios: visores, soportes, adaptadores', 10, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(61, 'Señales fotoluminiscentes', 11, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(62, 'Señales reflectivas de seguridad', 11, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(63, 'Señales rígidas en acrílico, aluminio o PVC', 11, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(64, 'Etiquetas adhesivas de advertencia', 11, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(65, 'Carteles tipo bandera / colgante', 11, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(66, 'Señales modulares', 11, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(67, 'Barreras tipo acordeón', 12, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(68, 'Vallas móviles plásticas o metálicas', 12, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(69, 'Postes delimitadores', 12, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(70, 'Banderillas para tráfico', 12, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(71, 'Barreras flexibles o de impacto', 12, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(72, 'Tachas viales / botones reflectivos', 12, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(73, 'Topes de parqueo', 12, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(74, 'Cintas de peligro', 13, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(75, 'Reflectivas o retrorreflectivas', 13, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(76, 'Antideslizantes para pisos', 13, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(77, 'Adhesivas tipo barricada', 13, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(78, 'Cordones o cuerdas de delimitación', 13, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(79, 'Alarmas sonoras (sirenas industriales)', 14, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(80, 'Luces estroboscópicas', 14, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(81, 'Torretas luminosas para máquinas', 14, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(82, 'Reflectores de emergencia', 14, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(83, 'Conos viales', 15, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(84, 'Banderolas o paletas de pare/siga', 15, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(85, 'Letreros plegables de advertencia', 15, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(86, 'Caballetes o trípodes con señal', 15, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(87, 'Bases de caucho para postes o señales', 15, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(88, 'Escobas industriales', 16, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(89, 'Trapeadores y mopas', 16, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(90, 'Palas recogedoras', 16, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(91, 'Cepillos', 16, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(92, 'Franelas, paños y trapos absorbentes', 16, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(93, 'Plumeros extensibles', 16, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(94, 'Bolsas industriales', 17, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(95, 'Contenedores plásticos', 17, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(96, 'Canecas codificadas por color', 17, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(97, 'Contenedores móviles tipo Brute o Toter', 17, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(98, 'Canecas codificadas por color', 17, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(99, 'Tachos con sensor', 17, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(100, 'Tolvas basculantes para montacarga', 17, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(101, 'Papeleras murales y de pedestal', 17, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(102, 'Bolsas hidrosolubles', 17, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(103, 'Guantes de limpieza', 18, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(104, 'Delantales impermeables o desechables', 18, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(105, 'Pulverizadores y atomizadores', 18, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(106, 'Cubetas y baldes industriales', 18, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(107, 'Esteras secadoras o antifatiga', 18, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(108, 'Limpiavidrios industriales', 18, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(109, 'Brochas para equipos o maquinaria delicada', 18, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(110, 'Organizadores de limpieza', 18, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(111, 'Carros de limpieza', 19, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(112, 'Carros janitor para hoteles / edificios', 19, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(113, 'Carros portacubetas o lavaderos', 19, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(114, 'Carros de lavandería', 19, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(115, 'Carros porta escobas', 19, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(116, 'Carros multifuncionales', 19, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(117, 'Kit de mantenimiento básico', 20, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(118, 'Aceites y lubricantes multiusos', 20, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(119, 'Cinta de señalización de mantenimiento', 20, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(120, 'Escaleras portátiles', 20, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(121, 'Tapetes antifatiga y antideslizantes', 20, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(122, 'Lámparas portátiles de inspección', 20, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(123, 'Extintores', 21, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(124, 'Gabinetes para extintores o mangueras', 21, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(125, 'Botiquines industriales y portátiles', 21, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(126, 'Duchas y lavaojos de emergencia', 21, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(127, 'Kits de derrames químicos / biológicos', 21, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(128, 'Mantas ignífugas para fuego directo', 21, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(129, 'Alarmas manuales de emergencia', 21, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(130, 'Linternas de emergencia', 21, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(131, 'Balizas o torretas luminosas', 21, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(132, 'Paneles de evacuación y puntos de encuentro', 21, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(133, 'Cinturones porta herramientas', 22, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(134, 'Rodilleras', 22, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(135, 'Bolsillos externos', 22, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(136, 'Fajas lumbares de soporte', 22, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(137, 'Gorras de protección', 22, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(138, 'Pasamontañas', 22, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(139, 'Manguitos protectores', 22, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(140, 'Medias térmicas o antiestáticas', 22, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(141, 'Tobilleras con soporte o refuerzo', 22, '2025-07-21 16:41:49', '2025-07-21 16:41:49'),
(142, 'Bandanas absorbentes para casco', 22, '2025-07-21 16:43:01', '2025-07-21 16:43:01'),
(143, 'Capuchas ignífugas', 22, '2025-07-21 16:43:01', '2025-07-21 16:43:01'),
(144, 'Rótulos y letreros fotoluminiscentes', 23, '2025-07-21 16:43:01', '2025-07-21 16:43:01'),
(145, 'Mapas de evacuación', 23, '2025-07-21 16:43:01', '2025-07-21 16:43:01'),
(146, 'Pictogramas químicos', 23, '2025-07-21 16:43:01', '2025-07-21 16:43:01'),
(147, 'Marcadores de rutas y zonas de seguridad', 23, '2025-07-21 16:43:01', '2025-07-21 16:43:01'),
(148, 'Etiquetas de bloqueo', 23, '2025-07-21 16:43:01', '2025-07-21 16:43:01'),
(149, 'Chalecos para brigadas de emergencia', 24, '2025-07-21 16:43:01', '2025-07-21 16:43:01'),
(150, 'Equipos de comunicación', 24, '2025-07-21 16:43:01', '2025-07-21 16:43:01'),
(151, 'Bolsos tácticos de intervención rápida', 24, '2025-07-21 16:43:01', '2025-07-21 16:43:01'),
(152, 'Protectores faciales para químicos', 24, '2025-07-21 16:43:01', '2025-07-21 16:43:01'),
(153, 'Guantes antiácidos o de intervención', 24, '2025-07-21 16:43:01', '2025-07-21 16:43:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `idSubCategoria` bigint(20) UNSIGNED NOT NULL,
  `nombreSubCat` varchar(150) NOT NULL,
  `idCategoria` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`idSubCategoria`, `nombreSubCat`, `idCategoria`, `created_at`, `updated_at`) VALUES
(1, 'Overoles', 1, '2025-07-21 15:44:50', '2025-07-21 15:44:50'),
(2, 'Camisas y Pantalones', 1, '2025-07-21 15:44:50', '2025-07-21 15:44:50'),
(3, 'Batas', 1, '2025-07-21 15:44:50', '2025-07-21 15:44:50'),
(4, 'Uniformes Corporativos', 1, '2025-07-21 15:44:50', '2025-07-21 15:44:50'),
(5, 'Calzado de Seguridad', 1, '2025-07-21 15:44:50', '2025-07-21 15:44:50'),
(6, 'Protección Auditiva', 2, '2025-07-21 15:46:49', '2025-07-21 15:46:49'),
(7, 'Visual y Facial', 2, '2025-07-21 15:46:49', '2025-07-21 15:46:49'),
(8, 'Protección Respiratoria', 2, '2025-07-21 15:46:49', '2025-07-21 15:46:49'),
(9, 'Protección para Manos', 2, '2025-07-21 15:46:49', '2025-07-21 15:46:49'),
(10, 'Protección para Cabeza', 2, '2025-07-21 15:46:49', '2025-07-21 15:46:49'),
(11, 'Señalización Visual', 3, '2025-07-21 15:49:01', '2025-07-21 15:49:01'),
(12, 'Barreras Físicas de Control', 3, '2025-07-21 15:49:01', '2025-07-21 15:49:01'),
(13, 'Cintas y Elementos Delimitadores', 3, '2025-07-21 15:49:01', '2025-07-21 15:49:01'),
(14, 'Señalización Acústica y Lumínica', 3, '2025-07-21 15:49:01', '2025-07-21 15:49:01'),
(15, 'Señalización Temporal y Vial', 3, '2025-07-21 15:49:01', '2025-07-21 15:49:01'),
(16, 'Herramientas Manuales', 4, '2025-07-21 15:50:48', '2025-07-21 15:50:48'),
(17, 'Recolección de Residuos', 4, '2025-07-21 15:50:48', '2025-07-21 15:50:48'),
(18, 'Accesorios y Utensilios de Limpieza', 4, '2025-07-21 15:50:48', '2025-07-21 15:50:48'),
(19, 'Equipos Rodantes de Limpieza', 4, '2025-07-21 15:50:48', '2025-07-21 15:50:48'),
(20, 'Mantenimiento General', 4, '2025-07-21 15:50:48', '2025-07-21 15:50:48'),
(21, 'Equipos de Emergencia', 5, '2025-07-21 15:52:41', '2025-07-21 15:52:41'),
(22, 'Accesorios y Protección', 5, '2025-07-21 15:52:41', '2025-07-21 15:52:41'),
(23, 'Señalización y Seguridad Pasiva de Emergencia', 5, '2025-07-21 15:52:41', '2025-07-21 15:52:41'),
(24, 'Kits y Equipos Especializados para Intervención', 5, '2025-07-21 15:52:41', '2025-07-21 15:52:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProductos`),
  ADD KEY `productos_idsubcategoria_foreign` (`idSubCategoria`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`idSubCategoria`),
  ADD KEY `subcategorias_idcategoria_foreign` (`idCategoria`);

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
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategoria` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProductos` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `idSubCategoria` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_idsubcategoria_foreign` FOREIGN KEY (`idSubCategoria`) REFERENCES `subcategorias` (`idSubCategoria`);

--
-- Filtros para la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD CONSTRAINT `subcategorias_idcategoria_foreign` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
