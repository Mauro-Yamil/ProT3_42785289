-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-07-2024 a las 03:16:23
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `martinez_mauro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id_perfiles` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id_perfiles`, `descripcion`) VALUES
(1, 'admin'),
(2, 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `perfil_id` int(11) NOT NULL DEFAULT 2,
  `baja` varchar(2) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `email`, `usuario`, `pass`, `perfil_id`, `baja`) VALUES
(1, 'Mauro', 'Martinez', 'yo1234@algo.com', 'Mau12', '$2y$10$5ziSBI/VP6e9.g8XqLtPBe8FymnlH/7JEeL7C5dHBeoB0p0QZNRbm', 2, 'NO'),
(2, 'Juan Carlos', 'Garcia', 'Garcia51@email.com', 'GARCIA10', '$2y$10$ZRs6z068TpXlEOf4j73HXuKBuSRSwmSQcYNuK.3mQ1ADFKeTUn4hW', 2, 'NO'),
(3, 'Agustina', 'Zamudio', 'zamu23@email.com', 'AgusXD', '$2y$10$imxecbG6J5ndkT0Inc0b7uFVQsPCn8VxU8tbOl25e6rKni/8rXhfu', 2, 'NO'),
(4, 'Carlos', 'Rios', 'CarR@email.com', 'Carummm', '$2y$10$FA9of9JYZZLJgQWXJ8/S0.wj59NgvEJxDCd3muFAeFc49pJA1Hm3C', 2, 'NO'),
(8, 'Mirtha', 'Legrand', 'LaMirta@email.com', 'LaMirtii', '$2y$10$HXugcutbEjYTNhW/HJwTfeu6A58R99YIGHtJF8mxu0Hvg43PY4xi6', 2, 'NO'),
(9, 'Lionel Andres', 'Messi Cuccittini', 'Goat8BalonesDeOro@email.com', 'LaCabra', '$2y$10$4Goc/OGX46mmDnOBZuw/getuiT6hkDMHskjtt8foXQEOgWob6uN4G', 2, 'NO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id_perfiles`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id_perfiles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
