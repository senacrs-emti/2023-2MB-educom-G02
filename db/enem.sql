-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Nov-2023 às 16:20
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `enem`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `areaconhecimento`
--

CREATE TABLE `areaconhecimento` (
  `id` int(11) NOT NULL,
  `Nome` varchar(90) NOT NULL,
  `foto` varchar(90) DEFAULT NULL,
  `Questionario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `areaconhecimento`
--

INSERT INTO `areaconhecimento` (`id`, `Nome`, `foto`, `Questionario_id`) VALUES
(1, 'Ciências da Natureza', 'ciencias.PNG', 1),
(2, 'Ciências Humanas', 'humanas.PNG', 1),
(3, 'Linguagens', 'linguagensi.PNG', 1),
(4, 'Matemática', 'matematica.PNG', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `questionario`
--

CREATE TABLE `questionario` (
  `id` int(11) NOT NULL,
  `Nome` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `questionario`
--

INSERT INTO `questionario` (`id`, `Nome`) VALUES
(1, 'Enem');

-- --------------------------------------------------------

--
-- Estrutura da tabela `questoes`
--

CREATE TABLE `questoes` (
  `id` int(11) NOT NULL,
  `Descricao` longtext DEFAULT NULL,
  `Area` varchar(90) DEFAULT NULL,
  `Nome` varchar(45) NOT NULL,
  `Foto` varchar(90) DEFAULT NULL,
  `Questionario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `questoes`
--

INSERT INTO `questoes` (`id`, `Descricao`, `Area`, `Nome`, `Foto`, `Questionario_id`) VALUES
(0, 'Qual a cor do cavalo branco de Napoleão?', '2', '', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `resolucoes`
--

CREATE TABLE `resolucoes` (
  `id` int(11) NOT NULL,
  `correta` varchar(45) DEFAULT NULL,
  `descricao` longtext DEFAULT NULL,
  `Questoes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `areaconhecimento`
--
ALTER TABLE `areaconhecimento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_AreaConhecimento_Questionario_idx` (`Questionario_id`);

--
-- Índices para tabela `questionario`
--
ALTER TABLE `questionario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `questoes`
--
ALTER TABLE `questoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Questoes_Questionario1_idx` (`Questionario_id`);

--
-- Índices para tabela `resolucoes`
--
ALTER TABLE `resolucoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Resolucoes_Questoes1_idx` (`Questoes_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `areaconhecimento`
--
ALTER TABLE `areaconhecimento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `areaconhecimento`
--
ALTER TABLE `areaconhecimento`
  ADD CONSTRAINT `fk_AreaConhecimento_Questionario` FOREIGN KEY (`Questionario_id`) REFERENCES `questionario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `questoes`
--
ALTER TABLE `questoes`
  ADD CONSTRAINT `fk_Questoes_Questionario1` FOREIGN KEY (`Questionario_id`) REFERENCES `questionario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `resolucoes`
--
ALTER TABLE `resolucoes`
  ADD CONSTRAINT `fk_Resolucoes_Questoes1` FOREIGN KEY (`Questoes_id`) REFERENCES `questoes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
