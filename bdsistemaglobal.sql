-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-05-2019 a las 22:29:43
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `cat_id` int(11) NOT NULL,
  `cat_nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_ventas`
--

CREATE TABLE `cliente_ventas` (
  `ventasCliente_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `venta_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `emp_usuario` int(11) NOT NULL,
  `emp_puesto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `estado_id` int(11) NOT NULL,
  `estado_nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_de_venta`
--

CREATE TABLE `estado_de_venta` (
  `estadVenta_id` int(11) NOT NULL,
  `estadVenta_nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `prov_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puestos_de_trabajo`
--

CREATE TABLE `puestos_de_trabajo` (
  `puesto_id` int(11) NOT NULL,
  `puesto_nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_users`
--

CREATE TABLE `roles_users` (
  `rol_user_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE `sexo` (
  `sexo_id` int(11) NOT NULL,
  `sexo_nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_venta`
--

CREATE TABLE `tipo_de_venta` (
  `tipoVenta_id` int(11) NOT NULL,
  `tipoVenta_nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_registro`
--

CREATE TABLE `tipo_registro` (
  `tipoReg_id` int(11) NOT NULL,
  `tipoReg_nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_usuario` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_estado` int(11) NOT NULL,
  `user_remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `venta_id` int(11) NOT NULL,
  `venta_codigo` varchar(20) NOT NULL,
  `venta_tipoVenta` int(11) NOT NULL,
  `venta_estadoVenta` int(11) NOT NULL,
  `venta_fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indices de la tabla `cliente_ventas`
--
ALTER TABLE `cliente_ventas`
  ADD PRIMARY KEY (`ventasCliente_id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `venta_id` (`venta_id`);

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
  ADD KEY `emp_sexo` (`emp_sexo`),
  ADD KEY `emp_puesto` (`emp_puesto`);

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
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_estado` (`user_estado`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`venta_id`),
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
  MODIFY `alm_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cli_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `compra_productos`
--
ALTER TABLE `compra_productos`
  MODIFY `comProd_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `estado_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado_de_venta`
--
ALTER TABLE `estado_de_venta`
  MODIFY `estadVenta_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `prov_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `puestos_de_trabajo`
--
ALTER TABLE `puestos_de_trabajo`
  MODIFY `puesto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `rol_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles_users`
--
ALTER TABLE `roles_users`
  MODIFY `rol_user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sexo`
--
ALTER TABLE `sexo`
  MODIFY `sexo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_de_venta`
--
ALTER TABLE `tipo_de_venta`
  MODIFY `tipoVenta_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_registro`
--
ALTER TABLE `tipo_registro`
  MODIFY `tipoReg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `venta_id` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `clientes_ibfk_2` FOREIGN KEY (`cli_usuario`) REFERENCES `users` (`user_id`);

--
-- Filtros para la tabla `cliente_ventas`
--
ALTER TABLE `cliente_ventas`
  ADD CONSTRAINT `cliente_ventas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`cli_id`),
  ADD CONSTRAINT `cliente_ventas_ibfk_2` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`venta_id`);

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
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`emp_usuario`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `empleados_ibfk_2` FOREIGN KEY (`emp_sexo`) REFERENCES `sexo` (`sexo_id`),
  ADD CONSTRAINT `empleados_ibfk_3` FOREIGN KEY (`emp_puesto`) REFERENCES `puestos_de_trabajo` (`puesto_id`);

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
  ADD CONSTRAINT `roles_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `roles_users_ibfk_2` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`rol_id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_estado`) REFERENCES `estados` (`estado_id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`venta_estadoVenta`) REFERENCES `estado_de_venta` (`estadVenta_id`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`venta_tipoVenta`) REFERENCES `tipo_de_venta` (`tipoVenta_id`);

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
