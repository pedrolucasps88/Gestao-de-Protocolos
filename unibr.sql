-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Abr-2023 às 03:14
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
-- Banco de dados: `unibr`
--
CREATE DATABASE IF NOT EXISTS `unibr` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `unibr`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`Matricula_Func`, `cargo`, `nome_Func`, `senha`, `id_Setor`) VALUES
(1, 'Presidente', 'Pedro Lucas', '12345', 1),
(2, 'Diretor Executivo', 'Jaqueline kbinsk', '54321', 1),
(3, 'Gerente', 'Fabiana tamiriana', '54321', 1),
(4, 'Diretor', 'João santos', 'direrh', 2),
(5, 'Coordenador', 'mateus almeida', 'coord', 2),
(6, 'Estagiario', 'mario michael', 'estag', 2),
(7, 'Analista', 'joana fagundes', 'analis', 3),
(8, 'Gerente', 'Sabrina ferreira', 'ferre', 3),
(9, 'Secretario', 'gilberto fagundes', 'secre', 3),
(10, 'Professor Matematica', 'wilson santos', 'mat', 4),
(11, 'Professora Ciencias', 'ana mires', 'cien', 4),
(12, 'Professora Economia', 'Gislaine roberta', 'eco', 4),
(13, 'Reitor', 'jorge maruli', 'reitor', 5),
(14, 'Reitora', 'larissa dos santos', 'juju', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor`
--

CREATE TABLE `setor` (
  `id` int(11) NOT NULL,
  `nome_setor` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `setor`
--

INSERT INTO `setor` (`id`, `nome_setor`) VALUES
(1, 'Diretoria'),
(2, 'RH'),
(3, 'Secretaria'),
(4, 'Docentes'),
(5, 'Reitoria');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `Matricula_Func` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `setor`
--
ALTER TABLE `setor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
