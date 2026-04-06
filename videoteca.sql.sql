-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Mar-2022 às 10:52
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `videoteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atores_filmes`
--

CREATE TABLE `atores_filmes` (
  `id_af` int(11) NOT NULL,
  `id_f_af` int(11) NOT NULL,
  `id_t_af` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `atores_filmes`
--

INSERT INTO `atores_filmes` (`id_af`, `id_f_af`, `id_t_af`) VALUES
(1, 11, 20),
(2, 11, 10),
(3, 14, 3),
(4, 14, 9),
(5, 10, 2),
(6, 10, 8),
(7, 12, 9),
(8, 12, 21),
(9, 8, 28),
(10, 8, 24),
(11, 7, 13),
(12, 7, 3),
(13, 9, 26),
(14, 9, 15),
(15, 17, 10),
(16, 17, 24),
(17, 15, 14),
(18, 15, 2),
(19, 4, 17),
(20, 4, 4),
(21, 2, 16),
(22, 2, 22),
(23, 1, 4),
(24, 1, 2),
(25, 18, 18),
(26, 18, 11),
(27, 20, 9),
(28, 20, 26),
(29, 5, 23),
(30, 5, 27),
(31, 3, 19),
(32, 3, 7),
(33, 19, 5),
(34, 19, 8),
(35, 13, 12),
(36, 13, 28),
(37, 16, 27),
(38, 16, 21),
(39, 6, 10),
(40, 6, 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `classificacoes`
--

CREATE TABLE `classificacoes` (
  `id_c` int(11) NOT NULL,
  `nome_c` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `classificacoes`
--

INSERT INTO `classificacoes` (`id_c`, `nome_c`) VALUES
(1, 'Livre'),
(2, 'M/10'),
(3, 'M/12'),
(4, 'M/14'),
(5, 'M/16'),
(6, 'M/18');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estudios`
--

CREATE TABLE `estudios` (
  `id_e` int(11) NOT NULL,
  `nome_e` varchar(100) NOT NULL,
  `local_e` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estudios`
--

INSERT INTO `estudios` (`id_e`, `nome_e`, `local_e`) VALUES
(1, '20th Century Fox', 'Hollywood, EUA'),
(2, 'Paramount Pictures', 'Hollywood, EUA'),
(3, 'Pathê', 'Paris, France'),
(4, 'Pixar', 'Hollywood, EUA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `filmes`
--

CREATE TABLE `filmes` (
  `id_f` int(11) NOT NULL,
  `nome_f` varchar(100) NOT NULL,
  `ano_f` int(4) NOT NULL,
  `pais_f` int(3) NOT NULL,
  `suporte_f` int(2) NOT NULL,
  `duracao_f` int(3) NOT NULL,
  `realizador_f` int(10) NOT NULL,
  `estudio_f` int(4) NOT NULL,
  `autor_f` int(10) NOT NULL,
  `classif_f` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `filmes`
--

INSERT INTO `filmes` (`id_f`, `nome_f`, `ano_f`, `pais_f`, `suporte_f`, `duracao_f`, `realizador_f`, `estudio_f`, `autor_f`, `classif_f`) VALUES
(1, 'Ride Along', 2014, 1, 3, 100, 1, 1, 25, 5),
(2, 'One piece: gold', 2019, 5, 3, 120, 18, 1, 16, 2),
(3, 'Stardust Crusaders', 1993, 5, 1, 160, 19, 4, 25, 4),
(4, 'Ocean Man', 2012, 4, 2, 125, 12, 3, 17, 1),
(5, 'Spirited Away', 2001, 2, 2, 125, 11, 2, 18, 3),
(6, 'Your Name', 2016, 3, 3, 66, 12, 4, 1, 6),
(7, 'Ela é fácil', 2010, 6, 1, 115, 16, 4, 17, 3),
(8, 'Côco', 2017, 1, 1, 110, 1, 4, 25, 1),
(9, 'E tudo o vento levou', 1939, 1, 1, 170, 16, 1, 16, 1),
(10, 'Ben Hur', 1959, 2, 2, 170, 1, 2, 1, 1),
(11, 'A lagoa Azul', 1980, 2, 2, 160, 17, 3, 25, 4),
(12, 'Cinderela', 1998, 1, 2, 90, 17, 4, 1, 1),
(13, 'Trip de familia', 2013, 2, 2, 120, 25, 1, 16, 6),
(14, 'A múmia', 2016, 1, 3, 150, 1, 1, 17, 4),
(15, 'Hardcore Henry', 2016, 1, 3, 120, 1, 1, 17, 5),
(16, 'Viagem para o fim do mundo', 2020, 3, 3, 100, 25, 3, 1, 6),
(17, 'Fight Club', 1999, 1, 2, 150, 25, 2, 1, 6),
(18, 'Sand Castle', 2017, 1, 3, 110, 25, 3, 25, 6),
(19, 'Top Secret', 1998, 1, 1, 120, 25, 4, 16, 2),
(20, 'Senhor dos Anéis', 2008, 5, 1, 89, 1, 3, 25, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `generos`
--

CREATE TABLE `generos` (
  `id_g` int(11) NOT NULL,
  `nome_g` varchar(50) NOT NULL,
  `desc_g` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `generos`
--

INSERT INTO `generos` (`id_g`, `nome_g`, `desc_g`) VALUES
(1, 'Ação', 'Porrada da grossa!'),
(2, 'Animação', 'Bonecos animados'),
(3, 'Biografia', 'Eu, eu, eu.'),
(4, 'Romance', 'Love, love, love'),
(5, 'Policial', 'Pum pum pum'),
(6, 'Musical', 'Dó, ré, mi'),
(7, 'Comédia', 'AH ah ah'),
(8, 'Drama', 'Bla bla bla'),
(9, 'Ficção', 'Fadjiu, fadjiu, fadjiu'),
(10, 'Suspense', 'Tchan, tchan, tchan, tchan');

-- --------------------------------------------------------

--
-- Estrutura da tabela `generos_filmes`
--

CREATE TABLE `generos_filmes` (
  `id_gf` int(11) NOT NULL,
  `id_f_gf` int(11) NOT NULL,
  `id_g_gf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `generos_filmes`
--

INSERT INTO `generos_filmes` (`id_gf`, `id_f_gf`, `id_g_gf`) VALUES
(1, 11, 4),
(2, 11, 8),
(3, 14, 8),
(4, 14, 6),
(5, 10, 1),
(6, 10, 8),
(7, 12, 2),
(8, 8, 2),
(9, 8, 6),
(10, 7, 4),
(11, 9, 4),
(12, 9, 8),
(13, 17, 1),
(14, 17, 9),
(15, 15, 1),
(16, 4, 7),
(17, 2, 2),
(18, 2, 7),
(19, 1, 7),
(20, 1, 5),
(21, 18, 8),
(22, 18, 1),
(23, 20, 7),
(24, 20, 4),
(25, 5, 2),
(26, 5, 3),
(27, 3, 1),
(28, 3, 10),
(29, 19, 1),
(30, 13, 10),
(31, 16, 9),
(32, 6, 9),
(33, 6, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `paises`
--

CREATE TABLE `paises` (
  `id_p` int(11) NOT NULL,
  `nome_p` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `paises`
--

INSERT INTO `paises` (`id_p`, `nome_p`) VALUES
(1, 'EUA'),
(2, 'França'),
(3, 'Portugal'),
(4, 'UK'),
(5, 'Japão'),
(6, 'Espanha');

-- --------------------------------------------------------

--
-- Estrutura da tabela `suportes`
--

CREATE TABLE `suportes` (
  `id_s` int(11) NOT NULL,
  `nome_s` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `suportes`
--

INSERT INTO `suportes` (`id_s`, `nome_s`) VALUES
(1, 'VHS'),
(2, 'DVD'),
(3, 'Blu-Ray');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tecnicos`
--

CREATE TABLE `tecnicos` (
  `id_t` int(11) NOT NULL,
  `nome_t` varchar(100) NOT NULL,
  `pais_t` int(4) NOT NULL,
  `datan_t` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tecnicos`
--

INSERT INTO `tecnicos` (`id_t`, `nome_t`, `pais_t`, `datan_t`) VALUES
(1, 'Sylvester Stallone', 1, '1946-06-06'),
(2, 'Dwayne Johnson', 1, '1972-05-02'),
(3, 'Tom Cruise', 1, '1973-05-03'),
(4, 'Kevin Hart', 1, '1979-07-06'),
(5, 'Gerard Depardieu', 2, '1948-12-27'),
(6, 'Chris Miller', 1, '1967-01-01'),
(7, 'Mike Meyers', 1, '1963-05-07'),
(8, 'Andrew Garfield', 1, '1983-08-20'),
(9, 'Angelina Jolie', 1, '1975-06-04'),
(10, 'Brad Pitt', 1, '1963-12-01'),
(11, 'Hayao Miyazaki', 5, '1941-01-05'),
(12, 'Makoto Shinkai', 5, '1973-02-09'),
(13, 'Soraia Chaves', 3, '1982-06-22'),
(14, 'Arnold Schwarzenegger', 1, '1947-07-30'),
(15, 'Joss Whedon', 1, '1964-06-23'),
(16, 'Pedro Almodóvar', 6, '1949-09-25'),
(17, 'Nicolas Cage', 1, '1964-01-07'),
(18, 'Eiichiro Oda', 5, '1975-01-01'),
(19, 'Hirohiko Araki', 5, '1960-06-07'),
(20, 'Jennifer Aniston', 1, '1969-02-11'),
(21, 'Justin Theroux', 1, '1971-08-10'),
(22, 'Megan Fox', 1, '1986-05-16'),
(23, 'Charlize Theron', 1, '1975-08-07'),
(24, 'Edward Norton', 1, '1969-08-18'),
(25, 'Clint Eastwood', 1, '1930-05-31'),
(26, 'Charlton Heston', 1, '1923-10-04'),
(27, 'Haya Harareet', 2, '1931-09-20'),
(28, 'Will Gluck', 1, '1978-03-22');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `atores_filmes`
--
ALTER TABLE `atores_filmes`
  ADD PRIMARY KEY (`id_af`);

--
-- Índices para tabela `classificacoes`
--
ALTER TABLE `classificacoes`
  ADD PRIMARY KEY (`id_c`);

--
-- Índices para tabela `estudios`
--
ALTER TABLE `estudios`
  ADD PRIMARY KEY (`id_e`);

--
-- Índices para tabela `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id_f`);

--
-- Índices para tabela `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id_g`);

--
-- Índices para tabela `generos_filmes`
--
ALTER TABLE `generos_filmes`
  ADD PRIMARY KEY (`id_gf`);

--
-- Índices para tabela `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id_p`);

--
-- Índices para tabela `suportes`
--
ALTER TABLE `suportes`
  ADD PRIMARY KEY (`id_s`);

--
-- Índices para tabela `tecnicos`
--
ALTER TABLE `tecnicos`
  ADD PRIMARY KEY (`id_t`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atores_filmes`
--
ALTER TABLE `atores_filmes`
  MODIFY `id_af` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `classificacoes`
--
ALTER TABLE `classificacoes`
  MODIFY `id_c` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `estudios`
--
ALTER TABLE `estudios`
  MODIFY `id_e` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id_f` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `generos`
--
ALTER TABLE `generos`
  MODIFY `id_g` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `generos_filmes`
--
ALTER TABLE `generos_filmes`
  MODIFY `id_gf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `paises`
--
ALTER TABLE `paises`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `suportes`
--
ALTER TABLE `suportes`
  MODIFY `id_s` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tecnicos`
--
ALTER TABLE `tecnicos`
  MODIFY `id_t` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
