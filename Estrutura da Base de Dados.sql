-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 20-Nov-2016 às 02:15
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mestrado`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudo`
--

CREATE TABLE `conteudo` (
  `id` int(11) NOT NULL,
  `protocolo` tinytext NOT NULL,
  `orgao` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `resumos` text NOT NULL,
  `idPessoaDemandante` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `IdPedido` int(11) DEFAULT NULL,
  `ProtocoloPedido` tinytext,
  `OrgaoSuperiorAssociadoaoDestinatario` text,
  `OrgaoDestinatario` text,
  `Situacao` text,
  `DataRegistro` date DEFAULT NULL,
  `PrazoAtendimento` date DEFAULT NULL,
  `FoiProrrogado` tinytext,
  `FoiReencaminhado` tinytext,
  `FormaResposta` text,
  `OrigemSolicitacao` tinytext,
  `IdSolicitante` int(11) DEFAULT NULL,
  `CategoriaPedido` text,
  `SubCategoriaPedido` text,
  `NumeroPerguntas` int(3) DEFAULT '0',
  `DataResposta` date DEFAULT NULL,
  `TipoResposta` text,
  `ClassificacaoTipoResposta` text,
  `base` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `solicitante`
--

CREATE TABLE `solicitante` (
  `id` int(11) NOT NULL DEFAULT '0',
  `IdSolicitante` int(11) NOT NULL,
  `TipoDemandante` tinytext,
  `DataNascimento` varchar(20) DEFAULT NULL,
  `Sexo` tinytext,
  `Escolaridade` text,
  `Profissao` text,
  `TipoPessoaJuridica` text,
  `Pais` text,
  `UF` tinytext,
  `Municipio` text,
  `base` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conteudo`
--
ALTER TABLE `conteudo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orgao` (`orgao`),
  ADD KEY `idPessoaDemandante` (`idPessoaDemandante`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pedidos_idsolicitantes` (`IdSolicitante`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conteudo`
--
ALTER TABLE `conteudo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21337;
--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57780;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
