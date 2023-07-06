-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-07-2023 a las 00:56:27
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario0`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Bodega', 7, 'add_bodega'),
(26, 'Can change Bodega', 7, 'change_bodega'),
(27, 'Can delete Bodega', 7, 'delete_bodega'),
(28, 'Can view Bodega', 7, 'view_bodega'),
(29, 'Can add categoria', 8, 'add_categoria'),
(30, 'Can change categoria', 8, 'change_categoria'),
(31, 'Can delete categoria', 8, 'delete_categoria'),
(32, 'Can view categoria', 8, 'view_categoria'),
(33, 'Can add Producto', 9, 'add_producto'),
(34, 'Can change Producto', 9, 'change_producto'),
(35, 'Can delete Producto', 9, 'delete_producto'),
(36, 'Can view Producto', 9, 'view_producto'),
(37, 'Can add Rol', 10, 'add_rol'),
(38, 'Can change Rol', 10, 'change_rol'),
(39, 'Can delete Rol', 10, 'delete_rol'),
(40, 'Can view Rol', 10, 'view_rol'),
(41, 'Can add Tienda', 11, 'add_tienda'),
(42, 'Can change Tienda', 11, 'change_tienda'),
(43, 'Can delete Tienda', 11, 'delete_tienda'),
(44, 'Can view Tienda', 11, 'view_tienda'),
(45, 'Can add Trabajador', 12, 'add_trabajador'),
(46, 'Can change Trabajador', 12, 'change_trabajador'),
(47, 'Can delete Trabajador', 12, 'delete_trabajador'),
(48, 'Can view Trabajador', 12, 'view_trabajador'),
(49, 'Can add salida_ producto', 13, 'add_salida_producto'),
(50, 'Can change salida_ producto', 13, 'change_salida_producto'),
(51, 'Can delete salida_ producto', 13, 'delete_salida_producto'),
(52, 'Can view salida_ producto', 13, 'view_salida_producto'),
(53, 'Can add producto bodega', 14, 'add_productobodega'),
(54, 'Can change producto bodega', 14, 'change_productobodega'),
(55, 'Can delete producto bodega', 14, 'delete_productobodega'),
(56, 'Can view producto bodega', 14, 'view_productobodega'),
(57, 'Can add entrada_ producto', 15, 'add_entrada_producto'),
(58, 'Can change entrada_ producto', 15, 'change_entrada_producto'),
(59, 'Can delete entrada_ producto', 15, 'delete_entrada_producto'),
(60, 'Can view entrada_ producto', 15, 'view_entrada_producto'),
(61, 'Can add devolucion_ producto', 16, 'add_devolucion_producto'),
(62, 'Can change devolucion_ producto', 16, 'change_devolucion_producto'),
(63, 'Can delete devolucion_ producto', 16, 'delete_devolucion_producto'),
(64, 'Can view devolucion_ producto', 16, 'view_devolucion_producto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$2O488Kj0afYZphvN8hyvhJ$FeUO8F80PRdHo8M81zdbeDT+0C3/zO/VHnN3Q56JueU=', '2023-07-06 22:44:02.974907', 1, 'nicolas', '', '', '', 1, 1, '2023-07-06 19:42:45.469154'),
(2, 'pbkdf2_sha256$260000$JwgHTEDWOhurcnFltETM6U$Oh5wNuK4WuU7EXRhcogOdpobk/AmLh3NtgZT7ao9BDE=', '2023-07-06 22:27:37.265525', 0, 'yesenia', '', '', '', 0, 1, '2023-07-06 19:43:56.571013'),
(3, 'pbkdf2_sha256$260000$mALiamsiJiCiYaOYlI7JYS$4lQzZdFzWxpFeP5afzEFqxSgJlcD1v3HAHc28gIehMM=', '2023-07-06 21:26:07.425221', 1, 'bodeguero', '', '', '', 0, 1, '2023-07-06 20:09:07.165228'),
(4, 'pbkdf2_sha256$260000$jjwSytZPozGMkUs8JB1LXu$FnSefucKdl9D/A3pEEL2Ikciub+PzJDwdW2U111WmWw=', '2023-07-06 22:32:36.495607', 0, 'cualquiera', '', '', '', 0, 1, '2023-07-06 22:28:27.827925');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'moduloApp', 'bodega'),
(8, 'moduloApp', 'categoria'),
(16, 'moduloApp', 'devolucion_producto'),
(15, 'moduloApp', 'entrada_producto'),
(9, 'moduloApp', 'producto'),
(14, 'moduloApp', 'productobodega'),
(10, 'moduloApp', 'rol'),
(13, 'moduloApp', 'salida_producto'),
(11, 'moduloApp', 'tienda'),
(12, 'moduloApp', 'trabajador'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-07-06 19:41:29.474209'),
(2, 'auth', '0001_initial', '2023-07-06 19:41:29.909709'),
(3, 'admin', '0001_initial', '2023-07-06 19:41:30.029601'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-07-06 19:41:30.031819'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-06 19:41:30.052138'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-07-06 19:41:30.133566'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-07-06 19:41:30.201443'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-07-06 19:41:30.232651'),
(9, 'auth', '0004_alter_user_username_opts', '2023-07-06 19:41:30.243986'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-07-06 19:41:30.307194'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-07-06 19:41:30.311708'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-07-06 19:41:30.324438'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-07-06 19:41:30.355488'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-07-06 19:41:30.385530'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-07-06 19:41:30.417934'),
(16, 'auth', '0011_update_proxy_permissions', '2023-07-06 19:41:30.427372'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-07-06 19:41:30.456719'),
(18, 'moduloApp', '0001_initial', '2023-07-06 19:41:31.024997'),
(19, 'moduloApp', '0002_alter_salida_producto_fechasalida', '2023-07-06 19:41:31.077372'),
(20, 'moduloApp', '0003_rename_descripcionsalida_devolucion_producto_descripciondevolucion_and_more', '2023-07-06 19:41:31.200215'),
(21, 'moduloApp', '0004_alter_devolucion_producto_fechadevolucion_and_more', '2023-07-06 19:41:31.333108'),
(22, 'moduloApp', '0005_usuario', '2023-07-06 19:41:31.353095'),
(23, 'moduloApp', '0006_delete_usuario', '2023-07-06 19:41:31.367539'),
(24, 'sessions', '0001_initial', '2023-07-06 19:41:31.397340');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('h2trz12aijhx7wuwnwpja96hm003eyv6', '.eJxVzMEOwiAQBNB_4WwIEJCtR-9-A4FlV6oGktKejP8uTXrQ68ybeYsQt7WErdMS5iwuQovTb5YiPqnuRX7Eem8SW12XOcmdyKPt8tYyva6H_TsosZexBmDrAFxWGlMCS5ZtMmpyxF55VgaH8AiGvFPIg2g4ExtrtCedJ_H5Atv_N78:1qHXhi:HpylV7wOHUZIFPfHgVeObYJrSKsRvEqqOEw4nD3W5j0', '2023-07-20 22:44:02.974907');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moduloapp_bodega`
--

