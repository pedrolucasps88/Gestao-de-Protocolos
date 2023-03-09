-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Mar-2023 às 01:57
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `testin`
--
CREATE DATABASE IF NOT EXISTS `testin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `testin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `testin`
--

CREATE TABLE `testin` (
  `id` int(11) NOT NULL,
  `setores` varchar(200) NOT NULL,
  `funcionarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `testin`
--

INSERT INTO `testin` (`id`, `setores`, `funcionarios`) VALUES
(1, 'setor1', 1),
(2, 'setor1', 2),
(3, 'setor1', 3),
(4, 'setor2', 4),
(5, 'setor2', 5),
(6, 'setor2', 6);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `testin`
--
ALTER TABLE `testin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `testin`
--
ALTER TABLE `testin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
