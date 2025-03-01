-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-03-2025 a las 02:28:08
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
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Adele', 'Adele Laurie Blue Adkins (Londres, 5 de mayo de 1988), conocida como Adele, es una de las cantantes y compositoras de mayor potencia vocal, cuya portentosa voz refleja en un repertorio musical centrado en las baladas de estilo combinado entre el soul y el pop con influencias del jazz.'),
(2, 'Lana Del Rey', 'Lana Del Rey (Nueva York, Estados Unidos) es una cantante, compositora, poeta, modelo y productora aclamada internacionalmente y una de las mayores influencias musicales actuales. Ha grabado más de 7 álbumes de estudio y ha vendido más de 32 millones de discos en todo el mundo.'),
(3, 'Michael Jackson', 'Michael Joseph Jackson (Gary, Indiana, 29 de agosto de 1958 – 25 de junio de 2009, conocido en el mundo artístico como Michael Jackson, fue un cantante, compositor y bailarín estadounidense, cuya música incluye una amplia acepción de géneros como el pop, rhythm and blues (soul y funk), rock, disco y'),
(4, 'Lady Gaga', 'Lady Gaga, una artista total Stefani Joanne Angelina Germanotta (Nueva York, 1986), más conocida como Lady Gaga, es una cantante, compositora, bailarina y actriz estadounidense reconocida mundialmente por el llamativo estilo de sus vídeos musicales y presentaciones.'),
(5, 'Bruno Mars', 'Peter Gene Hernández (Honolulú, 8 de octubre de 1985), conocido artísticamente como Bruno Mars, es un cantante, compositor, productor musical y bailarín estadounidense. Comenzó a crear música desde una edad muy temprana y actuó en muchos escenarios de su pueblo natal a lo largo de su niñez, realizan'),
(6, 'Aurora', 'AURORA es cantante, compositora y productora, desde que apareciera en escena en 2015 con su EP de debut, \"Running With The Wolves\". Desde entonces ha superado los 20 millones de oyentes mensuales en Spotify y los 2.500 millones de reproducciones en conjunto y el millón de álbumes vendidos'),
(7, 'Radwimps', 'Radwimps es una banda japonesa de rock, que debutó de forma independiente en 2003. El nombre de la banda, se formó a partir de dos términos de la jerga inglesa, rad y wimp.'),
(8, 'Rihanna', 'Rihanna (nacida el 20 de febrero de 1988 en la parroquia St. Michael, Barbados) es una cantante barbadense de pop y rhythm and blues (R&B) que se convirtió en una estrella mundial a principios del siglo XXI. Es conocida por su distintiva y versátil voz y por su apariencia elegante . También es conoc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistascanciones`
--

CREATE TABLE `artistascanciones` (
  `id` int(11) NOT NULL,
  `artistas_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistascanciones`
--

INSERT INTO `artistascanciones` (`id`, `artistas_id`, `canciones_id`) VALUES
(3, 5, 11),
(4, 5, 9),
(5, 5, 8),
(6, 5, 7),
(7, 4, 2),
(8, 5, 4),
(9, 5, 5),
(10, 5, 6),
(11, 5, 10),
(12, 5, 12),
(13, 4, 1),
(14, 4, 2),
(15, 4, 3),
(16, 3, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `Nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'Bad Romance', 6, '00:05:00', '2009-04-08', 1, 'BadRomance.jpg'),
(2, 'Poker Face', 6, '00:03:32', '2008-02-11', 1, 'PokerFace.jpg'),
(3, 'Blood Mery', 6, '00:03:34', '2009-02-10', 1, 'BloodMery.jpg'),
(4, 'Talking to the moon', 6, '00:04:00', '2011-02-11', 1, 'Talkintothemoon.jpg'),
(5, 'That´s what i like ', 6, '00:04:35', '2014-02-11', 1, 'Thatswhatilike.jpg '),
(6, 'The lazy song ', 6, '00:03:40', '2016-02-05', 1, 'Thelazysong.jpg'),
(7, 'Locked out of heaven', 6, '00:03:00', '2025-02-12', 1, 'Lockedoutofheaven.jpg'),
(8, 'Leave the door open ', 2, '00:04:00', '2009-04-17', 1, 'leavethedooropen.jpg'),
(9, 'Just the way you are ', 6, '00:04:00', '2010-01-20', 1, 'justthewayyouare.jpg'),
(10, 'Treasure', 6, '00:03:40', '2007-12-17', 1, 'treasure.jpg'),
(11, '24K magic', 6, '00:04:00', '2018-02-09', 1, '24Kmagic.jpg'),
(12, 'Wake up in the sky', 2, '00:03:30', '2014-05-23', 1, 'wakeupinthesky.jpg'),
(13, 'Billie Jean ', 6, '00:02:00', '2002-09-03', 1, 'billiejean.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'K-pop'),
(2, 'Jazz'),
(3, 'Rock and roll'),
(4, 'Salsa'),
(5, 'Metal'),
(6, 'Pop'),
(7, 'Cumbia'),
(8, 'Anison');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `descripcion`, `precio`) VALUES
(1, '\r\n1 cuenta Premium\r\nCancela en cualquier momento\r\nPago por suscripción o pago único\r\n', 129),
(2, '1 cuenta Premium verificada\r\nDescuento para estudiantes que cumplen con los requisitos\r\nCancela en c', 69),
(3, '2 cuentas Premium\r\nCancela en cualquier momento\r\nPago por suscripción o pago único', 169),
(4, 'Hasta 6 cuentas Kids o Premium\r\nControla el contenido marcado como explícito.\r\nAcceso a Spotify Kids', 199);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `totalcanciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`id`, `nombre`, `usuario_id`, `duracion`, `totalcanciones`, `descripcion`, `publico`) VALUES
(1, 'Kafka', 2, '02:00:00', 100, 'hola', 0),
(2, 'Nagi', 7, '02:00:00', 70, 'hello', 0),
(3, 'Carin', 5, '02:08:07', 100, 'helo friends', 0),
(4, 'Mike', 1, '00:48:00', 30, 'Hi, i love the pizza', 0),
(5, 'Caracola', 8, '02:00:00', 150, 'I like the sun', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlistcanciones`
--

CREATE TABLE `playlistcanciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Medina Sofia Refina', 'sofigat@gmail.com', 1),
(2, 'Carlos Fernando', 'carlitos2@gmail.com', 2),
(3, 'Macaria Fernandes', 'Margot23@gmail.com', 4),
(4, 'Mario Javier Serrano', 'Mario42@gmail.com', 3),
(5, 'Luis Jorge Garcia', 'Jorcia@gmail.com', 3),
(6, 'Mercedes Margarita Hernandes', 'Mercedesfloral23@gmail.com', 4),
(7, 'Gabriel Carlos Herrera', 'Gabrielherrera@gmail.com', 2),
(8, 'Perla Herrera', 'Perlablanca@gmail.com', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artistas_id` (`artistas_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  ADD CONSTRAINT `artistascanciones_ibfk_1` FOREIGN KEY (`artistas_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artistascanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD CONSTRAINT `playlistcanciones_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
