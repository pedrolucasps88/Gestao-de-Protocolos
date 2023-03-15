-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Mar-2023 às 20:56
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
-- Banco de dados: `gestaodeprotocolos`
--
CREATE DATABASE IF NOT EXISTS `gestaodeprotocolos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gestaodeprotocolos`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `matricula_remetente` int(11) DEFAULT NULL,
  `matricula_destinatario` int(11) DEFAULT NULL,
  `assunto` varchar(200) DEFAULT NULL,
  `mensagem` varchar(400) DEFAULT NULL,
  `anexo` varchar(200) DEFAULT NULL,
  `hora` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `chat`
--

INSERT INTO `chat` (`id`, `matricula_remetente`, `matricula_destinatario`, `assunto`, `mensagem`, `anexo`, `hora`) VALUES
(1, 1, 3, 'Importante', 'assine pfv', 'f1bf3dd3-1373-4641-8b2d-ef326b7ceb58.pdf', '2023-03-15 00:00:00'),
(2, 1, 4, 'Importante preste atenção', 'assine isto pfv', '1e06e40c-366b-4b80-a91e-37b0c01141eb.pdf', '2023-03-15 00:00:00'),
(3, 3, 4, 'preciso que assine', 'assine com urgência!', '6a23ad19-41bf-4e63-b4c4-a3d0b369020b.pdf', '2023-03-15 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `Matricula_Func` int(11) NOT NULL,
  `cargo` varchar(200) DEFAULT NULL,
  `nome_Func` varchar(200) DEFAULT NULL,
  `senha` varchar(200) DEFAULT NULL,
  `id_Setor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`Matricula_Func`, `cargo`, `nome_Func`, `senha`, `id_Setor`) VALUES
(1, 'Gestor', 'vagner da silva', '1234', 1),
(2, 'Estagiario', 'Wilson de moura', 'senha', 1),
(3, 'Mecânico', 'joão jackson', '4567', 2),
(4, 'diretor', 'jessica aline', 'diretora', 2),
(5, 'recepção', 'josé da silva', '1234', 3),
(6, 'diretor', 'valesca dos santos', '1234', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor`
--

CREATE TABLE `setor` (
  `id` int(11) NOT NULL,
  `nome_setor` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `setor`
--

INSERT INTO `setor` (`id`, `nome_setor`) VALUES
(1, 'RH'),
(2, 'Manutenção'),
(3, 'Secretaria'),
(4, 'Qualidade');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matricula_remetente` (`matricula_remetente`),
  ADD KEY `matricula_destinatario` (`matricula_destinatario`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`Matricula_Func`),
  ADD KEY `id_Setor` (`id_Setor`);

--
-- Índices para tabela `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `Matricula_Func` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `setor`
--
ALTER TABLE `setor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`matricula_remetente`) REFERENCES `funcionarios` (`Matricula_Func`),
  ADD CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`matricula_destinatario`) REFERENCES `funcionarios` (`Matricula_Func`);

--
-- Limitadores para a tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD CONSTRAINT `funcionarios_ibfk_1` FOREIGN KEY (`id_Setor`) REFERENCES `setor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
