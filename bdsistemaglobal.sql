-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2019 a las 02:54:47
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdsistemaglobal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacenes`
--

CREATE TABLE `almacenes` (
  `alm_id` int(11) NOT NULL,
  `alm_nombre` varchar(40) NOT NULL,
  `alm_descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `almacenes`
--

INSERT INTO `almacenes` (`alm_id`, `alm_nombre`, `alm_descripcion`) VALUES
(1, 'Zona 1', 'En este almacén se guardaran los productos stock'),
(2, 'Zona 2', 'Guardar los productos que estén en stock'),
(3, 'Zona 3', 'Guardar los productos que estén en stock'),
(4, 'Zona 4', 'Guardar los productos que estén en stock'),
(5, 'Zona 5', 'Guardar los productos que estén en stock'),
(6, 'Zona 6', 'Guardar los productos que estén en stock'),
(7, 'Zona 7', 'Guardar los productos que estén en stock'),
(8, 'Zona 8', 'Guardar los productos que estén en stock'),
(9, 'Zona 9', 'Guardar los productos que estén en stock'),
(10, 'Zona 10', 'Guardar los productos que estén en stock'),
(11, 'Zona 11', 'Guardar los productos que estén en stock'),
(12, 'Zona 12', 'Guardar los productos que estén en stock'),
(13, 'Zona 13', 'Guardar los productos que estén en stock'),
(14, 'Zona 14', 'Guardar los productos que estén en stock'),
(15, 'Zona 15', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `cat_id` int(11) NOT NULL,
  `cat_nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`cat_id`, `cat_nombre`) VALUES
(1, 'útiles'),
(2, 'medicamentos'),
(3, 'medicamentos'),
(4, 'útiles'),
(5, 'ropa'),
(6, 'avena'),
(7, 'decoraciones'),
(8, 'papel higiénico'),
(9, 'celulares'),
(10, 'computadoras'),
(11, 'zapatillas'),
(12, 'accesorios de deporte'),
(13, 'pelotas'),
(14, 'colonias'),
(15, 'muebles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cli_id` int(11) NOT NULL,
  `cli_dni` varchar(8) NOT NULL,
  `cli_apellidos` varchar(50) NOT NULL,
  `cli_nombres` varchar(40) NOT NULL,
  `cli_direccion` varchar(50) NOT NULL,
  `cli_telefono` varchar(9) NOT NULL,
  `cli_nacimiento` date NOT NULL,
  `cli_email` varchar(50) NOT NULL,
  `cli_sexo` int(11) NOT NULL,
  `cli_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`cli_id`, `cli_dni`, `cli_apellidos`, `cli_nombres`, `cli_direccion`, `cli_telefono`, `cli_nacimiento`, `cli_email`, `cli_sexo`, `cli_usuario`) VALUES
(5, '74859632', 'PAZOS', 'MENTOR', 'Av Bellavista 604', '965852631', '1997-01-02', 'mentor@sexo.com', 1, 74859632),
(6, '74859360', 'IGLESIAS', 'Monica', 'Av San Jose', '945963741', '1994-07-04', 'monica@gmail.com', 1, 74859360);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `com_id` int(11) NOT NULL,
  `com_codigo` varchar(20) NOT NULL,
  `prov_id` int(11) NOT NULL,
  `com_almacenado` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`com_id`, `com_codigo`, `prov_id`, `com_almacenado`) VALUES
(1, '1', 1, 20),
(2, '2', 2, 30),
(3, '3', 3, 40),
(4, '4', 4, 50),
(5, '5', 5, 60),
(6, '6', 6, 20),
(7, '7', 7, 30),
(8, '8', 8, 40),
(9, '9', 9, 50),
(10, '10', 10, 60),
(11, '11', 11, 20),
(12, '12', 12, 30),
(13, '13', 13, 40),
(14, '14', 14, 50),
(15, '15', 15, 60);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_productos`
--

CREATE TABLE `compra_productos` (
  `comProd_id` int(11) NOT NULL,
  `com_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `comProd_cantidad` int(11) NOT NULL,
  `comProd_precioCompra` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `emp_id` int(11) NOT NULL,
  `emp_dni` varchar(8) NOT NULL,
  `emp_apellidos` varchar(30) NOT NULL,
  `emp_nombres` varchar(50) NOT NULL,
  `emp_sexo` int(11) NOT NULL,
  `emp_telefono` varchar(9) NOT NULL,
  `emp_email` varchar(50) NOT NULL,
  `emp_nacimiento` date NOT NULL,
  `emp_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`emp_id`, `emp_dni`, `emp_apellidos`, `emp_nombres`, `emp_sexo`, `emp_telefono`, `emp_email`, `emp_nacimiento`, `emp_usuario`) VALUES
(1, '74859888', 'Davila', 'Carlos', 2, '945874126', 'carlos@hotmail.com', '1994-12-15', 74859888),
(2, '74859621', 'Morales', 'Brenda', 1, '945741620', 'brenda@gmail.com', '1994-02-05', 74859621);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `estado_id` int(11) NOT NULL,
  `estado_nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`estado_id`, `estado_nombre`) VALUES
(1, 'disponible'),
(2, 'no disponible'),
(3, 'disponible'),
(4, 'no disponible'),
(5, 'disponible'),
(6, 'ocupado'),
(7, 'disponible'),
(8, 'no disponible'),
(9, 'disponible'),
(10, 'ocupado'),
(11, 'disponible'),
(12, 'ocupado'),
(13, 'disponible'),
(14, 'no disponible'),
(15, 'disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_de_venta`
--

CREATE TABLE `estado_de_venta` (
  `estadVenta_id` int(11) NOT NULL,
  `estadVenta_nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado_de_venta`
--

INSERT INTO `estado_de_venta` (`estadVenta_id`, `estadVenta_nombre`) VALUES
(1, 'cancelado'),
(2, 'enviado'),
(3, 'finalizado'),
(4, 'enviado'),
(5, 'cancelado'),
(6, 'enviado'),
(7, 'finalizado'),
(8, 'cancelado'),
(9, 'cancelado'),
(10, 'agotado'),
(11, 'enviado'),
(12, 'cancelado'),
(13, 'finalizado'),
(14, 'cancelado'),
(15, 'enviado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `prod_id` int(11) NOT NULL,
  `prod_codigo` varchar(20) NOT NULL,
  `prod_nombre` varchar(20) NOT NULL,
  `prov_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prod_precioCompra` float NOT NULL,
  `prod_precioVenta` float NOT NULL,
  `prod_descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`prod_id`, `prod_codigo`, `prod_nombre`, `prov_id`, `cat_id`, `prod_precioCompra`, `prod_precioVenta`, `prod_descripcion`) VALUES
(1, '1', 'útiles', 3, 4, 15, 20, 'Material para usos escolares'),
(2, '2', 'Pastillas', 11, 5, 1, 2, 'medicamento para recuperar la salud');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_disponibles`
--

CREATE TABLE `productos_disponibles` (
  `prodDisp_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prodDisp_cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_en_almacen`
--

CREATE TABLE `productos_en_almacen` (
  `prodAlm_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prodAlm_stock` int(11) NOT NULL,
  `alm_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `prov_id` int(11) NOT NULL,
  `prov_razonSocial` varchar(40) NOT NULL,
  `prov_ruc` varchar(30) NOT NULL,
  `prov_direccion` varchar(50) NOT NULL,
  `prov_telefono` varchar(9) NOT NULL,
  `prov_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`prov_id`, `prov_razonSocial`, `prov_ruc`, `prov_direccion`, `prov_telefono`, `prov_email`) VALUES
(1, 'Omar', '4166129954', 'jr.miranda', '98542578', 'omar.g@gmail.com'),
(2, 'Axel', '78612567', 'billa bonita', '96527538', 'axelitoro@gmail.com'),
(3, 'Joqtan', '988653737', 'oquendo', '97992653', 'joqtan@gmail.com'),
(4, 'Alejandro', '186438335626', 'playa rimac', '97545367', 'alejandro@gmail.com'),
(5, 'Jorge', '8616572518', 'callao', '987653724', 'jorge@gmail.com'),
(6, 'gutierrez', '86353656', 'Canta callao', '8653635', 'gutierrez@gmail.com'),
(7, 'Ramos', '853734278', 'mi peru', '91753366', 'ramos@gmail.com'),
(8, 'morales', '8763634414', 'callao', '972654356', 'morales@gmail.com'),
(9, 'ramis', '836635317', 'callao', '98365425', 'ramis@gmail.com'),
(10, 'Llulian', '75383783653', 'atahualpa', '97534536', 'llulian@gmail.com'),
(11, 'Lizbeth', '876545678', 'canta callao', '98765678', 'lizbeth@gmail.com'),
(12, 'Diana', '8756787656', 'La molina', '98765459', 'diana@gmail.com'),
(13, 'Michelle', '735388768', 'miraflores', '98615679', 'michelle@gmail.com'),
(14, 'armando', '5678987654', 'boterin', '987654333', 'armando@gmail.com'),
(15, 'Mentor', '567890987654', 'Cahuide', '98765456', 'mentor@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puestos_de_trabajo`
--

CREATE TABLE `puestos_de_trabajo` (
  `puesto_id` int(11) NOT NULL,
  `puesto_nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `puestos_de_trabajo`
--

INSERT INTO `puestos_de_trabajo` (`puesto_id`, `puesto_nombre`) VALUES
(1, 'Maquinista'),
(2, 'Operador'),
(3, 'Almacenero'),
(4, 'Marketing'),
(5, 'RRHH'),
(6, 'Mantenimiento'),
(7, 'Calidad'),
(8, 'Analista'),
(9, 'Ayudante'),
(10, 'Supervisor'),
(11, 'Operador'),
(12, 'Maquinista'),
(13, 'Almacenero'),
(14, 'Ayudante'),
(15, 'Mantenimiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_almacen`
--

CREATE TABLE `registro_almacen` (
  `reg_id` int(11) NOT NULL,
  `prodAlm_id` int(11) NOT NULL,
  `reg_tipo` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `reg_cantidad` int(11) NOT NULL,
  `reg_fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `rol_id` int(11) NOT NULL,
  `rol_nombre` varchar(10) NOT NULL,
  `rol_descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`rol_id`, `rol_nombre`, `rol_descripcion`) VALUES
(16, 'admin', 'Administrador'),
(17, 'ven', 'Vendedor'),
(18, 'cli', 'Cliente'),
(19, 'trans', 'Transportista');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_users`
--

CREATE TABLE `roles_users` (
  `rol_user_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `roles_users`
--

INSERT INTO `roles_users` (`rol_user_id`, `rol_id`, `user_id`) VALUES
(16, 18, 74859632),
(17, 17, 74859888),
(18, 17, 74859621),
(19, 18, 74859360);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `ruta_id` int(11) NOT NULL,
  `transporte_id` int(11) NOT NULL,
  `cli_id` int(11) NOT NULL,
  `fecha_salida` date NOT NULL,
  `fecha_retorno` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`ruta_id`, `transporte_id`, `cli_id`, `fecha_salida`, `fecha_retorno`) VALUES
(1, 1, 1, '2019-01-11', '2019-01-13'),
(2, 2, 2, '2019-01-14', '2019-01-16'),
(3, 3, 3, '2019-01-19', '2019-01-21'),
(4, 4, 4, '2019-01-22', '2019-01-24'),
(5, 5, 5, '2019-01-25', '2019-01-27'),
(6, 6, 6, '2019-01-28', '2019-01-30'),
(7, 7, 7, '2019-02-01', '2019-02-03'),
(8, 8, 8, '2019-02-04', '2019-02-06'),
(9, 9, 9, '2019-02-07', '2019-02-09'),
(10, 10, 10, '2019-02-10', '2019-02-12'),
(11, 11, 11, '2019-02-11', '2019-02-13'),
(12, 12, 12, '2019-02-14', '2019-02-16'),
(13, 13, 13, '2019-02-17', '2019-02-19'),
(14, 14, 14, '2019-02-20', '2019-02-22'),
(15, 15, 15, '2019-02-23', '2019-02-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE `sexo` (
  `sexo_id` int(11) NOT NULL,
  `sexo_nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sexo`
--

INSERT INTO `sexo` (`sexo_id`, `sexo_nombre`) VALUES
(1, 'Masculino'),
(2, 'Femenino'),
(3, 'Masculino'),
(4, 'Femenino'),
(5, 'Masculino'),
(6, 'Femenino'),
(7, 'Masculino'),
(8, 'Femenino'),
(9, 'Masculino'),
(10, 'Femenino'),
(11, 'Masculino'),
(12, 'Femenino'),
(13, 'Masculino'),
(14, 'Femenino'),
(15, 'Masculino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_venta`
--

CREATE TABLE `tipo_de_venta` (
  `tipoVenta_id` int(11) NOT NULL,
  `tipoVenta_nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_de_venta`
--

INSERT INTO `tipo_de_venta` (`tipoVenta_id`, `tipoVenta_nombre`) VALUES
(1, 'delivery'),
(2, 'presencial'),
(3, 'delivery'),
(4, 'unidad'),
(5, 'media docena'),
(6, 'paquete'),
(7, 'unidad'),
(8, '+ de una docena'),
(9, 'unidad'),
(10, 'docena'),
(11, 'paquete'),
(12, '+ de una docena'),
(13, 'media docena'),
(14, 'unidad'),
(15, 'docena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_registro`
--

CREATE TABLE `tipo_registro` (
  `tipoReg_id` int(11) NOT NULL,
  `tipoReg_nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_registro`
--

INSERT INTO `tipo_registro` (`tipoReg_id`, `tipoReg_nombre`) VALUES
(1, 'Lápiz'),
(2, 'Apronax'),
(3, 'Sofa'),
(4, 'laptop HP'),
(5, 'Celular Huawei'),
(6, 'zapatillas adidas'),
(7, 'pelotas walon'),
(8, 'guantes de arquero'),
(9, 'colonia Musk '),
(10, 'jeans'),
(11, 'avena 3 ositos'),
(12, 'panadol'),
(13, 'Cuadernos'),
(14, 'zapatillas umbro'),
(15, 'colonia nitro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporte`
--

CREATE TABLE `transporte` (
  `transporte_id` int(11) NOT NULL,
  `empleado_id` int(11) NOT NULL,
  `tipo_vehiculo` varchar(50) NOT NULL,
  `placa_vehiculo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `transporte`
--

INSERT INTO `transporte` (`transporte_id`, `empleado_id`, `tipo_vehiculo`, `placa_vehiculo`) VALUES
(1, 1, 'moto', '89751'),
(2, 2, 'camión', 'EO92LM'),
(3, 3, 'carro', 'UI87OL'),
(4, 4, 'moto', 'PL56GT'),
(5, 5, 'carro', 'T4R6M8'),
(6, 6, 'camión', 'YT65FG'),
(7, 7, 'carro', 'RT36CV'),
(8, 8, 'moto', 'JT4E8W'),
(9, 9, 'camión ', 'VB54J7'),
(10, 10, 'camioneta', 'QE34V9'),
(11, 11, 'carro', 'F875CX'),
(12, 12, 'moto', 'US5S8A'),
(13, 13, 'camioneta', 'PA1C8L'),
(14, 14, 'moto', '95KJ83'),
(15, 15, 'camión', 'QW937H');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `usuario` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `usuario`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(74859360, '74859360', '$2y$10$gkFkbuuWIogo.6nW/ZegJeE9MXC79WiBjQPNKup9Ljk0eD9fZJkFW', NULL, '2019-05-20 23:54:12', '2019-05-20 23:54:12'),
(74859621, '74859621', '$2y$10$4goiGxyGmAYEfK6HJ9sS1.wFvlcNczUVDqxNFnYhtTYZPFsRwjGSy', NULL, '2019-05-21 00:37:05', '2019-05-21 00:37:05'),
(74859632, '74859632', '$2y$10$hLuF.itamfF2Sq9QtFM.9.B4/r4LNhn.abSfsxVEUOd/gaJkcCqm2', NULL, '2019-05-20 23:16:57', '2019-05-20 23:16:57'),
(74859888, '74859888', '$2y$10$dy9Fuk3eKU3cZCm59PDK..IUkMz/x4yRc1j9ZdWcOEjVieshWAxYO', NULL, '2019-05-21 00:31:35', '2019-05-21 00:31:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `venta_id` int(11) NOT NULL,
  `venta_codigo` varchar(20) NOT NULL,
  `venta_tipoVenta` int(11) NOT NULL,
  `venta_estadoVenta` int(11) NOT NULL,
  `venta_fecha` date NOT NULL,
  `Cliente_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`venta_id`, `venta_codigo`, `venta_tipoVenta`, `venta_estadoVenta`, `venta_fecha`, `Cliente_id`) VALUES
(1, '2', 10, 6, '2019-03-01', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_productos`
--

CREATE TABLE `venta_productos` (
  `ventaProd_id` int(11) NOT NULL,
  `prodDisp_id` int(11) NOT NULL,
  `venta_id` int(11) NOT NULL,
  `ventaProd_cantidad` int(11) NOT NULL,
  `ventaProd_precioUni` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacenes`
--
ALTER TABLE `almacenes`
  ADD PRIMARY KEY (`alm_id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cli_id`),
  ADD UNIQUE KEY `cli_dni` (`cli_dni`),
  ADD KEY `cli_sexo` (`cli_sexo`),
  ADD KEY `cli_usuario` (`cli_usuario`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`com_id`),
  ADD UNIQUE KEY `com_codigo` (`com_codigo`),
  ADD KEY `prov_id` (`prov_id`);

--
-- Indices de la tabla `compra_productos`
--
ALTER TABLE `compra_productos`
  ADD PRIMARY KEY (`comProd_id`),
  ADD KEY `com_id` (`com_id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `dni_empleado` (`emp_dni`),
  ADD KEY `emp_usuario` (`emp_usuario`),
  ADD KEY `emp_sexo` (`emp_sexo`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`estado_id`);

--
-- Indices de la tabla `estado_de_venta`
--
ALTER TABLE `estado_de_venta`
  ADD PRIMARY KEY (`estadVenta_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `prov_id` (`prov_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indices de la tabla `productos_disponibles`
--
ALTER TABLE `productos_disponibles`
  ADD PRIMARY KEY (`prodDisp_id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indices de la tabla `productos_en_almacen`
--
ALTER TABLE `productos_en_almacen`
  ADD PRIMARY KEY (`prodAlm_id`),
  ADD KEY `prod_almacen` (`alm_id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`prov_id`),
  ADD UNIQUE KEY `prov_ruc` (`prov_ruc`),
  ADD UNIQUE KEY `prov_razonSocial` (`prov_razonSocial`);

--
-- Indices de la tabla `puestos_de_trabajo`
--
ALTER TABLE `puestos_de_trabajo`
  ADD PRIMARY KEY (`puesto_id`);

--
-- Indices de la tabla `registro_almacen`
--
ALTER TABLE `registro_almacen`
  ADD PRIMARY KEY (`reg_id`),
  ADD KEY `prod_id` (`prodAlm_id`),
  ADD KEY `reg_tipo` (`reg_tipo`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rol_id`);

--
-- Indices de la tabla `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`rol_user_id`),
  ADD KEY `rol_id` (`rol_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`ruta_id`),
  ADD KEY `transporte_id` (`transporte_id`),
  ADD KEY `cli_id` (`cli_id`);

--
-- Indices de la tabla `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`sexo_id`);

--
-- Indices de la tabla `tipo_de_venta`
--
ALTER TABLE `tipo_de_venta`
  ADD PRIMARY KEY (`tipoVenta_id`);

--
-- Indices de la tabla `tipo_registro`
--
ALTER TABLE `tipo_registro`
  ADD PRIMARY KEY (`tipoReg_id`);

--
-- Indices de la tabla `transporte`
--
ALTER TABLE `transporte`
  ADD PRIMARY KEY (`transporte_id`),
  ADD KEY `empleado_id` (`empleado_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`venta_id`),
  ADD UNIQUE KEY `Cliente_id` (`Cliente_id`),
  ADD KEY `venta_tipoVenta` (`venta_tipoVenta`),
  ADD KEY `venta_estadoVenta` (`venta_estadoVenta`);

--
-- Indices de la tabla `venta_productos`
--
ALTER TABLE `venta_productos`
  ADD PRIMARY KEY (`ventaProd_id`),
  ADD KEY `prod_id` (`prodDisp_id`),
  ADD KEY `venta_id` (`venta_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `almacenes`
--
ALTER TABLE `almacenes`
  MODIFY `alm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `compra_productos`
--
ALTER TABLE `compra_productos`
  MODIFY `comProd_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `estado_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `estado_de_venta`
--
ALTER TABLE `estado_de_venta`
  MODIFY `estadVenta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `productos_disponibles`
--
ALTER TABLE `productos_disponibles`
  MODIFY `prodDisp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos_en_almacen`
--
ALTER TABLE `productos_en_almacen`
  MODIFY `prodAlm_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `prov_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `puestos_de_trabajo`
--
ALTER TABLE `puestos_de_trabajo`
  MODIFY `puesto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `rol_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `roles_users`
--
ALTER TABLE `roles_users`
  MODIFY `rol_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `rutas`
--
ALTER TABLE `rutas`
  MODIFY `ruta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `sexo`
--
ALTER TABLE `sexo`
  MODIFY `sexo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tipo_de_venta`
--
ALTER TABLE `tipo_de_venta`
  MODIFY `tipoVenta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tipo_registro`
--
ALTER TABLE `tipo_registro`
  MODIFY `tipoReg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `transporte`
--
ALTER TABLE `transporte`
  MODIFY `transporte_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `venta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `venta_productos`
--
ALTER TABLE `venta_productos`
  MODIFY `ventaProd_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`cli_sexo`) REFERENCES `sexo` (`sexo_id`),
  ADD CONSTRAINT `clientes_ibfk_2` FOREIGN KEY (`cli_usuario`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `clientes_ibfk_3` FOREIGN KEY (`cli_id`) REFERENCES `rutas` (`cli_id`);

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`prov_id`) REFERENCES `proveedores` (`prov_id`);

--
-- Filtros para la tabla `compra_productos`
--
ALTER TABLE `compra_productos`
  ADD CONSTRAINT `compra_productos_ibfk_1` FOREIGN KEY (`com_id`) REFERENCES `compras` (`com_id`),
  ADD CONSTRAINT `compra_productos_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `productos` (`prod_id`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`emp_usuario`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `empleados_ibfk_2` FOREIGN KEY (`emp_sexo`) REFERENCES `sexo` (`sexo_id`),
  ADD CONSTRAINT `empleados_ibfk_4` FOREIGN KEY (`emp_id`) REFERENCES `transporte` (`empleado_id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`prov_id`) REFERENCES `proveedores` (`prov_id`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `categorias` (`cat_id`);

--
-- Filtros para la tabla `productos_disponibles`
--
ALTER TABLE `productos_disponibles`
  ADD CONSTRAINT `productos_disponibles_ibfk_1` FOREIGN KEY (`prod_id`) REFERENCES `productos_en_almacen` (`prodAlm_id`);

--
-- Filtros para la tabla `productos_en_almacen`
--
ALTER TABLE `productos_en_almacen`
  ADD CONSTRAINT `productos_en_almacen_ibfk_2` FOREIGN KEY (`alm_id`) REFERENCES `almacenes` (`alm_id`),
  ADD CONSTRAINT `productos_en_almacen_ibfk_3` FOREIGN KEY (`prod_id`) REFERENCES `productos` (`prod_id`);

--
-- Filtros para la tabla `registro_almacen`
--
ALTER TABLE `registro_almacen`
  ADD CONSTRAINT `registro_almacen_ibfk_1` FOREIGN KEY (`reg_tipo`) REFERENCES `tipo_registro` (`tipoReg_id`),
  ADD CONSTRAINT `registro_almacen_ibfk_3` FOREIGN KEY (`emp_id`) REFERENCES `empleados` (`emp_id`),
  ADD CONSTRAINT `registro_almacen_ibfk_4` FOREIGN KEY (`prodAlm_id`) REFERENCES `productos_en_almacen` (`prodAlm_id`);

--
-- Filtros para la tabla `roles_users`
--
ALTER TABLE `roles_users`
  ADD CONSTRAINT `roles_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `roles_users_ibfk_2` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`rol_id`);

--
-- Filtros para la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD CONSTRAINT `rutas_ibfk_1` FOREIGN KEY (`transporte_id`) REFERENCES `transporte` (`transporte_id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`venta_estadoVenta`) REFERENCES `estado_de_venta` (`estadVenta_id`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`venta_tipoVenta`) REFERENCES `tipo_de_venta` (`tipoVenta_id`),
  ADD CONSTRAINT `ventas_ibfk_2.2` FOREIGN KEY (`Cliente_id`) REFERENCES `clientes` (`cli_id`);

--
-- Filtros para la tabla `venta_productos`
--
ALTER TABLE `venta_productos`
  ADD CONSTRAINT `venta_productos_ibfk_2` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`venta_id`),
  ADD CONSTRAINT `venta_productos_ibfk_3` FOREIGN KEY (`prodDisp_id`) REFERENCES `productos_disponibles` (`prodDisp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
