-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2017 a las 16:07:02
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mercamira`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `categoriaid` int(11) NOT NULL,
  `nombre_categoria` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`categoriaid`, `nombre_categoria`) VALUES
(1, 'Programacion'),
(2, 'Bases de datos'),
(3, 'Multimedia'),
(4, 'Internet');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editores`
--

CREATE TABLE `editores` (
  `editorid` int(11) NOT NULL,
  `nombre_editorial` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `editores`
--

INSERT INTO `editores` (`editorid`, `nombre_editorial`) VALUES
(1, 'Anaya multimedia'),
(2, 'MC Grad Hill'),
(3, 'Para-info'),
(4, 'Parafox');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `libro_id` int(11) NOT NULL,
  `nombre_libro` varchar(100) NOT NULL DEFAULT '',
  `descripcion` longtext NOT NULL,
  `categoriaid` int(11) NOT NULL DEFAULT '0',
  `editorid` int(11) NOT NULL DEFAULT '0',
  `precio` double NOT NULL DEFAULT '0',
  `entrega` int(11) NOT NULL DEFAULT '0',
  `imagen` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`libro_id`, `nombre_libro`, `descripcion`, `categoriaid`, `editorid`, `precio`, `entrega`, `imagen`) VALUES
(1, 'PREMIERE PRO', 'La coleccion Manuales Imprescindibles le acerca a los productos lideres de la informatica de forma amena y precisa. Como su nombre indica, encontrar? la informacion imprescindible para convertirse en un experto usuario en los temas m?s importantes de cada aplicacion. No dude mas, observe la lista de esta articulada coleccion, con lenguaje  propio, ejemplos pr?cticos y recursos de estilo muy marcados.', 3, 2, 21.85, 5, 'premiere01.jpg'),
(2, 'POSTPRODUCCION ORDENADOR', 'Este libro analiza una completa panoramica sobre el trabajo de postproduccion digital de sonido por ordenador. La obra explica los programas mas conocidos del mercado y esta escrita de forma clara y concisa, lo que la convierte en un manual imprescindible tanto para el usuario principiante interesado en la manipulacion de sonido por medio de ordenador, como para el profesional que desee profundizar en el estudio de este campo.', 3, 1, 14.25, 5, 'producionsonido.jpg'),
(4, 'EL LIBRO OFICIAL DE ADOBE ILLUSTRATOR CS', 'Este libro analiza una completa panoramica sobre el trabajo de postproduccion digital de sonido por ordenador. La obra explica los programas mas conocidos del mercado y esta escrita de forma clara y concisa, lo que la convierte en un manual imprescindible tanto para el usuario principiante interesado en la manipulacion de sonido por medio de ordenador, como para el profesional que desee profundizar en el estudio de este campo.', 3, 2, 36.32, 5, 'ilustratos.jpg'),
(5, 'PHOTOSHOP CS CURSO COMPLETO', 'Este libro analiza una completa panoramica sobre el trabajo de postproduccion digital de sonido por ordenador. La obra explica los programas mas conocidos del mercado y esta escrita de forma clara y concisa, lo que la convierte en un manual imprescindible tanto para el usuario principiante interesado en la manipulacion de sonido por medio de ordenador, como para el profesional que desee profundizar en el estudio de este campo.', 3, 1, 37.25, 15, 'photoshop02.jpg'),
(6, 'DISE?O DE INTERFAZ DE USUARIO PARA APLICACIONES WINDOWS', 'Este libro analiza una completa panoramica sobre el trabajo de postproduccion digital de sonido por ordenador. La obra explica los programas mas conocidos del mercado y esta escrita de forma clara y concisa, lo que la convierte en un manual imprescindible tanto para el usuario principiante interesado en la manipulacion de sonido por medio de ordenador, como para el profesional que desee profundizar en el estudio de este campo.', 3, 3, 40.1, 5, 'interfaz.jpg'),
(7, 'GU?A DE APRENDIZAJE PDF CON ACROBAT 5', 'Este libro analiza una completa panoramica sobre el trabajo de postproduccion digital de sonido por ordenador. La obra explica los programas mas conocidos del mercado y esta escrita de forma clara y concisa, lo que la convierte en un manual imprescindible tanto para el usuario principiante interesado en la manipulacion de sonido por medio de ordenador, como para el profesional que desee profundizar en el estudio de este campo.', 3, 4, 21.75, 5, 'pdf.jpg'),
(9, 'INTRODUCCI?N A LA PROGRAMACI?N ORIENTADA A OBJETOS CON VISUAL BASIC.NET', 'A medida que avance en la lectura de este libro, aprender? c?mo analizar los requisitos empresariales de una aplicaci?n, c?mo modelar los objetos y las relaciones implicadas en el dise?o elegido y, por ?ltimo, c?mo implementar la aplicaci?n utilizando Visua Basic .NET. Tambi?n aprender? los fundamentos del dise?o de software, del Lenguaje de Modelado Unificado, de la programaci?n orientada a  objetos y de Visual Basic. NET.', 1, 2, 31.52, 5, 'programacion-objetos01.jpg'),
(10, 'JAVASCRIPT', 'Este libro analiza una completa panoramica sobre el trabajo de postproduccion digital de sonido por ordenador. La obra explica los programas mas conocidos del mercado y esta escrita de forma clara y concisa, lo que la convierte en un manual imprescindible tanto para el usuario principiante interesado en la manipulacion de sonido por medio de ordenador, como para el profesional que desee profundizar en el estudio de este campo.', 1, 4, 29.2, 15, 'javascript01.jpg'),
(11, 'FLASH 5 ACTION SCRIPT STUDIO: CURSO DE PROGRAMACI?N', 'Este libro analiza una completa panoramica sobre el trabajo de postproduccion digital de sonido por ordenador. La obra explica los programas mas conocidos del mercado y esta escrita de forma clara y concisa, lo que la convierte en un manual imprescindible tanto para el usuario principiante interesado en la manipulacion de sonido por medio de ordenador, como para el profesional que desee profundizar en el estudio de este campo.', 1, 3, 23.37, 5, 'flash01.jpg'),
(12, 'CURSO DE PROGRAMACI?N', 'Este libro analiza una completa panoramica sobre el trabajo de postproduccion digital de sonido por ordenador. La obra explica los programas mas conocidos del mercado y esta escrita de forma clara y concisa, lo que la convierte en un manual imprescindible tanto para el usuario principiante interesado en la manipulacion de sonido por medio de ordenador, como para el profesional que desee profundizar en el estudio de este campo.', 1, 3, 18.2, 5, 'programacion01.jpg'),
(13, 'ORACLE DATABASE 10G.: GU?A DE APRENDIZAJE', 'Aprenda los conceptos fundamentales sobre administraci?n y programaci?n de Oracle Database 10g con esta gu?a de aprendizaje paso a paso. Conozca, a trav?s de los tutoriales did?cticos, los fundamentos de la base de datos, el papel que desempe?a el administrador y las principales caracter?sticas del producto. Tambi?n se proporciona una detallada introducci?n a la programaci?n en SQL, PL/SQL, Java y XML. Convi?rtase en un experto administrador, desarrollador o usuario de Oracle gracias al m?todo de aprendizaje contrastado de esta gu?a de Oracle Press.\r\n', 2, 3, 30.24, 15, 'oracle01.jpg'),
(14, 'MICROSOFT SQL SERVER 2000', 'SQL Server 2000 es la ?ltima versi?n del ya conocido RDBMS de Microsoft, sucesor del exitoso SQL Server 7. Se trata de un servidor altamente escalable, muy fiable y de alto rendimiento, especialmente dirigido a los usuarios de sistemas operativos de Microsoft, como Windows NT o Windows 2000. Una gu?a ?til e inagotable de datos, con la informaci?n m?s novedosa.', 2, 2, 13.25, 5, 'sql01.jpg'),
(15, 'MySQL', 'MySQL, el sistema de gesti?n de bases de datos relacional de c?digo abierto por excelencia, sigue ganando usuarios de manera asombrosa. Aunque ya es conocida su sencillez de uso y su velocidad, capaz de manejar grandes bases de datos con millones de registros, se ha mejorado a s? mismo para adaptarse especialmente al desarrollo de sitios web y aplicaciones basadas en bases de datos. Esta obra proporciona una gu?a exhaustiva para utilizar MySQL de una forma realmente efectiva y productiva, poniendo especial ?nfasis en sus capacidades ?nicas y el modo de utilizarlas. Encontrar? informaci?n fundamental sobre todo el proceso, desde los fundamentos b?sicos sobre c?mo obtener informaci?n de una base de datos y formular consultas, hasta c?mo emplear MySQL con PHP o Perl para generar p?ginas web din?micas o administrar servidores MySQL.', 2, 2, 55.7, 5, 'mysql01.jpg'),
(16, 'MICROSOFT SQL SERVER 2000: MANUAL DEL ADMINISTRADOR', 'Microsoft SQL Server 2000 es la referencia concisa y sencilla de utilizar para tratar con todos los detalles de la administraci?n de bases de datos Microsoft SQL Server 2000. Aprenda a analizar y monitorizar SQL Server, a llevar a cabo copias de seguridad y recuperaci?n, y a hacerse cargo de la automatizaci?n y el mantenimiento.', 2, 3, 36.68, 5, 'sql02.jpg'),
(17, 'E-LEARNING. IMPLANTACI?N DE PROYECTOS DE FORMACI?N ON-LINE', 'Este libro analiza una completa panoramica sobre el trabajo de postproduccion digital de sonido por ordenador. La obra explica los programas mas conocidos del mercado y esta escrita de forma clara y concisa, lo que la convierte en un manual imprescindible tanto para el usuario principiante interesado en la manipulacion de sonido por medio de ordenador, como para el profesional que desee profundizar en el estudio de este campo.', 4, 1, 20.56, 5, 'elearning01.jpg'),
(18, 'SUPERUTILIDADES PARA WEBMASTERS', 'Este libro es una herramienta imprescindible para todas las personas relacionadas con la creaci?n de aplicaciones Web, o que quieran aprender a crearlas. Se tratan varias tecnolog?as y lenguajes, y se proporcionan utilidades que pueden ser incorporadas en los sitios Web que se est?n desarrollando. Va dirigido a programadores de p?ginas Web, analistas y dise?adores de sitios Web, Webmasters, y personas con conocimientos de programaci?n.', 4, 3, 24.54, 5, 'util01.jpg'),
(19, 'GOOGLE. LOS MEJORES TRUCOS', 'Este libro analiza una completa panoramica sobre el trabajo de postproduccion digital de sonido por ordenador. La obra explica los programas mas conocidos del mercado y esta escrita de forma clara y concisa, lo que la convierte en un manual imprescindible tanto para el usuario principiante interesado en la manipulacion de sonido por medio de ordenador, como para el profesional que desee profundizar en el estudio de este campo.', 4, 2, 32.63, 5, 'google01.jpg'),
(20, 'COMUNICACI?N EN INTERNET del 2006', 'Este libro analiza una completa panoramica sobre el trabajo de postproduccion digital de sonido por ordenador. La obra explica los programas mas conocidos del mercado y esta escrita de forma clara y concisa, lo que la convierte en un manual imprescindible tanto para el usuario principiante interesado en la manipulacion de sonido por medio de ordenador, como para el profesional que desee profundizar en el estudio de este campo.', 4, 1, 21.98, 15, 'comunica01.jpg'),
(21, 'C?MO CREAR UNA TIENDA VIRTUAL CON PHP 5 Y MYSQL 5', 'Los objetivos del libro son:\r\n- Construir un sitio Web con una aplicaci?n de comercio electr?nico, que nos permitir? poner a la venta cualquier tipo de cat?logo de productos, y un foro de art?culos.\r\n- Ense?ar a dise?ar, desarrollar y programar un sitio web con el entorno AMP (Apache, MySQL y PHP).\r\n- Suministrar un paquete completo y funcional de dos aplicaciones Web integradas f?cilmente ampliables y personalizables.', 1, 4, 21.76, 5, 'php5.jpg'),
(22, 'SEGURIDAD EN INTERNET Y MEDIOS DE PAGO ELECTR?NICOS', 'Este libro analiza una completa panoramica sobre el trabajo de postproduccion digital de sonido por ordenador. La obra explica los programas mas conocidos del mercado y esta escrita de forma clara y concisa, lo que la convierte en un manual imprescindible tanto para el usuario principiante interesado en la manipulacion de sonido por medio de ordenador, como para el profesional que desee profundizar en el estudio de este campo.', 4, 4, 15.74, 15, 'seguridad.jpg'),
(23, 'INTERNET EN CASA', 'Este libro analiza una completa panoramica sobre el trabajo de postproduccion digital de sonido por ordenador. La obra explica los programas mas conocidos del mercado y esta escrita de forma clara y concisa, lo que la convierte en un manual imprescindible tanto para el usuario principiante interesado en la manipulacion de sonido por medio de ordenador, como para el profesional que desee profundizar en el estudio de este campo.', 4, 4, 12.87, 5, 'internet01.jpg'),
(24, 'SERVICIOS GRATUITOS EN INTERNET PARA EL WEBMASTER', 'Este libro analiza una completa panoramica sobre el trabajo de postproduccion digital de sonido por ordenador. La obra explica los programas mas conocidos del mercado y esta escrita de forma clara y concisa, lo que la convierte en un manual imprescindible tanto para el usuario principiante interesado en la manipulacion de sonido por medio de ordenador, como para el profesional que desee profundizar en el estudio de este campo.', 1, 4, 12.23, 15, 'servicios01.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`categoriaid`);

--
-- Indices de la tabla `editores`
--
ALTER TABLE `editores`
  ADD PRIMARY KEY (`editorid`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`libro_id`),
  ADD KEY `LibrosCat` (`categoriaid`),
  ADD KEY `LibrosEdit` (`editorid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `categoriaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `editores`
--
ALTER TABLE `editores`
  MODIFY `editorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `libro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `CLibrosCat` FOREIGN KEY (`categoriaid`) REFERENCES `categorias` (`categoriaid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `CLibrosEdit` FOREIGN KEY (`editorid`) REFERENCES `editores` (`editorid`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
