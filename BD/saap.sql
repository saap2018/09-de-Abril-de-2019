-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-04-2019 a las 01:47:03
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `saap`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cantidaddeparqueaderos`
--

CREATE TABLE `cantidaddeparqueaderos` (
  `id_cantidad` int(11) NOT NULL,
  `cantidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cantidaddeparqueaderos`
--

INSERT INTO `cantidaddeparqueaderos` (`id_cantidad`, `cantidad`) VALUES
(1, '80'),
(2, '50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `id_cargo` int(11) NOT NULL,
  `nombre_cargo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`id_cargo`, `nombre_cargo`) VALUES
(1, 'Gerente General');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `IdCliente` int(11) NOT NULL,
  `TipoDocumento` varchar(30) NOT NULL,
  `DocumentoCliente` int(11) NOT NULL,
  `NombreCliente` varchar(90) DEFAULT NULL,
  `ApellidosCliente` varchar(90) DEFAULT NULL,
  `NumeroTelefonico` varchar(100) DEFAULT NULL,
  `Email` varchar(90) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`IdCliente`, `TipoDocumento`, `DocumentoCliente`, `NombreCliente`, `ApellidosCliente`, `NumeroTelefonico`, `Email`) VALUES
(3, 'Cedula de ciudadania', 567890, 'José', 'Galindo', '3456789', 'miguelgalindosanchez@gmail.com'),
(6, 'Cedula de ciudadania', 2147483647, 'otro cliente', 'con apellido', '345678', 'mdbkergjk@sbfdkjs.com'),
(5, 'Cedula de ciudadania', 80125920, 'Freddy ', 'Ardila', '7120165', 'freddycardila@gmail.com'),
(8, 'Cedula de Ciudadania', 79899067, 'Mario Anibal', 'Beltrán Ruiz', '3194532245', 'mariob34@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `address`) VALUES
(14, 'panchito', 'panchito_tester@mail.com', 'libertad'),
(16, 'ulises', 'ulises@mail.com', 'independencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convenios`
--

CREATE TABLE `convenios` (
  `IdConvenio` int(11) NOT NULL,
  `NombreConvenio` varchar(60) DEFAULT NULL,
  `Valor` int(11) DEFAULT NULL,
  `NombreCliente` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `convenios`
--

INSERT INTO `convenios` (`IdConvenio`, `NombreConvenio`, `Valor`, `NombreCliente`) VALUES
(11, '435678iop', 9889274, 'otro cliente con apellido'),
(5, 'Universidad Javeriana Profesores', 2500000, 'Freddy Ardila'),
(3, 'Almacenes Exito Empleados', 2000000, 'Jos?Galindo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disponibilidad`
--

CREATE TABLE `disponibilidad` (
  `IdLugar` int(11) NOT NULL,
  `Lugar` varchar(50) DEFAULT NULL,
  `Disponibilidad` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `disponibilidad`
--

INSERT INTO `disponibilidad` (`IdLugar`, `Lugar`, `Disponibilidad`) VALUES
(1, 'A1', 'Falso'),
(2, 'A2', 'Falso'),
(3, 'A3', 'Activo'),
(4, 'A4', 'Activo'),
(5, 'A5', 'Activo'),
(6, 'A6', 'Activo'),
(7, 'A7', 'Activo'),
(8, 'A8', 'Activo'),
(9, 'A9', 'Activo'),
(10, 'A10', 'Activo'),
(11, 'A11', 'Activo'),
(12, 'A12', 'Activo'),
(13, 'A13', 'Activo'),
(14, 'A14', 'Activo'),
(15, 'A15', 'Falso'),
(16, 'A16', 'Activo'),
(17, 'A17', 'Activo'),
(18, 'A18', 'Falso'),
(19, 'A19', 'Activo'),
(20, 'A20', 'Activo'),
(21, 'A21', 'Activo'),
(22, 'A22', 'Falso'),
(23, 'A23', 'Activo'),
(24, 'A24', 'Activo'),
(25, 'A25', 'Activo'),
(26, 'A26', 'Activo'),
(27, 'A27', 'Activo'),
(28, 'A28', 'Activo'),
(29, 'A29', 'Activo'),
(30, 'A30', 'Activo'),
(31, 'A31', 'Activo'),
(32, 'A32', 'Activo'),
(33, 'A33', 'Activo'),
(34, 'A34', 'Activo'),
(35, 'A35', 'Activo'),
(36, 'A36', 'Activo'),
(37, 'A37', 'Activo'),
(38, 'A38', 'Activo'),
(39, 'A39', 'Activo'),
(40, 'A40', 'Activo'),
(41, 'A41', 'Activo'),
(42, 'A42', 'Activo'),
(43, 'A43', 'Activo'),
(44, 'A44', 'Activo'),
(45, 'A45', 'Activo'),
(46, 'A46', 'Activo'),
(47, 'A47', 'Activo'),
(48, 'A48', 'Activo'),
(49, 'A49', 'Activo'),
(50, 'A50', 'Activo'),
(51, 'A51', 'Activo'),
(52, 'A52', 'Activo'),
(53, 'A53', 'Activo'),
(54, 'A54', 'Activo'),
(55, 'A55', 'Activo'),
(56, 'A56', 'Activo'),
(57, 'A57', 'Activo'),
(58, 'A58', 'Activo'),
(59, 'A59', 'Activo'),
(60, 'A60', 'Activo'),
(61, 'A61', 'Activo'),
(62, 'A62', 'Activo'),
(63, 'A63', 'Activo'),
(64, 'A64', 'Activo'),
(65, 'A65', 'Activo'),
(66, 'A66', 'Activo'),
(67, 'A67', 'Activo'),
(68, 'A68', 'Activo'),
(69, 'A69', 'Activo'),
(70, 'A70', 'Activo'),
(71, 'A71', 'Activo'),
(72, 'A72', 'Activo'),
(73, 'A73', 'Activo'),
(74, 'A74', 'Activo'),
(75, 'A75', 'Activo'),
(76, 'A76', 'Activo'),
(77, 'A77', 'Activo'),
(78, 'A78', 'Activo'),
(79, 'A79', 'Activo'),
(80, 'A80', 'Activo'),
(81, 'A81', 'Falso'),
(82, 'A82', 'Falso'),
(83, 'A83', 'Falso'),
(84, 'A84', 'Falso'),
(85, 'A85', 'Falso'),
(86, 'A86', 'Falso'),
(87, 'A87', 'Falso'),
(88, 'A88', 'Falso'),
(89, 'A89', 'Falso'),
(90, 'A90', 'Falso'),
(91, 'A91', 'Falso'),
(92, 'A92', 'Falso'),
(93, 'A93', 'Falso'),
(94, 'A94', 'Falso'),
(95, 'A95', 'Falso'),
(96, 'A96', 'Falso'),
(97, 'A97', 'Falso'),
(98, 'A98', 'Falso'),
(99, 'A99', 'Falso'),
(100, 'A100', 'Falso');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `disponibilidadp`
--
CREATE TABLE `disponibilidadp` (
`Fecha_Ingreso` date
,`Hora_Entrada` time
,`PlacasVehiculo` varchar(100)
,`Lugar` varchar(100)
,`NombreCliente` varchar(100)
,`Marca` varchar(30)
,`Tipo` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `IdEmpleado` int(11) NOT NULL,
  `TipoDeDocumento` varchar(100) DEFAULT NULL,
  `Documento` varchar(100) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Cargo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`IdEmpleado`, `TipoDeDocumento`, `Documento`, `Nombre`, `Apellidos`, `Cargo`) VALUES
(9, 'Cedula de ciudadania', '79958300', 'Miguel', 'Galindo Sánchez', 'Administrador'),
(11, 'Cedula de ciudadania', '79448730', 'Juan carlos', 'Salcedo Barreto', 'Administrador'),
(14, 'Cedula de ciudadania', '80125920', 'Freddy Camilo', 'Ardila Amortegui', 'Gerente'),
(15, 'Cedula de ciudadania', '98765432', 'Mario Manuel', 'Murillo Toro', 'Cajero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `IdControlIngreso` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `tiempo` time NOT NULL,
  `TipoTarifa` varchar(100) NOT NULL,
  `PlacasVehiculo` varchar(100) NOT NULL,
  `NombreEmpleado` varchar(100) NOT NULL,
  `Lugar` varchar(100) NOT NULL,
  `fecha-salida` date NOT NULL,
  `hora-salida` time NOT NULL,
  `estado` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`IdControlIngreso`, `fecha`, `tiempo`, `TipoTarifa`, `PlacasVehiculo`, `NombreEmpleado`, `Lugar`, `fecha-salida`, `hora-salida`, `estado`) VALUES
(16, '2019-04-09', '15:50:00', 'Minuto', 'ARX20E', 'Freddy Ardila', 'A1', '0000-00-00', '00:00:00', ''),
(17, '2019-04-09', '16:30:00', 'Hora', 'AER56U', 'Freddy Ardila', 'A2', '0000-00-00', '00:00:00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `id_nivel` int(11) NOT NULL,
  `nivel` varchar(100) NOT NULL,
  `Estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`id_nivel`, `nivel`, `Estado`) VALUES
(2, 'Administrador', 'Falso'),
(3, 'Supervisor', 'Verdadero'),
(4, 'Vendedor', 'Verdadero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifas`
--

CREATE TABLE `tarifas` (
  `id_tarifa` int(11) NOT NULL,
  `tarifa` varchar(100) NOT NULL,
  `valor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tarifas`
--

INSERT INTO `tarifas` (`id_tarifa`, `tarifa`, `valor`) VALUES
(1, 'Minuto', ''),
(2, 'Hora', '3600'),
(3, 'Convenio', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiempo`
--

CREATE TABLE `tiempo` (
  `IdControlTiempo` int(11) NOT NULL,
  `HoraEntrada` time(6) DEFAULT NULL,
  `HoraSalida` time(6) DEFAULT NULL,
  `PlacaVehiculo` varchar(90) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tiempo`
--

INSERT INTO `tiempo` (`IdControlTiempo`, `HoraEntrada`, `HoraSalida`, `PlacaVehiculo`) VALUES
(1, '16:20:00.000000', '18:24:00.000000', '1'),
(2, '11:30:00.000000', '12:04:00.000000', '2'),
(3, '16:30:00.000000', '18:44:00.000000', '3'),
(4, '11:30:00.000000', '11:50:00.000000', '4'),
(5, '10:00:00.000000', '13:20:00.000000', '5'),
(12, '19:30:00.000000', '22:00:00.000000', 'MNT56A'),
(13, '23:00:00.000000', '23:59:00.000000', 'MNT56A'),
(14, '20:53:00.000000', '20:54:00.000000', 'RTY678');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_documento`
--

CREATE TABLE `tipo_de_documento` (
  `id_tipo` int(11) NOT NULL,
  `nombre_documento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_de_documento`
--

INSERT INTO `tipo_de_documento` (`id_tipo`, `nombre_documento`) VALUES
(1, 'Cedula de Ciudadania'),
(2, 'Cédula de extranjeria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_vehiculo`
--

CREATE TABLE `tipo_de_vehiculo` (
  `id_tipov` int(11) NOT NULL,
  `nombre_tipov` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_de_vehiculo`
--

INSERT INTO `tipo_de_vehiculo` (`id_tipov`, `nombre_tipov`) VALUES
(1, 'Automóvil'),
(2, 'MicroBus'),
(3, 'Motocicleta'),
(4, 'Bicicleta'),
(5, 'Tractocamión');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `correo` char(100) NOT NULL,
  `nombre` char(50) NOT NULL,
  `usuario` char(50) DEFAULT NULL,
  `contrasena` char(50) DEFAULT NULL,
  `privilegio` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `correo`, `nombre`, `usuario`, `contrasena`, `privilegio`) VALUES
(7, 'freddycardila@gmail.com', 'Freddy Ardila', 'freddycardila', 'Y2FtaWxvMDEx', 'Superusuario'),
(37, 'lalofiquitiva@misena.edu.co', 'Heladio Fiquitiva', 'hfiquitiva', 'MTIzNDU2Nzg5MA==', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `IdVehiculoCliente` int(11) NOT NULL,
  `TipoV` varchar(100) NOT NULL,
  `Placas` varchar(20) DEFAULT NULL,
  `Marca` varchar(30) DEFAULT NULL,
  `Referencia` varchar(30) DEFAULT NULL,
  `Color` varchar(30) DEFAULT NULL,
  `Modelo` varchar(30) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `NombreCliente` varchar(100) NOT NULL,
  `Estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`IdVehiculoCliente`, `TipoV`, `Placas`, `Marca`, `Referencia`, `Color`, `Modelo`, `Descripcion`, `NombreCliente`, `Estado`) VALUES
(2, 'Motocicleta', 'ARX20E', 'Yamaha', 'r15', 'Negro plateado', '2009', 'sin farola', 'Freddy  Ardila', 'Inactivo'),
(3, 'Motocicleta', 'ERT45B', 'SUZUKI', 'C70', 'AZUL', '2000', 'SIN PARRILLA', 'otro cliente con apellido', 'Inactivo'),
(4, 'Micro Bus', 'XCV345', 'Chevrolet', 'Hassim', 'Blanco', '2000', 'Puerta derecha rayada', 'otro cliente con apellido', 'Inactivo'),
(5, 'Motocicleta', '2ERTYUI', 'YAMAHA', 'tt', 'Beige', '1990', 'Carro trajeado', 'Mario Anibal Beltr�n Ruiz', 'Inactivo'),
(6, 'Autom�vil', 'RCB789', 'Mazda', '3', 'Gris', '2009', 'Ninguna', 'Mario Anibal Beltr�n Ruiz', 'Inactivo'),
(7, 'Motocicleta', 'AER56U', 'Yamaha', 'R3', 'Azul y blanco', '2006', 'Ninguna', 'Freddy  Ardila', 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura para la vista `disponibilidadp`
--
DROP TABLE IF EXISTS `disponibilidadp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `disponibilidadp`  AS  select distinct `ingresos`.`fecha` AS `Fecha_Ingreso`,`ingresos`.`tiempo` AS `Hora_Entrada`,`ingresos`.`PlacasVehiculo` AS `PlacasVehiculo`,`ingresos`.`Lugar` AS `Lugar`,`vehiculos`.`NombreCliente` AS `NombreCliente`,`vehiculos`.`Marca` AS `Marca`,`vehiculos`.`TipoV` AS `Tipo` from (`ingresos` left join `vehiculos` on((convert(`ingresos`.`PlacasVehiculo` using utf8) = `vehiculos`.`Placas`))) order by `ingresos`.`Lugar` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cantidaddeparqueaderos`
--
ALTER TABLE `cantidaddeparqueaderos`
  ADD PRIMARY KEY (`id_cantidad`);

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id_cargo`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`IdCliente`);

--
-- Indices de la tabla `convenios`
--
ALTER TABLE `convenios`
  ADD PRIMARY KEY (`IdConvenio`);

--
-- Indices de la tabla `disponibilidad`
--
ALTER TABLE `disponibilidad`
  ADD PRIMARY KEY (`IdLugar`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`IdEmpleado`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`IdControlIngreso`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`id_nivel`);

--
-- Indices de la tabla `tiempo`
--
ALTER TABLE `tiempo`
  ADD PRIMARY KEY (`IdControlTiempo`);

--
-- Indices de la tabla `tipo_de_documento`
--
ALTER TABLE `tipo_de_documento`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `tipo_de_vehiculo`
--
ALTER TABLE `tipo_de_vehiculo`
  ADD PRIMARY KEY (`id_tipov`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`IdVehiculoCliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cantidaddeparqueaderos`
--
ALTER TABLE `cantidaddeparqueaderos`
  MODIFY `id_cantidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `IdCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `convenios`
--
ALTER TABLE `convenios`
  MODIFY `IdConvenio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `disponibilidad`
--
ALTER TABLE `disponibilidad`
  MODIFY `IdLugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `IdEmpleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `IdControlIngreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `nivel`
--
ALTER TABLE `nivel`
  MODIFY `id_nivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tiempo`
--
ALTER TABLE `tiempo`
  MODIFY `IdControlTiempo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `tipo_de_documento`
--
ALTER TABLE `tipo_de_documento`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tipo_de_vehiculo`
--
ALTER TABLE `tipo_de_vehiculo`
  MODIFY `id_tipov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `IdVehiculoCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
