-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Fev-2024 às 01:30
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `rits_carnaval`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `link_musicas`
--

CREATE TABLE `link_musicas` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `artista` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `link_musicas`
--

INSERT INTO `link_musicas` (`id`, `nome`, `link`, `artista`) VALUES
(1, 'Requebrada', 'https://www.youtube.com/watch?v=6IUKG7fij9w', 'Oludum'),
(2, 'Ara ketu e bom demais', 'https://www.youtube.com/watch?v=x0MY3j7p4uk', 'Araketu'),
(3, 'Margarida Perfumada', 'https://www.youtube.com/watch?v=cfN2lLqEZr4', 'Timbalada'),
(4, 'Rapunzel', 'https://www.youtube.com/watch?v=VtKQ7IOKRs4', 'Daniela Mecury'),
(5, 'A Latinha', 'https://www.youtube.com/watch?v=XwpUjzbVCps', 'Timbalada'),
(6, 'Juliana', 'https://www.youtube.com/watch?v=SDOinKccFmU', 'Bom balanco'),
(7, 'Cabelo Raspadinho', 'https://www.youtube.com/watch?v=7eHr-y4TKEo', 'Chiclete com banana'),
(8, 'Uma bomba', 'https://www.youtube.com/watch?v=_AJKpCN5dCg', 'Braga boys'),
(9, 'Festa', 'https://www.youtube.com/watch?v=h2xU3E6kePw', 'Ivete Sangalo'),
(10, 'Voa Voa', 'https://www.youtube.com/watch?v=xNo2kP7HJyw', 'Chiclete com banana'),
(11, 'Maimbe Danda', 'https://www.youtube.com/watch?v=8xS2mMeZg-g', 'Daniela Mecury'),
(12, 'Coracao', 'https://www.youtube.com/watch?v=4a_3PQfI9IU', 'Rapazolla'),
(13, 'Cafe com pao', 'https://www.youtube.com/watch?v=oBcxet7lFjI', 'Afrodisiaco'),
(14, 'Quebra ae', 'https://www.youtube.com/watch?v=xPBO-fzwIK0', 'Asa de Aguia'),
(15, 'Mulher Brasileira', 'https://www.youtube.com/watch?v=Kk9POewA3dI', 'Psirico'),
(16, 'Cade Dalila', 'https://www.youtube.com/watch?v=lUQc6cBol28', 'Ivete Sangalo'),
(17, 'Rebolation', 'https://www.youtube.com/watch?v=X9P2d5lF2l4', 'Parangole'),
(18, 'Liga da justica', 'https://www.youtube.com/watch?v=1C45fnnldfE', 'LevaNoiz'),
(19, 'Circulou', 'https://www.youtube.com/watch?v=m_kVdLifNJM', 'Banda Eva'),
(20, 'Ziriguidum', 'https://www.youtube.com/watch?v=U10M6bxZjQw', 'Filhos de Jorge'),
(21, 'Lepo-Lepo', 'https://www.youtube.com/watch?v=AHVS5DW434g', 'Psirico'),
(22, 'Xenhenhen', 'https://www.youtube.com/watch?v=Nk9tt6cchak', 'Psirico'),
(23, 'Paredao Metralhadora', 'https://www.youtube.com/watch?v=YzCoZGsod0c', 'A vingadora'),
(24, 'Santinha', 'https://www.youtube.com/watch?v=GBteTh-ft38', 'Leo Santana'),
(25, 'Elas gostam', 'https://www.youtube.com/watch?v=EQuDD5JA_-8', 'Psirico'),
(26, 'O mundo vai', 'https://www.youtube.com/watch?v=XzD3yaS9nRY', 'Ivete Sangalo'),
(27, 'Ta solteira, mas nao ta sozinha', 'https://www.youtube.com/watch?v=FcA_F77cgcw', 'Ivete Sangalo'),
(28, 'Cabeca branca', 'https://www.youtube.com/watch?v=J_jJhHhYW9w', 'Tierry'),
(29, 'Zona de Perigo', 'https://www.youtube.com/watch?v=0cnUcoXllMM', 'Leo Santana');

-- --------------------------------------------------------

--
-- Estrutura da tabela `musicas`
--

CREATE TABLE `musicas` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `ano` int(11) NOT NULL,
  `artista` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `musicas`
--

INSERT INTO `musicas` (`id`, `nome`, `ano`, `artista`) VALUES
(1, 'Requebrada', 1994, 'Olodum'),
(2, 'Ara ketu e bom demais', 1995, 'Araketu'),
(3, 'Rapunzel', 1997, 'Daniela Mercury'),
(4, 'Cabelo Raspadinho', 2000, 'Chiclete com Banana'),
(5, 'Uma Bomba', 2001, 'Braga boys'),
(6, 'Festa', 2002, 'Ivete Sangalo'),
(7, 'Coracao', 2005, 'Rapazolla'),
(8, 'Quebra Ae', 2007, 'Asa de Aguia'),
(9, 'Rebolation', 2010, 'Parangole'),
(10, 'Circulou', 2012, 'Banda Eva'),
(11, 'Ziriguidum', 2013, 'Filhos de Jorge'),
(12, 'Lepo-Lepo', 2014, 'Psirico'),
(13, 'Paredao Metralhadora', 2016, 'A Vingadora'),
(14, 'Abaixa que e tiro', 2019, 'Parangole'),
(15, 'Margarida Perfumada', 1996, 'Timbalada'),
(16, 'Latinha', 1998, 'Timbalada'),
(17, 'Juliana', 1999, 'Bom Balanco'),
(18, 'Voa Voa', 2003, 'Chiclete com Banana'),
(19, 'Maimbe Danda', 2004, 'Daniela Mercury'),
(20, 'Cafe com pao', 2006, 'Afrodisiaco / Vixi Mainha'),
(21, 'Mulher Brasileira', 2008, 'Psirico'),
(22, 'Cade Dalila', 2009, 'Ivete Sangalo'),
(23, 'Liga da justica', 2011, 'LevaNoiz'),
(24, 'Xenhenhen', 2015, 'Psirico'),
(25, 'Santinha', 2017, 'Leo Santana'),
(26, 'Elas gostam', 2018, 'Psirico'),
(27, 'O mundo vai', 2020, 'Ivete Sangalo'),
(28, 'Ta solteira, mas nao ta sozinha', 2021, 'Ivete Sangalo'),
(29, 'Zona de Perigo', 2023, 'Leo Santana'),
(30, 'Cabeca branca', 2022, 'Tierry');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `link_musicas`
--
ALTER TABLE `link_musicas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `musicas`
--
ALTER TABLE `musicas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `link_musicas`
--
ALTER TABLE `link_musicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `musicas`
--
ALTER TABLE `musicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