CREATE TABLE `moduloapp_bodega` (
  `id` bigint(20) NOT NULL,
  `nombreBodega` varchar(50) NOT NULL,
  `direccionBodega` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `moduloapp_bodega`
--

INSERT INTO `moduloapp_bodega` (`id`, `nombreBodega`, `direccionBodega`) VALUES
(1, 'bodega derecha', 'av. 123'),
(2, 'b', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moduloapp_categoria`
--

CREATE TABLE `moduloapp_categoria` (
  `id` bigint(20) NOT NULL,
  `nombreCategoria` varchar(50) NOT NULL,
  `descripcionCategoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `moduloapp_categoria`
--

INSERT INTO `moduloapp_categoria` (`id`, `nombreCategoria`, `descripcionCategoria`) VALUES
(2, 'herramientas', 'acero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moduloapp_devolucion_producto`
--

CREATE TABLE `moduloapp_devolucion_producto` (
  `id` bigint(20) NOT NULL,
  `cantidadDevolucion` int(11) NOT NULL,
  `fechaDevolucion` date NOT NULL,
  `descripcionDevolucion` varchar(100) NOT NULL,
  `producto_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `moduloapp_devolucion_producto`
--

INSERT INTO `moduloapp_devolucion_producto` (`id`, `cantidadDevolucion`, `fechaDevolucion`, `descripcionDevolucion`, `producto_id`) VALUES
(1, 20, '2023-12-03', 'asdf', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moduloapp_entrada_producto`
--

CREATE TABLE `moduloapp_entrada_producto` (
  `id` bigint(20) NOT NULL,
  `cantidadEntrada` int(11) NOT NULL,
  `fechaEntrada` date NOT NULL,
  `descripcionEntrada` varchar(100) NOT NULL,
  `producto_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `moduloapp_entrada_producto`
--

INSERT INTO `moduloapp_entrada_producto` (`id`, `cantidadEntrada`, `fechaEntrada`, `descripcionEntrada`, `producto_id`) VALUES
(2, 5, '2022-12-03', 'asd', 4),
(3, 5, '2022-12-03', 'asd', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moduloapp_producto`
--

CREATE TABLE `moduloapp_producto` (
  `id` bigint(20) NOT NULL,
  `nombreProducto` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descripcionProducto` varchar(100) NOT NULL,
  `bodega_id` bigint(20) DEFAULT NULL,
  `categoria_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `moduloapp_producto`
--

INSERT INTO `moduloapp_producto` (`id`, `nombreProducto`, `cantidad`, `descripcionProducto`, `bodega_id`, `categoria_id`) VALUES
(4, 'clavos', -10, 'asfd', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moduloapp_productobodega`
--

CREATE TABLE `moduloapp_productobodega` (
  `id` bigint(20) NOT NULL,
  `stock` int(11) NOT NULL,
  `id_Bodega_id` bigint(20) DEFAULT NULL,
  `id_Producto_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moduloapp_rol`
--

CREATE TABLE `moduloapp_rol` (
  `id` bigint(20) NOT NULL,
  `nombreRol` varchar(50) NOT NULL,
  `descripcionRol` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moduloapp_salida_producto`
--

CREATE TABLE `moduloapp_salida_producto` (
  `id` bigint(20) NOT NULL,
  `cantidadSalida` int(11) NOT NULL,
  `fechaSalida` date NOT NULL,
  `descripcionSalida` varchar(100) NOT NULL,
  `producto_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `moduloapp_salida_producto`
--

INSERT INTO `moduloapp_salida_producto` (`id`, `cantidadSalida`, `fechaSalida`, `descripcionSalida`, `producto_id`) VALUES
(1, 50, '2022-12-12', 'asdf', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moduloapp_tienda`
--

CREATE TABLE `moduloapp_tienda` (
  `id` bigint(20) NOT NULL,
  `nombreTienda` varchar(50) NOT NULL,
  `direccionTienda` varchar(100) NOT NULL,
  `bodega_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `moduloapp_tienda`
--

INSERT INTO `moduloapp_tienda` (`id`, `nombreTienda`, `direccionTienda`, `bodega_id`) VALUES
(1, 'easy', 'miamiaaa', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moduloapp_trabajador`
--

CREATE TABLE `moduloapp_trabajador` (
  `id` bigint(20) NOT NULL,
  `nombreTrabajador` varchar(50) NOT NULL,
  `contraseñaTrabajador` varchar(50) NOT NULL,
  `rol_id` bigint(20) DEFAULT NULL,
  `tienda_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `moduloapp_bodega`
--
ALTER TABLE `moduloapp_bodega`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `moduloapp_categoria`
--
ALTER TABLE `moduloapp_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `moduloapp_devolucion_producto`
--
ALTER TABLE `moduloapp_devolucion_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `moduloApp_devolucion_producto_id_f6734040_fk_moduloApp` (`producto_id`);

--
-- Indices de la tabla `moduloapp_entrada_producto`
--
ALTER TABLE `moduloapp_entrada_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `moduloApp_entrada_pr_producto_id_8f356e4a_fk_moduloApp` (`producto_id`);

--
-- Indices de la tabla `moduloapp_producto`
--
ALTER TABLE `moduloapp_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `moduloApp_producto_bodega_id_7f66719d_fk_moduloApp_bodega_id` (`bodega_id`),
  ADD KEY `moduloApp_producto_categoria_id_9d5112a1_fk_moduloApp` (`categoria_id`);

--
-- Indices de la tabla `moduloapp_productobodega`
--
ALTER TABLE `moduloapp_productobodega`
  ADD PRIMARY KEY (`id`),
  ADD KEY `moduloApp_productobo_id_Bodega_id_b68c474c_fk_moduloApp` (`id_Bodega_id`),
  ADD KEY `moduloApp_productobo_id_Producto_id_a4d86cfc_fk_moduloApp` (`id_Producto_id`);

--
-- Indices de la tabla `moduloapp_rol`
--
ALTER TABLE `moduloapp_rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `moduloapp_salida_producto`
--
ALTER TABLE `moduloapp_salida_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `moduloApp_salida_pro_producto_id_a1c2e6cd_fk_moduloApp` (`producto_id`);

--
-- Indices de la tabla `moduloapp_tienda`
--
ALTER TABLE `moduloapp_tienda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `moduloApp_tienda_bodega_id_809a8768_fk_moduloApp_bodega_id` (`bodega_id`);

--
-- Indices de la tabla `moduloapp_trabajador`
--
ALTER TABLE `moduloapp_trabajador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `moduloApp_trabajador_rol_id_49191d50_fk_moduloApp_rol_id` (`rol_id`),
  ADD KEY `moduloApp_trabajador_tienda_id_8825ff69_fk_moduloApp_tienda_id` (`tienda_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `moduloapp_bodega`
--
ALTER TABLE `moduloapp_bodega`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `moduloapp_categoria`
--
ALTER TABLE `moduloapp_categoria`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `moduloapp_devolucion_producto`
--
ALTER TABLE `moduloapp_devolucion_producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `moduloapp_entrada_producto`
--
ALTER TABLE `moduloapp_entrada_producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `moduloapp_producto`
--
ALTER TABLE `moduloapp_producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `moduloapp_productobodega`
--
ALTER TABLE `moduloapp_productobodega`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `moduloapp_rol`
--
ALTER TABLE `moduloapp_rol`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `moduloapp_salida_producto`
--
ALTER TABLE `moduloapp_salida_producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `moduloapp_tienda`
--
ALTER TABLE `moduloapp_tienda`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `moduloapp_trabajador`
--
ALTER TABLE `moduloapp_trabajador`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `moduloapp_devolucion_producto`
--
ALTER TABLE `moduloapp_devolucion_producto`
  ADD CONSTRAINT `moduloApp_devolucion_producto_id_f6734040_fk_moduloApp` FOREIGN KEY (`producto_id`) REFERENCES `moduloapp_producto` (`id`);

--
-- Filtros para la tabla `moduloapp_entrada_producto`
--
ALTER TABLE `moduloapp_entrada_producto`
  ADD CONSTRAINT `moduloApp_entrada_pr_producto_id_8f356e4a_fk_moduloApp` FOREIGN KEY (`producto_id`) REFERENCES `moduloapp_producto` (`id`);

--
-- Filtros para la tabla `moduloapp_producto`
--
ALTER TABLE `moduloapp_producto`
  ADD CONSTRAINT `moduloApp_producto_bodega_id_7f66719d_fk_moduloApp_bodega_id` FOREIGN KEY (`bodega_id`) REFERENCES `moduloapp_bodega` (`id`),
  ADD CONSTRAINT `moduloApp_producto_categoria_id_9d5112a1_fk_moduloApp` FOREIGN KEY (`categoria_id`) REFERENCES `moduloapp_categoria` (`id`);

--
-- Filtros para la tabla `moduloapp_productobodega`
--
ALTER TABLE `moduloapp_productobodega`
  ADD CONSTRAINT `moduloApp_productobo_id_Bodega_id_b68c474c_fk_moduloApp` FOREIGN KEY (`id_Bodega_id`) REFERENCES `moduloapp_bodega` (`id`),
  ADD CONSTRAINT `moduloApp_productobo_id_Producto_id_a4d86cfc_fk_moduloApp` FOREIGN KEY (`id_Producto_id`) REFERENCES `moduloapp_producto` (`id`);

--
-- Filtros para la tabla `moduloapp_salida_producto`
--
ALTER TABLE `moduloapp_salida_producto`
  ADD CONSTRAINT `moduloApp_salida_pro_producto_id_a1c2e6cd_fk_moduloApp` FOREIGN KEY (`producto_id`) REFERENCES `moduloapp_producto` (`id`);

--
-- Filtros para la tabla `moduloapp_tienda`
--
ALTER TABLE `moduloapp_tienda`
  ADD CONSTRAINT `moduloApp_tienda_bodega_id_809a8768_fk_moduloApp_bodega_id` FOREIGN KEY (`bodega_id`) REFERENCES `moduloapp_bodega` (`id`);

--
-- Filtros para la tabla `moduloapp_trabajador`
--
ALTER TABLE `moduloapp_trabajador`
  ADD CONSTRAINT `moduloApp_trabajador_rol_id_49191d50_fk_moduloApp_rol_id` FOREIGN KEY (`rol_id`) REFERENCES `moduloapp_rol` (`id`),
  ADD CONSTRAINT `moduloApp_trabajador_tienda_id_8825ff69_fk_moduloApp_tienda_id` FOREIGN KEY (`tienda_id`) REFERENCES `moduloapp_tienda` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
