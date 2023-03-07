-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Mar-2023 às 20:44
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `chat`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `envio`
--

CREATE TABLE `envio` (
  `id` int(11) NOT NULL,
  `matricula_remetente` int(11) NOT NULL,
  `matricula_destinatario` int(11) NOT NULL,
  `assunto` varchar(200) NOT NULL,
  `mensagem` varchar(200) NOT NULL,
  `anexo` varchar(200) NOT NULL,
  `hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `envio`
--

INSERT INTO `envio` (`id`, `matricula_remetente`, `matricula_destinatario`, `assunto`, `mensagem`, `anexo`, `hora`) VALUES
(1, 1, 4, 'Importante', 'sim é importante', 'daadb3bd-b57d-47e4-b98b-a3d3edb196e2.pdf', '2023-03-07 00:00:00'),
(2, 2, 4, 'um assunto muito loko', 'mensagem bem adequada', '35f8eb8b-4190-4dba-9997-6daff1701e48.pdf', '2023-03-07 00:00:00'),
(3, 3, 4, 'outro assunto bom', 'uma mensagem bem elaborada', '2d131556-db6c-4ae0-af21-42eae8c488e4.pdf', '2023-03-07 00:00:00'),
(4, 5, 4, 'algo', 'fsdfssd', '6ae3b7ed-1468-47ec-b066-d3019a20705a.pdf', '2023-03-07 00:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `envio`
--
ALTER TABLE `envio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `envio`
--
ALTER TABLE `envio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
