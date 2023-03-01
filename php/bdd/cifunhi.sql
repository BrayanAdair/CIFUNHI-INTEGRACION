-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2022 a las 09:29:30
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cifunhi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(15) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `ape_p` varchar(255) DEFAULT NULL,
  `ape_m` varchar(255) DEFAULT NULL,
  `edad` int(5) DEFAULT NULL,
  `carg` varchar(255) DEFAULT NULL,
  `pss` varchar(100) NOT NULL,
  `id_roll` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id_admin`, `nom`, `ape_p`, `ape_m`, `edad`, `carg`, `pss`, `id_roll`) VALUES
(1, 'root', 'root', 'root', 22, 'root', 'root', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE `courses` (
  `id_course` int(11) NOT NULL,
  `tip_niv` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roll`
--

CREATE TABLE `roll` (
  `id_roll` int(10) NOT NULL,
  `roll` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roll`
--

INSERT INTO `roll` (`id_roll`, `roll`) VALUES
(1, 'administradores'),
(2, 'estudiantes'),
(3, 'profesores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `id_student` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `ape_p` varchar(255) DEFAULT NULL,
  `ape_m` varchar(255) DEFAULT NULL,
  `edad` int(5) DEFAULT NULL,
  `pss` varchar(100) NOT NULL,
  `id_roll` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`id_student`, `nom`, `ape_p`, `ape_m`, `edad`, `pss`, `id_roll`) VALUES
(1, 'josue', 'gomez', 'omaña', 22, '1099', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher`
--

CREATE TABLE `teacher` (
  `id_teacher` int(15) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `ape_p` varchar(255) DEFAULT NULL,
  `ape_m` varchar(255) DEFAULT NULL,
  `edad` int(5) DEFAULT NULL,
  `carg` varchar(255) DEFAULT NULL,
  `pss` varchar(100) NOT NULL,
  `id_roll` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `teacher`
--

INSERT INTO `teacher` (`id_teacher`, `nom`, `ape_p`, `ape_m`, `edad`, `carg`, `pss`, `id_roll`) VALUES
(1, 'cifunhi', 'cifunhi', 'cifunhi', 100, 'cifunhi', 'cifunhi', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tem_con_anima`
--

CREATE TABLE `tem_con_anima` (
  `id_tem_con_anima` int(15) NOT NULL,
  `nombre_tem` varchar(255) DEFAULT NULL,
  `audio` blob DEFAULT NULL,
  `tipo_voz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tem_con_dias`
--

CREATE TABLE `tem_con_dias` (
  `id_tem_con_dias` int(15) NOT NULL,
  `nombre_tem` varchar(255) DEFAULT NULL,
  `audio` blob DEFAULT NULL,
  `tipo_voz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tem_con_frutas`
--

CREATE TABLE `tem_con_frutas` (
  `id_tem_con_frutas` int(15) NOT NULL,
  `nombre_tem` varchar(255) DEFAULT NULL,
  `audio` blob DEFAULT NULL,
  `tipo_voz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tem_con_huesos`
--

CREATE TABLE `tem_con_huesos` (
  `id_tem_con_huesos` int(15) NOT NULL,
  `nombre_tem` varchar(255) DEFAULT NULL,
  `audio` blob DEFAULT NULL,
  `tipo_voz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tem_con_meses`
--

CREATE TABLE `tem_con_meses` (
  `id_tem_con_meses` int(15) NOT NULL,
  `nombre_tem` varchar(255) DEFAULT NULL,
  `audio` blob DEFAULT NULL,
  `tipo_voz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tem_con_nombres`
--

CREATE TABLE `tem_con_nombres` (
  `id_tem_con_nombres` int(15) NOT NULL,
  `nombre_tem` varchar(255) DEFAULT NULL,
  `audio` blob DEFAULT NULL,
  `tipo_voz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tem_con_partes_cuerpo`
--

CREATE TABLE `tem_con_partes_cuerpo` (
  `id_tem_con_partes_cuerpo` int(15) NOT NULL,
  `nombre_tem` varchar(255) DEFAULT NULL,
  `audio` blob DEFAULT NULL,
  `tipo_voz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tem_con_verduras`
--

CREATE TABLE `tem_con_verduras` (
  `id_tem_con_verduras` int(15) NOT NULL,
  `nombre_tem` varchar(255) DEFAULT NULL,
  `audio` blob DEFAULT NULL,
  `tipo_voz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tem_letras`
--

CREATE TABLE `tem_letras` (
  `id_tem_letras` int(15) NOT NULL,
  `nom_tem` varchar(255) DEFAULT NULL,
  `audio` blob DEFAULT NULL,
  `tipo_voz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tem_num`
--

CREATE TABLE `tem_num` (
  `id_tem_num` int(15) NOT NULL,
  `nom_tem` varchar(255) DEFAULT NULL,
  `audio` blob DEFAULT NULL,
  `tipo_voz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tem_silabas`
--

CREATE TABLE `tem_silabas` (
  `id_tem_silabas` int(15) NOT NULL,
  `nom_tem` varchar(255) DEFAULT NULL,
  `audio` blob DEFAULT NULL,
  `tipo_voz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tem_sin_anima`
--

CREATE TABLE `tem_sin_anima` (
  `id_tem_sin_anima` int(15) NOT NULL,
  `nombre_tem` varchar(255) DEFAULT NULL,
  `audio` blob DEFAULT NULL,
  `tipo_voz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tem_sin_dias`
--

CREATE TABLE `tem_sin_dias` (
  `id_tem_sin_dias` int(15) NOT NULL,
  `nombre_tem` varchar(255) DEFAULT NULL,
  `audio` blob DEFAULT NULL,
  `tipo_voz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tem_sin_frutas`
--

CREATE TABLE `tem_sin_frutas` (
  `id_tem_sin_frutas` int(15) NOT NULL,
  `nombre_tem` varchar(255) DEFAULT NULL,
  `audio` blob DEFAULT NULL,
  `tipo_voz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tem_sin_huesos`
--

CREATE TABLE `tem_sin_huesos` (
  `id_tem_sin_huesos` int(15) NOT NULL,
  `nombre_tem` varchar(255) DEFAULT NULL,
  `audio` blob DEFAULT NULL,
  `tipo_voz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tem_sin_meses`
--

CREATE TABLE `tem_sin_meses` (
  `id_tem_sin_meses` int(15) NOT NULL,
  `nombre_tem` varchar(255) DEFAULT NULL,
  `audio` blob DEFAULT NULL,
  `tipo_voz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tem_sin_nombres`
--

CREATE TABLE `tem_sin_nombres` (
  `id_tem_sin_nombres` int(15) NOT NULL,
  `nombre_tem` varchar(255) DEFAULT NULL,
  `audio` blob DEFAULT NULL,
  `tipo_voz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tem_sin_partes_cuerpo`
--

CREATE TABLE `tem_sin_partes_cuerpo` (
  `id_tem_sin_partes_cuerpo` int(15) NOT NULL,
  `nombre_tem` varchar(255) DEFAULT NULL,
  `audio` blob DEFAULT NULL,
  `tipo_voz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tem_sin_verduras`
--

CREATE TABLE `tem_sin_verduras` (
  `id_tem_sin_verduras` int(15) NOT NULL,
  `nombre_tem` varchar(255) DEFAULT NULL,
  `audio` blob DEFAULT NULL,
  `tipo_voz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tem_vocales`
--

CREATE TABLE `tem_vocales` (
  `id_tem_vocales` int(15) NOT NULL,
  `nom_tem` varchar(255) DEFAULT NULL,
  `audio` blob DEFAULT NULL,
  `tipo_voz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `id_roll` (`id_roll`);

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id_course`);

--
-- Indices de la tabla `roll`
--
ALTER TABLE `roll`
  ADD PRIMARY KEY (`id_roll`);

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id_student`),
  ADD UNIQUE KEY `id_roll` (`id_roll`);

--
-- Indices de la tabla `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id_teacher`),
  ADD UNIQUE KEY `id_roll` (`id_roll`);

--
-- Indices de la tabla `tem_con_anima`
--
ALTER TABLE `tem_con_anima`
  ADD PRIMARY KEY (`id_tem_con_anima`);

--
-- Indices de la tabla `tem_con_dias`
--
ALTER TABLE `tem_con_dias`
  ADD PRIMARY KEY (`id_tem_con_dias`);

--
-- Indices de la tabla `tem_con_frutas`
--
ALTER TABLE `tem_con_frutas`
  ADD PRIMARY KEY (`id_tem_con_frutas`);

--
-- Indices de la tabla `tem_con_huesos`
--
ALTER TABLE `tem_con_huesos`
  ADD PRIMARY KEY (`id_tem_con_huesos`);

--
-- Indices de la tabla `tem_con_meses`
--
ALTER TABLE `tem_con_meses`
  ADD PRIMARY KEY (`id_tem_con_meses`);

--
-- Indices de la tabla `tem_con_nombres`
--
ALTER TABLE `tem_con_nombres`
  ADD PRIMARY KEY (`id_tem_con_nombres`);

--
-- Indices de la tabla `tem_con_partes_cuerpo`
--
ALTER TABLE `tem_con_partes_cuerpo`
  ADD PRIMARY KEY (`id_tem_con_partes_cuerpo`);

--
-- Indices de la tabla `tem_con_verduras`
--
ALTER TABLE `tem_con_verduras`
  ADD PRIMARY KEY (`id_tem_con_verduras`);

--
-- Indices de la tabla `tem_letras`
--
ALTER TABLE `tem_letras`
  ADD PRIMARY KEY (`id_tem_letras`);

--
-- Indices de la tabla `tem_num`
--
ALTER TABLE `tem_num`
  ADD PRIMARY KEY (`id_tem_num`);

--
-- Indices de la tabla `tem_silabas`
--
ALTER TABLE `tem_silabas`
  ADD PRIMARY KEY (`id_tem_silabas`);

--
-- Indices de la tabla `tem_sin_anima`
--
ALTER TABLE `tem_sin_anima`
  ADD PRIMARY KEY (`id_tem_sin_anima`);

--
-- Indices de la tabla `tem_sin_dias`
--
ALTER TABLE `tem_sin_dias`
  ADD PRIMARY KEY (`id_tem_sin_dias`);

--
-- Indices de la tabla `tem_sin_frutas`
--
ALTER TABLE `tem_sin_frutas`
  ADD PRIMARY KEY (`id_tem_sin_frutas`);

--
-- Indices de la tabla `tem_sin_huesos`
--
ALTER TABLE `tem_sin_huesos`
  ADD PRIMARY KEY (`id_tem_sin_huesos`);

--
-- Indices de la tabla `tem_sin_meses`
--
ALTER TABLE `tem_sin_meses`
  ADD PRIMARY KEY (`id_tem_sin_meses`);

--
-- Indices de la tabla `tem_sin_nombres`
--
ALTER TABLE `tem_sin_nombres`
  ADD PRIMARY KEY (`id_tem_sin_nombres`);

--
-- Indices de la tabla `tem_sin_partes_cuerpo`
--
ALTER TABLE `tem_sin_partes_cuerpo`
  ADD PRIMARY KEY (`id_tem_sin_partes_cuerpo`);

--
-- Indices de la tabla `tem_sin_verduras`
--
ALTER TABLE `tem_sin_verduras`
  ADD PRIMARY KEY (`id_tem_sin_verduras`);

--
-- Indices de la tabla `tem_vocales`
--
ALTER TABLE `tem_vocales`
  ADD PRIMARY KEY (`id_tem_vocales`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id_course` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `students`
--
ALTER TABLE `students`
  MODIFY `id_student` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id_teacher` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tem_con_anima`
--
ALTER TABLE `tem_con_anima`
  MODIFY `id_tem_con_anima` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tem_con_dias`
--
ALTER TABLE `tem_con_dias`
  MODIFY `id_tem_con_dias` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tem_con_frutas`
--
ALTER TABLE `tem_con_frutas`
  MODIFY `id_tem_con_frutas` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tem_con_huesos`
--
ALTER TABLE `tem_con_huesos`
  MODIFY `id_tem_con_huesos` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tem_con_meses`
--
ALTER TABLE `tem_con_meses`
  MODIFY `id_tem_con_meses` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tem_con_nombres`
--
ALTER TABLE `tem_con_nombres`
  MODIFY `id_tem_con_nombres` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tem_con_partes_cuerpo`
--
ALTER TABLE `tem_con_partes_cuerpo`
  MODIFY `id_tem_con_partes_cuerpo` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tem_con_verduras`
--
ALTER TABLE `tem_con_verduras`
  MODIFY `id_tem_con_verduras` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tem_letras`
--
ALTER TABLE `tem_letras`
  MODIFY `id_tem_letras` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tem_num`
--
ALTER TABLE `tem_num`
  MODIFY `id_tem_num` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tem_silabas`
--
ALTER TABLE `tem_silabas`
  MODIFY `id_tem_silabas` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tem_sin_anima`
--
ALTER TABLE `tem_sin_anima`
  MODIFY `id_tem_sin_anima` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tem_sin_dias`
--
ALTER TABLE `tem_sin_dias`
  MODIFY `id_tem_sin_dias` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tem_sin_frutas`
--
ALTER TABLE `tem_sin_frutas`
  MODIFY `id_tem_sin_frutas` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tem_sin_huesos`
--
ALTER TABLE `tem_sin_huesos`
  MODIFY `id_tem_sin_huesos` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tem_sin_meses`
--
ALTER TABLE `tem_sin_meses`
  MODIFY `id_tem_sin_meses` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tem_sin_nombres`
--
ALTER TABLE `tem_sin_nombres`
  MODIFY `id_tem_sin_nombres` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tem_sin_partes_cuerpo`
--
ALTER TABLE `tem_sin_partes_cuerpo`
  MODIFY `id_tem_sin_partes_cuerpo` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tem_sin_verduras`
--
ALTER TABLE `tem_sin_verduras`
  MODIFY `id_tem_sin_verduras` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tem_vocales`
--
ALTER TABLE `tem_vocales`
  MODIFY `id_tem_vocales` int(15) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id_roll`) REFERENCES `roll` (`id_roll`);

--
-- Filtros para la tabla `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`id_roll`) REFERENCES `roll` (`id_roll`);

--
-- Filtros para la tabla `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`id_roll`) REFERENCES `roll` (`id_roll`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
