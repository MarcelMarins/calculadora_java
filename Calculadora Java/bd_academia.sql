-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 15-Mar-2019 às 19:27
-- Versão do servidor: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bd_academia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairros`
--

CREATE TABLE IF NOT EXISTS `bairros` (
  `bair_codigo` int(5) NOT NULL,
  `bair_nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_funcionarios`
--

CREATE TABLE IF NOT EXISTS `categoria_funcionarios` (
  `catfu_cod` int(11) NOT NULL,
  `catfu_nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

CREATE TABLE IF NOT EXISTS `cidade` (
  `cid_codigo` int(11) NOT NULL,
  `cid_nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `cli_cod` int(11) NOT NULL,
  `cli_nome` varchar(255) NOT NULL,
  `cli_cpf` varchar(30) NOT NULL,
  `cli_logradouro` varchar(255) NOT NULL,
  `cli_numero` int(5) NOT NULL,
  `cli_complemento` varchar(255) NOT NULL,
  `cli_bairro` varchar(255) NOT NULL,
  `cli_cidade` varchar(255) NOT NULL,
  `cli_estado` varchar(255) NOT NULL,
  `cli_cep` varchar(9) NOT NULL,
  `cli_telefone` varchar(255) NOT NULL,
  `cli_celular` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `enderecos`
--

CREATE TABLE IF NOT EXISTS `enderecos` (
  `end_codigo` int(5) NOT NULL,
  `end_logradourocod` int(5) NOT NULL,
  `end_numero` int(5) NOT NULL,
  `end_complemento` varchar(255) NOT NULL,
  `end_bairrocod` int(5) NOT NULL,
  `end_cidadecod` int(5) NOT NULL,
  `end_estadocod` int(5) NOT NULL,
  `end_cep` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
  `est_codigo` int(11) NOT NULL,
  `est_nome` varchar(255) NOT NULL,
  `est_sigla` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicios`
--

CREATE TABLE IF NOT EXISTS `exercicios` (
  `exe_codigo` int(45) NOT NULL,
  `exe_nome` varchar(255) NOT NULL,
  `exe_grupo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE IF NOT EXISTS `funcionario` (
  `fun_codigo` int(45) NOT NULL,
  `fun_nome` varchar(255) NOT NULL,
  `fun_rg` varchar(20) NOT NULL,
  `fun_cpf` varchar(20) NOT NULL,
  `fun_logradouro` varchar(255) NOT NULL,
  `fun_numero` int(5) NOT NULL,
  `fun_complemento` varchar(255) NOT NULL,
  `fun_bairro` varchar(255) NOT NULL,
  `fun_cidade` varchar(255) NOT NULL,
  `fun_estado` varchar(2) NOT NULL,
  `fun_telefone` varchar(16) NOT NULL,
  `fun_celular` varchar(14) NOT NULL,
  `fun_funcao` int(45) NOT NULL,
  `fun_login` varchar(255) NOT NULL,
  `fun_senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios_modalidade`
--

CREATE TABLE IF NOT EXISTS `funcionarios_modalidade` (
  `funmod_cod` int(11) NOT NULL,
  `funmod_funid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `logradouros`
--

CREATE TABLE IF NOT EXISTS `logradouros` (
  `loga_codigo` int(11) NOT NULL,
  `loga_nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `modalidades`
--

CREATE TABLE IF NOT EXISTS `modalidades` (
  `mod_cod` int(45) NOT NULL,
  `mod_nome` varchar(255) NOT NULL,
  `mod_valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `series`
--

CREATE TABLE IF NOT EXISTS `series` (
  `ser_codigo` int(11) NOT NULL,
  `ser_cli_id` int(11) NOT NULL,
  `ser_exe_id` int(11) NOT NULL,
  `ser_repeticao` int(11) NOT NULL,
  `ser_quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE IF NOT EXISTS `turma` (
  `tur_cod` int(45) NOT NULL,
  `tur_mod_cod` int(45) NOT NULL,
  `tur_dia` varchar(80) NOT NULL,
  `tur_horario` time NOT NULL,
  `tur_fun_id` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma_cliente`
--

CREATE TABLE IF NOT EXISTS `turma_cliente` (
  `turcli_id` int(45) NOT NULL,
  `tur_nome` int(45) NOT NULL,
  `tur_cli_tur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bairros`
--
ALTER TABLE `bairros`
  ADD PRIMARY KEY (`bair_codigo`);

--
-- Indexes for table `categoria_funcionarios`
--
ALTER TABLE `categoria_funcionarios`
  ADD PRIMARY KEY (`catfu_cod`);

--
-- Indexes for table `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`cid_codigo`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cli_cod`);

--
-- Indexes for table `enderecos`
--
ALTER TABLE `enderecos`
  ADD PRIMARY KEY (`end_codigo`), ADD UNIQUE KEY `end_logradourocod` (`end_logradourocod`), ADD UNIQUE KEY `end_logradourocod_2` (`end_logradourocod`), ADD UNIQUE KEY `end_bairrocod` (`end_bairrocod`), ADD UNIQUE KEY `end_estadocod` (`end_estadocod`), ADD UNIQUE KEY `end_cidadecod` (`end_cidadecod`);

--
-- Indexes for table `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`est_codigo`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`fun_codigo`), ADD UNIQUE KEY `fun_login` (`fun_login`);

--
-- Indexes for table `funcionarios_modalidade`
--
ALTER TABLE `funcionarios_modalidade`
  ADD PRIMARY KEY (`funmod_cod`);

--
-- Indexes for table `logradouros`
--
ALTER TABLE `logradouros`
  ADD PRIMARY KEY (`loga_codigo`);

--
-- Indexes for table `modalidades`
--
ALTER TABLE `modalidades`
  ADD PRIMARY KEY (`mod_cod`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`tur_cod`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bairros`
--
ALTER TABLE `bairros`
  MODIFY `bair_codigo` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categoria_funcionarios`
--
ALTER TABLE `categoria_funcionarios`
  MODIFY `catfu_cod` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cidade`
--
ALTER TABLE `cidade`
  MODIFY `cid_codigo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cli_cod` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `enderecos`
--
ALTER TABLE `enderecos`
  MODIFY `end_codigo` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `estado`
--
ALTER TABLE `estado`
  MODIFY `est_codigo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `fun_codigo` int(45) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logradouros`
--
ALTER TABLE `logradouros`
  MODIFY `loga_codigo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modalidades`
--
ALTER TABLE `modalidades`
  MODIFY `mod_cod` int(45) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `tur_cod` int(45) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `enderecos`
--
ALTER TABLE `enderecos`
ADD CONSTRAINT `enderecos_ibfk_2` FOREIGN KEY (`end_bairrocod`) REFERENCES `bairros` (`bair_codigo`),
ADD CONSTRAINT `enderecos_ibfk_3` FOREIGN KEY (`end_estadocod`) REFERENCES `estado` (`est_codigo`),
ADD CONSTRAINT `enderecos_ibfk_4` FOREIGN KEY (`end_cidadecod`) REFERENCES `cidade` (`cid_codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
