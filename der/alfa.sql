-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13-Mar-2019 às 22:08
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alfa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

CREATE TABLE `cidade` (
  `id_cid` int(11) NOT NULL,
  `nome_cid` varchar(60) NOT NULL,
  `id_est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cidade`
--

INSERT INTO `cidade` (`id_cid`, `nome_cid`, `id_est`) VALUES
(1, 'Guairaçá', 1),
(2, 'Paranavaí', 1),
(3, 'Terra Rica', 1),
(4, 'Amaporã', 1),
(5, 'Mandiocaba', 1),
(6, 'Piracema', 1),
(7, 'Diamante do Norte', 1),
(8, 'Nova Londrina', 1),
(9, 'Loanda', 1),
(10, 'Paraíso do Norte', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cli` int(11) NOT NULL,
  `nome_cli` varchar(250) NOT NULL,
  `endereco` varchar(250) DEFAULT NULL,
  `numero` varchar(5) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `id_cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id_cli`, `nome_cli`, `endereco`, `numero`, `bairro`, `telefone`, `id_cid`) VALUES
(1, 'LEANDRO MAZUTE', 'R. DANIEL DOS SANTOS VIAIS', '1211', 'CENTRO', '44991295210', 1),
(2, 'LATICIO VITALAC', NULL, NULL, NULL, NULL, 1),
(3, 'GILMAR VIANA', NULL, NULL, 'CENTRO', NULL, 5),
(4, 'GABI BARONE', NULL, NULL, 'ZONA RURAL', NULL, 6),
(5, 'NILSON DOS SANTOS', NULL, NULL, 'VILA RURAL', NULL, 1),
(6, 'CASA SANTOS', 'AV. CANDIDO BERTHIER FORTES', NULL, 'CENTRO', NULL, 1),
(7, 'DENISE MAZZUTTI', NULL, NULL, NULL, NULL, 1),
(8, 'WILMAR DA SILVA LIANDRO', NULL, NULL, 'VILA RURAL', NULL, 5),
(9, 'CEMITÉRIO GUAIRAÇÁ', NULL, NULL, NULL, NULL, 1),
(10, 'ESCOLA ESTADUAL HUMBERTO DE ALENCAR', NULL, NULL, 'ENFRENTE A IGREJA', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `entrega`
--

CREATE TABLE `entrega` (
  `id_entr` int(11) NOT NULL,
  `dt_entr` datetime NOT NULL,
  `id_usu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `entrega`
--

INSERT INTO `entrega` (`id_entr`, `dt_entr`, `id_usu`) VALUES
(1, '2019-03-06 10:06:00', 6),
(2, '2019-03-06 16:10:00', 5),
(3, '2019-03-07 10:00:00', 7),
(4, '2019-03-07 12:00:00', 7),
(5, '2019-03-07 13:00:00', 5),
(6, '2019-03-08 14:00:00', 8),
(7, '2019-03-08 17:14:00', 5),
(8, '2019-03-09 10:06:00', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

CREATE TABLE `estado` (
  `id_est` int(11) NOT NULL,
  `nome_est` varchar(60) NOT NULL,
  `sigla` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estado`
--

INSERT INTO `estado` (`id_est`, `nome_est`, `sigla`) VALUES
(1, 'Paraná', 'PR'),
(2, 'São Paulo', 'SP'),
(3, 'Santa Catarina', 'SC'),
(4, 'Mato Grosso do Sul', 'MS'),
(5, 'Rio de Janeiro', 'RJ'),
(6, 'Goiais', 'GO'),
(7, 'Amazonas', 'AM'),
(8, 'Pará', 'PA'),
(9, 'Roraima', 'RR'),
(10, 'Tocantis', 'TO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `filial`
--

CREATE TABLE `filial` (
  `id_filial` int(11) NOT NULL,
  `nome_filial` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `filial`
--

INSERT INTO `filial` (`id_filial`, `nome_filial`) VALUES
(1, 'DEPOSITO M M M M MATERIAIS DE CONTRUÇÃO'),
(2, 'DEPOSITO AVENIDA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_entrega`
--

CREATE TABLE `itens_entrega` (
  `id_ped` int(11) NOT NULL,
  `id_entr` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL,
  `quant_entr` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `itens_entrega`
--

INSERT INTO `itens_entrega` (`id_ped`, `id_entr`, `id_prod`, `quant_entr`) VALUES
(1, 1, 1, 1500),
(1, 4, 4, 2),
(1, 5, 1, 1500),
(3, 2, 1, 500),
(3, 2, 5, 2),
(3, 2, 6, 2),
(5, 3, 6, 3),
(6, 4, 1, 100),
(6, 4, 3, 5),
(8, 7, 2, 5),
(8, 7, 5, 2),
(9, 6, 3, 3),
(9, 6, 4, 2),
(10, 8, 2, 5),
(10, 8, 8, 33);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_pedido`
--

CREATE TABLE `itens_pedido` (
  `id_prod` int(11) NOT NULL,
  `id_ped` int(11) NOT NULL,
  `quant_pedido` double NOT NULL,
  `quant_entregue` double NOT NULL,
  `id_status_prod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `itens_pedido`
--

INSERT INTO `itens_pedido` (`id_prod`, `id_ped`, `quant_pedido`, `quant_entregue`, `id_status_prod`) VALUES
(1, 1, 3000, 3000, 3),
(1, 3, 500, 500, 3),
(1, 6, 100, 100, 3),
(2, 7, 5, 0, 1),
(2, 8, 10, 5, 2),
(2, 10, 10, 5, 2),
(3, 4, 30, 0, 1),
(3, 6, 5, 5, 3),
(3, 9, 3, 3, 3),
(4, 1, 3, 2, 2),
(4, 9, 2, 2, 3),
(5, 3, 2, 2, 3),
(5, 8, 4, 2, 2),
(6, 3, 2, 2, 3),
(6, 5, 3, 3, 3),
(7, 1, 5, 0, 1),
(7, 5, 25, 0, 1),
(8, 2, 33, 0, 1),
(8, 10, 99, 33, 2),
(10, 4, 20, 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `medida`
--

CREATE TABLE `medida` (
  `id_med` int(11) NOT NULL,
  `nome_medida` varchar(20) NOT NULL,
  `sigla_medida` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `medida`
--

INSERT INTO `medida` (`id_med`, `nome_medida`, `sigla_medida`) VALUES
(1, 'Unidade', 'Un'),
(2, 'Metros', 'MT'),
(3, 'Litros', 'LT'),
(4, 'Metros quadrados', 'M2'),
(5, 'Metros Cubicos', 'M3'),
(6, 'Quilos', 'KG');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `id_ped` int(11) NOT NULL,
  `dt_pedido` datetime NOT NULL,
  `obs_pedido` text,
  `id_status_ped` int(11) NOT NULL,
  `id_cli` int(11) NOT NULL,
  `id_usu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`id_ped`, `dt_pedido`, `obs_pedido`, `id_status_ped`, `id_cli`, `id_usu`) VALUES
(1, '2019-03-06 08:09:09', 'LEVAR A AREIA NO LADO DO MOTORISTA', 1, 2, 1),
(2, '2019-03-06 10:14:17', NULL, 2, 6, 3),
(3, '2019-03-06 13:45:18', NULL, 3, 4, 2),
(4, '2019-03-06 12:13:29', 'ENTREGAR ATÉ ÁS 15:00 ', 1, 10, 4),
(5, '2019-03-07 08:00:00', NULL, 1, 8, 2),
(6, '2019-03-07 08:06:00', NULL, 3, 3, 1),
(7, '2019-03-07 15:00:00', NULL, 2, 9, 3),
(8, '2019-03-08 13:00:00', NULL, 1, 7, 10),
(9, '2019-03-08 12:00:00', NULL, 3, 6, 4),
(10, '2019-03-08 18:00:00', NULL, 2, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_prod` int(11) NOT NULL,
  `nome_prod` varchar(200) NOT NULL,
  `quant_est` double DEFAULT NULL,
  `quant_vendida` double DEFAULT NULL,
  `custo_prod` decimal(9,2) NOT NULL,
  `estoque_min` int(11) DEFAULT NULL,
  `id_med` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_prod`, `nome_prod`, `quant_est`, `quant_vendida`, `custo_prod`, `estoque_min`, `id_med`) VALUES
(1, 'LAJOTA 6 FUROS', 7000, 0, '0.30', 3000, 1),
(2, 'CIMENTO VOTORAN', 100, 30, '21.50', 30, 1),
(3, 'CAL VIRGEM', 123, 30, '6.50', 50, 1),
(4, 'AREIA MEDIA', 2, 3, '39.00', 3, 4),
(5, 'PEDRA MEDIA', 8, 2, '59.00', 3, 4),
(6, 'TUBO ESG TIGRE 100 ', 7, 0, '39.50', NULL, 1),
(7, 'CIMENTO P\\ KG', NULL, NULL, '0.47', NULL, 6),
(8, 'TABUA CAIXARIA 30CM P/MT', 300, 99, '4.61', 60, 2),
(9, 'TUBO ESG P/MT TIGRE 100', NULL, 3, '6.50', NULL, 2),
(10, 'ARGAMASSA ACI', 5, 20, '6.50', 20, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `status_pedido`
--

CREATE TABLE `status_pedido` (
  `id_status_ped` int(11) NOT NULL,
  `nome_status_ped` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `status_pedido`
--

INSERT INTO `status_pedido` (`id_status_ped`, `nome_status_ped`) VALUES
(1, 'ATIVO'),
(2, 'ESPERA'),
(3, 'ENTREGUE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `status_produto`
--

CREATE TABLE `status_produto` (
  `id_status_prod` int(11) NOT NULL,
  `nome_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `status_produto`
--

INSERT INTO `status_produto` (`id_status_prod`, `nome_status`) VALUES
(1, 'NOVO'),
(2, 'ENTREGUE PARCIAL'),
(3, 'ENTREGUE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_tipo_usu` int(11) NOT NULL,
  `nome_tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id_tipo_usu`, `nome_tipo`) VALUES
(1, 'Admin'),
(2, 'Vendedor'),
(3, 'Entregador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usu` int(11) NOT NULL,
  `nome_usu` varchar(150) NOT NULL,
  `senha` varchar(8) NOT NULL,
  `id_tipo_usu` int(11) NOT NULL,
  `id_filial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usu`, `nome_usu`, `senha`, `id_tipo_usu`, `id_filial`) VALUES
(1, 'LEANDRO', '123', 1, 1),
(2, 'ALESSANDRO', '123', 1, 1),
(3, 'ROGERIO', '123', 1, 2),
(4, 'MARCELO', '123', 1, 1),
(5, 'HUELITON', '123', 3, 1),
(6, 'MAURICIO', '123', 3, 1),
(7, 'ZEZINHO', '123', 3, 1),
(8, 'GABRIEL', '123', 3, 1),
(9, 'VENDEDOR 1', '123', 2, 1),
(10, 'VENDEDOR 2', '123', 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`id_cid`),
  ADD KEY `estado_cidade_fk` (`id_est`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cli`),
  ADD KEY `cidade_cliente_fk` (`id_cid`);

--
-- Indexes for table `entrega`
--
ALTER TABLE `entrega`
  ADD PRIMARY KEY (`id_entr`),
  ADD KEY `usuario_entrega_fk` (`id_usu`);

--
-- Indexes for table `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_est`);

--
-- Indexes for table `filial`
--
ALTER TABLE `filial`
  ADD PRIMARY KEY (`id_filial`);

--
-- Indexes for table `itens_entrega`
--
ALTER TABLE `itens_entrega`
  ADD PRIMARY KEY (`id_ped`,`id_entr`,`id_prod`),
  ADD KEY `entrega_itens_entrega_fk` (`id_entr`),
  ADD KEY `produtos_itens_entrega_fk` (`id_prod`);

--
-- Indexes for table `itens_pedido`
--
ALTER TABLE `itens_pedido`
  ADD PRIMARY KEY (`id_prod`,`id_ped`),
  ADD KEY `status_produto_itens_pedido_fk` (`id_status_prod`),
  ADD KEY `pedido_itens_pedido_fk` (`id_ped`);

--
-- Indexes for table `medida`
--
ALTER TABLE `medida`
  ADD PRIMARY KEY (`id_med`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_ped`),
  ADD KEY `usuario_pedido_fk` (`id_usu`),
  ADD KEY `cliente_pedido_fk` (`id_cli`),
  ADD KEY `status_pedido_pedido_fk` (`id_status_ped`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_prod`),
  ADD KEY `medida_produtos_fk` (`id_med`);

--
-- Indexes for table `status_pedido`
--
ALTER TABLE `status_pedido`
  ADD PRIMARY KEY (`id_status_ped`);

--
-- Indexes for table `status_produto`
--
ALTER TABLE `status_produto`
  ADD PRIMARY KEY (`id_status_prod`);

--
-- Indexes for table `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id_tipo_usu`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usu`),
  ADD KEY `filial_usuario_fk` (`id_filial`),
  ADD KEY `tipo_usuario_usuario_fk` (`id_tipo_usu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cidade`
--
ALTER TABLE `cidade`
  MODIFY `id_cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `entrega`
--
ALTER TABLE `entrega`
  MODIFY `id_entr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `estado`
--
ALTER TABLE `estado`
  MODIFY `id_est` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `filial`
--
ALTER TABLE `filial`
  MODIFY `id_filial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medida`
--
ALTER TABLE `medida`
  MODIFY `id_med` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_ped` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `status_pedido`
--
ALTER TABLE `status_pedido`
  MODIFY `id_status_ped` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `status_produto`
--
ALTER TABLE `status_produto`
  MODIFY `id_status_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id_tipo_usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `cidade`
--
ALTER TABLE `cidade`
  ADD CONSTRAINT `estado_cidade_fk` FOREIGN KEY (`id_est`) REFERENCES `estado` (`id_est`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cidade_cliente_fk` FOREIGN KEY (`id_cid`) REFERENCES `cidade` (`id_cid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `entrega`
--
ALTER TABLE `entrega`
  ADD CONSTRAINT `usuario_entrega_fk` FOREIGN KEY (`id_usu`) REFERENCES `usuario` (`id_usu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `itens_entrega`
--
ALTER TABLE `itens_entrega`
  ADD CONSTRAINT `entrega_itens_entrega_fk` FOREIGN KEY (`id_entr`) REFERENCES `entrega` (`id_entr`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pedido_itens_entrega_fk` FOREIGN KEY (`id_ped`) REFERENCES `pedido` (`id_ped`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `produtos_itens_entrega_fk` FOREIGN KEY (`id_prod`) REFERENCES `produtos` (`id_prod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `itens_pedido`
--
ALTER TABLE `itens_pedido`
  ADD CONSTRAINT `pedido_itens_pedido_fk` FOREIGN KEY (`id_ped`) REFERENCES `pedido` (`id_ped`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `produtos_itens_pedido_fk` FOREIGN KEY (`id_prod`) REFERENCES `produtos` (`id_prod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `status_produto_itens_pedido_fk` FOREIGN KEY (`id_status_prod`) REFERENCES `status_produto` (`id_status_prod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `cliente_pedido_fk` FOREIGN KEY (`id_cli`) REFERENCES `cliente` (`id_cli`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `status_pedido_pedido_fk` FOREIGN KEY (`id_status_ped`) REFERENCES `status_pedido` (`id_status_ped`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usuario_pedido_fk` FOREIGN KEY (`id_usu`) REFERENCES `usuario` (`id_usu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `medida_produtos_fk` FOREIGN KEY (`id_med`) REFERENCES `medida` (`id_med`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `filial_usuario_fk` FOREIGN KEY (`id_filial`) REFERENCES `filial` (`id_filial`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tipo_usuario_usuario_fk` FOREIGN KEY (`id_tipo_usu`) REFERENCES `tipo_usuario` (`id_tipo_usu`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
