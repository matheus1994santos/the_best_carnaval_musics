-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Jan-2024 às 23:12
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
-- Banco de dados: `modulo_9`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`) VALUES
(1, 'Geral'),
(2, 'Esportes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `momento_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `sobrenome`, `momento_registro`) VALUES
(3, 'Nete', 'Nunes', '2024-01-23 16:18:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `conteudo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `titulo`, `categoria_id`, `conteudo`) VALUES
(1, 'Minha Noticia Geral', 1, 'Meu texto de exemplo'),
(2, 'Minha Noticia Geral 2', 1, 'Meu texto de exemplo 2'),
(3, 'Noticia de esporte', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pellentesque pellentesque posuere. Phasellus id dapibus lacus. Nullam in venenatis mi. Nulla nec hendrerit nisi. Vivamus non auctor ipsum. Vivamus nec dui ipsum. Fusce lacinia leo ut tempus luctus. Mauris sagittis purus id vehicula vulputate. Fusce in neque vel risus porttitor venenatis. Sed ultrices, lacus efficitur pharetra fermentum, mi est ultricies lorem, vehicula interdum elit justo nec felis. Etiam bibendum quam eget quam sagittis, sit amet molestie erat lobortis. Duis vestibulum tortor non quam convallis commodo. Sed cursus, tellus non pellentesque ultrices, nisl metus gravida lorem, vitae ullamcorper nunc arcu et massa.'),
(4, 'Minha outra noticia de esporte', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pellentesque pellentesque posuere. Phasellus id dapibus lacus. Nullam in venenatis mi. Nulla nec hendrerit nisi. Vivamus non auctor ipsum. Vivamus nec dui ipsum. Fusce lacinia leo ut tempus luctus. Mauris sagittis purus id vehicula vulputate. Fusce in neque vel risus porttitor venenatis. Sed ultrices, lacus efficitur pharetra fermentum, mi est ultricies lorem, vehicula interdum elit justo nec felis. Etiam bibendum quam eget quam sagittis, sit amet molestie erat lobortis. Duis vestibulum tortor non quam convallis commodo. Sed cursus, tellus non pellentesque ultrices, nisl metus gravida lorem, vitae ullamcorper nunc arcu et massa.');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
