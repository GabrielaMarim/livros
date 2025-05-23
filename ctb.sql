-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/05/2025 às 03:19
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ctb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `contas`
--

CREATE TABLE `contas` (
  `CT_id` int(11) NOT NULL,
  `CT_nome` varchar(255) NOT NULL,
  `CT_estrutura` varchar(255) NOT NULL,
  `CT_sintetica` tinyint(1) NOT NULL,
  `grupo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contas`
--

INSERT INTO `contas` (`CT_id`, `CT_nome`, `CT_estrutura`, `CT_sintetica`, `grupo_id`) VALUES
(1, 'ATIVO', '1', 1, 1),
(2, 'ATIVO CIRCULANTE', '11', 1, 1),
(3, 'ATIVO DISPONIVEL', '111', 1, 1),
(4, 'NUMERARIOS', '111001', 1, 1),
(5, 'CAIXA PEQUENO', '1.1.1.001.0001-0', 0, 1),
(6, 'BANCOS CONTA MOVIMENTO', '111002', 1, 1),
(7, 'BANCO BRADESCO SA', '1.1.1.002.0001-5', 0, 1),
(8, 'BANCO DO BRASIL', '1.1.1.002.0002-3', 0, 1),
(9, 'BANCO CAIXA ECONOMICA FEDERAL', '1.1.1.002.0003-1', 0, 1),
(10, 'BANCO CITIBANK', '1.1.1.002.0004-0', 0, 1),
(11, 'BANCO ITAU SA', '1.1.1.002.0005-8', 0, 1),
(12, 'BANCO NOSSA CAIXA NOSSO BANCO', '1.1.1.002.0006-6', 0, 1),
(13, 'BANCO REAL SA', '1.1.1.002.0007-4', 0, 1),
(14, 'BANCO SAFRA SA', '1.1.1.002.0008-2', 0, 1),
(15, 'BANCO SANTANDER SA', '1.1.1.002.0009-0', 0, 1),
(16, 'BANCO UNIBANCO SA', '1.1.1.002.0010-4', 0, 1),
(17, 'APLICAÇÕES DE CURTO PRAZO', '111003', 1, 1),
(18, 'BANCO BRADESCO SA', '1.1.1.003.0001-0', 0, 1),
(19, 'BANCO DO BRASIL SA', '1.1.1.003.0002-8', 0, 1),
(20, 'CAIXA ECONOMICA FEDERAL', '1.1.1.003.0003-6', 0, 1),
(21, 'CITIBANK SA', '1.1.1.003.0004-4', 0, 1),
(22, 'BANCO ITAU SA', '1.1.1.003.0005-2', 0, 1),
(23, 'BANCO NOSSA CAIXA NOSSO BANCO', '1.1.1.003.0006-0', 0, 1),
(24, 'BANCO REAL SA', '1.1.1.003.0007-9', 0, 1),
(25, 'BANCO SAFRA SA', '1.1.1.003.0008-7', 0, 1),
(26, 'BANCO SANTADER SA', '1.1.1.003.0009-5', 0, 1),
(27, 'BANCO UNIBANCO SA', '1.1.1.003.0010-9', 0, 1),
(28, 'REALIZAVEL A CURTO PRAZO', '112', 1, 1),
(29, 'CONTAS A RECEBER', '112001', 1, 1),
(30, 'CLIENTE NACIONAIS', '1.1.2.001.0001-2', 0, 1),
(31, 'CLIENTES ESTRANGEIROS', '1.1.2.001.0002-0', 0, 1),
(32, 'CHEQUES A RECEBER', '1.1.2.001.0003-9', 0, 1),
(33, '(-) PDD', '1.1.2.001.0100-0', 0, 1),
(34, 'DUPLICATAS EM COBRANÇA', '112002', 1, 1),
(35, 'BANCO BRADESCO SA', '1.1.2.002.0001-7', 0, 1),
(36, 'BANCO DO BRASIL SA', '1.1.2.002.0002-5', 0, 1),
(37, 'CAIXA ECONOMICA FEDERAL', '1.1.2.002.0003-3', 0, 1),
(38, 'CITIBANK SA', '1.1.2.002.0004-1', 0, 1),
(39, 'BANCO ITAU SA', '1.1.2.002.0005-0', 0, 1),
(40, 'NOSSA CAIXA NOSSO BANCO', '1.1.2.002.0006-8', 0, 1),
(41, 'BANCO REAL SA', '1.1.2.002.0007-6', 0, 1),
(42, 'BANCO SAFRA SA', '1.1.2.002.0008-4', 0, 1),
(43, 'BANCO SANTANDER SA', '1.1.2.002.0009-2', 0, 1),
(44, 'BANCO UNIBANCO SA', '1.1.2.002.0010-6', 0, 1),
(45, 'OUTRAS CONTAS A RECEBER', '112003', 1, 1),
(46, 'OUTRAS CONTAS A RECEBER', '1.1.2.003.0001-1', 0, 1),
(47, 'ADIANTAMENTOS DIVERSOS', '112004', 1, 1),
(48, 'ADTO DE SALARIOS', '1.1.2.004.0001-6', 0, 1),
(49, 'ADTO DE FERIAS', '1.1.2.004.0002-4', 0, 1),
(50, 'ADTO DE 13o SALARIOS', '1.1.2.004.0003-2', 0, 1),
(51, 'EMPRESTIMOS CONSIGNADOS', '1.1.2.004.0004-0', 0, 1),
(52, 'EMPRESTIMOS A FUNCIONARIOS', '1.1.2.004.0005-9', 0, 1),
(53, 'OUTROS ADIANTAMENTOS', '112005', 1, 1),
(54, 'ADTO A FORNECEDORES NACIONAL', '1.1.2.005.0001-0', 0, 1),
(55, 'ADTO FORNECEDOR EXTERIOR', '1.1.2.005.0002-9', 0, 1),
(56, 'ADTO P/ VIAGENS', '1.1.2.005.0003-7', 0, 1),
(57, 'ESTOQUES', '112006', 1, 1),
(58, 'MATERIA PRIMA', '1.1.2.006.0001-5', 0, 1),
(59, 'PRODUTOS EM PROCESSO', '1.1.2.006.0002-3', 0, 1),
(60, 'PRODUTO ACABADO', '1.1.2.006.0003-1', 0, 1),
(61, 'MATERIAL DE EMBALAGEM', '1.1.2.006.0004-0', 0, 1),
(62, 'MATERIAL DE CONSUMO', '1.1.2.006.0005-8', 0, 1),
(63, 'MATERIAL AUXILIAR', '1.1.2.006.0006-6', 0, 1),
(64, 'MERCADORIA P/ REVENDA', '1.1.2.006.0007-4', 0, 1),
(65, 'ESTOQUES EM TRANSITO', '112007', 1, 1),
(66, 'MERCADORIA EM CONSIGNACAO', '1.1.2.007.0001-0', 0, 1),
(67, 'ESTOQUES DE TERCEIROS', '1.1.2.007.0002-8', 0, 1),
(68, 'ESTOQUES EM PODER DE TERCEIROS', '1.1.2.007.0003-6', 0, 1),
(69, 'MERC. ENVIADA EM CONSIGNACAO', '1.1.2.007.0004-4', 0, 1),
(70, 'OUTROS CREDITOS', '112008', 1, 1),
(71, 'IPI A RECUPERAR', '1.1.2.008.0001-4', 0, 1),
(72, 'ICMS A RECUPERAR', '1.1.2.008.0002-2', 0, 1),
(73, 'PIS A RECUPERAR', '1.1.2.008.0003-0', 0, 1),
(74, 'COFINS A RECUPERAR', '1.1.2.008.0004-9', 0, 1),
(75, 'ISS A RECUPERAR', '1.1.2.008.0005-7', 0, 1),
(76, 'INSS A RECUPERAR', '1.1.2.008.0006-5', 0, 1),
(77, 'IRRF A RECUPERAR', '1.1.2.008.0007-3', 0, 1),
(78, 'IRRF S/ APLICACOES A RECUPERAR', '1.1.2.008.0008-1', 0, 1),
(79, 'CSSL RETIDO A RECUPERAR', '1.1.2.008.0009-0', 0, 1),
(80, 'PGTOS INDEVIDOS / A MAIOR', '1.1.2.008.0010-3', 0, 1),
(81, 'IRPJ/CSSL A RECUPERAR', '112009', 1, 1),
(82, 'IRPJ ESTIMATIVA MENSAL', '1.1.2.009.0001-9', 0, 1),
(83, 'CSSL ESTIMATIVA MENSAL', '1.1.2.009.0002-7', 0, 1),
(84, 'SALDO NEGATIVO 20XX - IRPJ', '1.1.2.009.0003-5', 0, 1),
(85, 'SALDO NEGATIVO 20XX - CSSL', '1.1.2.009.0004-3', 0, 1),
(86, 'SALDO NEGATIVO IRPJ 20XX', '1.1.2.009.0005-1', 0, 1),
(87, 'SALDO NEGATIVO CSSL - 20XX', '1.1.2.009.0006-0', 0, 1),
(88, 'SALDO NEGATIVO CSSL 20XX', '1.1.2.009.0007-8', 0, 1),
(89, 'SALDO NEGATIVO IRPJ 20XX', '1.1.2.009.0008-6', 0, 1),
(90, 'SALDO NEGATIVO IRPJ 20XX', '1.1.2.009.0009-4', 0, 1),
(91, 'SALDO NEGATIVO CSSL 20XX', '1.1.2.009.0010-8', 0, 1),
(92, 'DESPESAS DE EXERCICIOS SEGUINTES', '112010', 1, 1),
(93, 'SEGUROS A APROPRIAR', '1.1.2.010.0001-1', 0, 1),
(94, 'ASSINATURAS A APROPRIAR', '1.1.2.010.0002-0', 0, 1),
(95, 'ATIVO NÃO CIRCULANTE', '12', 1, 1),
(96, 'REALIZÁVEL A LONGO PRAZO', '121', 1, 1),
(97, 'APLICACOES FINANCEIRAS', '121001', 1, 1),
(98, 'BRADESCO SA', '1.2.1.001.0001-9', 0, 1),
(99, 'BANCO DO BRASIL SA', '1.2.1.001.0002-7', 0, 1),
(100, 'CAIXA ECONOMICA FEDERAL', '1.2.1.001.0003-5', 0, 1),
(101, 'CITIBANK SA', '1.2.1.001.0004-3', 0, 1),
(102, 'BANCO ITAU SA', '1.2.1.001.0005-1', 0, 1),
(103, 'NOSSA CAIXA NOSSO BANCO', '1.2.1.001.0006-0', 0, 1),
(104, 'BANCO REAL SA', '1.2.1.001.0007-8', 0, 1),
(105, 'BANCO SAFRA SA', '1.2.1.001.0008-6', 0, 1),
(106, 'SANTANDER SA', '1.2.1.001.0009-4', 0, 1),
(107, 'UNIBANCO SA', '1.2.1.001.0010-8', 0, 1),
(108, 'ADIANTAMENTOS', '121002', 1, 1),
(109, 'CLIENTES NACIONAIS', '1.2.1.002.0001-3', 0, 1),
(110, 'CLIENTES EXTERIOR', '1.2.1.002.0002-1', 0, 1),
(111, 'DIREITOS A RECEBER', '121003', 1, 1),
(112, 'DEPOSITOS JUDICIAIS', '1.2.1.003.0001-8', 0, 1),
(113, 'CAUSA TRABALHISTAS', '1.2.1.003.0002-6', 0, 1),
(114, 'TITULOS DA DIVIDA PUBLICA', '1.2.1.003.0003-4', 0, 1),
(115, 'CONTA CORRENTE SOCIOS', '121004', 1, 1),
(116, 'SOCIO 01', '1.2.1.004.0001-2', 0, 1),
(117, 'SOCIO 02', '1.2.1.004.0002-0', 0, 1),
(118, 'SOCIO 03', '1.2.1.004.0003-9', 0, 1),
(119, 'SOCIO 04', '1.2.1.004.0004-7', 0, 1),
(120, 'EMPRESTIMOS ENTRE COLIGADAS', '121005', 1, 1),
(121, 'EMPRESA 01', '1.2.1.005.0001-7', 0, 1),
(122, 'EMPRESA 02', '1.2.1.005.0002-5', 0, 1),
(123, 'EMPRESA 03', '1.2.1.005.0003-3', 0, 1),
(124, 'EMPRESA 04', '1.2.1.005.0004-1', 0, 1),
(125, 'INVESTIMENTOS', '122', 1, 1),
(126, 'PARTICIPACOES SOCIETARIAS', '122001', 1, 1),
(127, 'PARTICIPACAO EMPRESA 01', '1.2.2.001.0001-0', 0, 1),
(128, 'ATIVO IMOBILIZADO', '123', 1, 1),
(129, 'IMOBILIZADO TANGIVEL', '123001', 1, 1),
(130, 'TERRENOS', '1.2.3.001.0001-2', 0, 1),
(131, 'VEICULOS', '1.2.3.001.0002-0', 0, 1),
(132, 'MAQUINAS E EQUIPAMENTOS', '1.2.3.001.0003-9', 0, 1),
(133, 'FERRAMENTAS', '1.2.3.001.0004-7', 0, 1),
(134, 'INSTALACOES', '1.2.3.001.0005-5', 0, 1),
(135, 'MOVEIS E UTENSILIOS', '1.2.3.001.0006-3', 0, 1),
(136, 'EQUIPAMENTOS DE INFORMATICA', '1.2.3.001.0007-1', 0, 1),
(137, 'SOFTWARES', '1.2.3.001.0008-0', 0, 1),
(138, '(-) DEPRECIACAO ACUMULADA', '123010', 1, 1),
(139, '(-) DEP. ACUM. VEICULOS', '1.2.3.010.0002-0', 0, 1),
(140, '(-) DEP. ACUM. MAQUINAS E EQUIPAMENTOS', '1.2.3.010.0003-8', 0, 1),
(141, '(-) DEP. ACUM. FERRAMENTAS', '1.2.3.010.0004-6', 0, 1),
(142, '(-) DEP. ACUM. INSTALACOES', '1.2.3.010.0005-4', 0, 1),
(143, '(-) DEP. ACUM. MOVEIS E UTENSILIOS', '1.2.3.010.0006-2', 0, 1),
(144, '(-) DEP. ACUM. EQUIAPAMENTOS DE INFORMAT', '1.2.3.010.0007-0', 0, 1),
(145, 'AMORTIZACAO ACUMULADA', '123011', 1, 1),
(146, '(-) AMORTIZACAO SOFTWARES', '1.2.3.011.0001-6', 0, 1),
(147, 'ATIVO INTANGIVEL', '124', 1, 1),
(148, 'BENS INTANGIVEIS', '124001', 1, 1),
(149, 'MARCAS E PATENTES', '1.2.4.001.0001-4', 0, 1),
(150, 'ATIVO DIFERIDO', '125', 1, 1),
(151, '\"GASTOS PRE OPERACIONAIS\"', '\"125001125010\"', 1, 1),
(152, 'PASSIVO', '2', 1, 2),
(153, 'PASSIVO CIRCULANTE', '21', 1, 2),
(154, 'PASSIVO EXIGIVEL A CURTO PRAZO', '211', 1, 2),
(155, 'FORNECEDORES GERAIS', '211001', 1, 2),
(156, 'FORNECEDORES NACIONAIS', '2.1.1.001.0001-8', 0, 2),
(157, 'FORNECEDOR DE SERVICOS', '2.1.1.001.0002-6', 0, 2),
(158, 'FORNECEDORES ESTRANGEIROS', '2.1.1.001.0003-4', 0, 2),
(159, 'FORNECEDORES - IMPORTACOES', '211002', 1, 2),
(160, 'EMPRESTIMOS E FINANCIAMENTOS', '211003', 1, 2),
(161, 'BRADESCO SA', '2.1.1.003.0001-7', 0, 2),
(162, 'BANCO DO BRASIL', '2.1.1.003.0002-5', 0, 2),
(163, 'CAIXA ECONOMICA FEDERAL', '2.1.1.003.0003-3', 0, 2),
(164, 'CITIBANK SA', '2.1.1.003.0004-1', 0, 2),
(165, 'BANCO ITAU SA', '2.1.1.003.0005-0', 0, 2),
(166, 'NOSSA CAIXA NOSSO BANCO', '2.1.1.003.0006-8', 0, 2),
(167, 'BANCO REAL SA', '2.1.1.003.0007-6', 0, 2),
(168, 'BANCO SAFRA SA', '2.1.1.003.0008-4', 0, 2),
(169, 'SANTANDER SA', '2.1.1.003.0009-2', 0, 2),
(170, 'UNIBANCO SA', '2.1.1.003.0010-6', 0, 2),
(171, 'OBRIGACOES TRABALHISTAS', '211004', 1, 2),
(172, 'SALARIOS A PAGAR', '2.1.1.004.0001-1', 0, 2),
(173, 'PRO LABORE A PAGAR', '2.1.1.004.0002-0', 0, 2),
(174, 'FERIAS A PAGAR', '2.1.1.004.0003-8', 0, 2),
(175, '13o SALARIO A PAGAR', '2.1.1.004.0004-6', 0, 2),
(176, 'PENSAO ALIMENTICIA A PAGAR', '2.1.1.004.0005-4', 0, 2),
(177, 'AUTONOMOS A PAGAR', '2.1.1.004.0006-2', 0, 2),
(178, 'INDENIZACOES TRABALHISTAS', '2.1.1.004.0007-0', 0, 2),
(179, 'CONT. ASSISTENCIAL A RECOLHER', '2.1.1.004.0008-9', 0, 2),
(180, 'CONT. CONFEDERATIVA A RECOLHER', '2.1.1.004.0009-7', 0, 2),
(181, 'CONT. SINDICAL A RECOLHER', '2.1.1.004.0010-0', 0, 2),
(182, 'ENCARGOS TRABALHISTAS A PAGAR', '211005', 1, 2),
(183, 'FGTS A RECOLHER', '2.1.1.005.0001-6', 0, 2),
(184, 'INSS S/ SALARIOS A RECOLHER', '2.1.1.005.0002-4', 0, 2),
(185, 'IRRF S/ SALARIOS A RECOLHER', '2.1.1.005.0003-2', 0, 2),
(186, 'OBRIGACOES TRIBUTARIAS', '211006', 1, 2),
(187, 'IPI A RECOLHER', '2.1.1.006.0001-0', 0, 2),
(188, 'ICMS A RECOLHER', '2.1.1.006.0002-9', 0, 2),
(189, 'PIS A RECOLHER', '2.1.1.006.0003-7', 0, 2),
(190, 'COFINS A RECOLHER', '2.1.1.006.0004-5', 0, 2),
(191, 'ISS A RECOLHER', '2.1.1.006.0005-3', 0, 2),
(192, 'ICMS SUBSTITUICAO TRIBUTARIA', '2.1.1.006.0006-1', 0, 2),
(193, 'SIMPLES A RECOLHER', '2.1.1.006.0007-0', 0, 2),
(194, 'INSS PF A RECOLHER', '2.1.1.006.0008-8', 0, 2),
(195, 'INSS PJ A RECOLHER', '2.1.1.006.0009-6', 0, 2),
(196, 'IRRF PF A RECOLHER', '2.1.1.006.0010-0', 0, 2),
(197, 'IRRF PJ A RECOLHER', '2.1.1.006.0011-8', 0, 2),
(198, 'CSRF A RECOLHER', '2.1.1.006.0012-6', 0, 2),
(199, 'IRPJ / CSSL A RECOLHER', '211007', 1, 2),
(200, 'IRPJ A RECOLHER', '2.1.1.007.0001-5', 0, 2),
(201, 'CSSL A RECOLHER', '2.1.1.007.0002-3', 0, 2),
(202, 'OUTRAS CONTAS A PAGAR', '211008', 1, 2),
(203, 'COMISSOES A PAGAR', '2.1.1.008.0001-0', 0, 2),
(204, 'FRETES A PAGAR', '2.1.1.008.0002-8', 0, 2),
(205, 'ALUGUEIS A PAGAR', '2.1.1.008.0003-6', 0, 2),
(206, 'LEASING A PAGAR', '2.1.1.008.0004-4', 0, 2),
(207, 'JUROS SOBRE CAPITAL PROPRIO A PAGAR', '2.1.1.008.0005-2', 0, 2),
(208, 'OUTRAS CONTAS A PAGAR', '2.1.1.008.0007-9', 0, 2),
(209, 'ADIANTAMENTO DE CLIENTES', '2.1.1.008.0008-7', 0, 2),
(210, 'PROVISOES DIVERSAS', '211009', 1, 2),
(211, 'PROVISAO P/ 13o SALARIO', '2.1.1.009.0001-4', 0, 2),
(212, 'PROVISAO P/ FERIAS', '2.1.1.009.0002-2', 0, 2),
(213, 'PASSIVO NÃO CIRCULANTE', '22', 1, 2),
(214, 'EXIGIVEL A LONGO PRAZO', '221', 1, 2),
(215, 'FONECEDORES', '221001', 1, 2),
(216, 'FORNECEDORES NACIONAIS', '2.2.1.001.0001-6', 0, 2),
(217, 'FORNECEDORES EXTERIOR', '2.2.1.001.0002-4', 0, 2),
(218, 'EMPRESTIMOS E FINANCIAMENTOS', '221002', 1, 2),
(219, 'INSTITUICAO 01', '2.2.1.002.0001-0', 0, 2),
(220, 'INSTITUICAO 02', '2.2.1.002.0002-9', 0, 2),
(221, 'IMPOSTOS PARCELADOS', '221003', 1, 2),
(222, 'PARCELAMENTO 01', '2.2.1.003.0001-5', 0, 2),
(223, 'PARCELAMENTO 02', '2.2.1.003.0002-3', 0, 2),
(224, 'CONTA CORRENTE SOCIOS', '221004', 1, 2),
(225, 'JOHN CHARLES WOODROW', '2.2.1.004.0001-0', 0, 2),
(226, 'SOCIO 02', '2.2.1.004.0002-8', 0, 2),
(227, 'SOCIO 03', '2.2.1.004.0003-6', 0, 2),
(228, 'SOCIO 04', '2.2.1.004.0004-4', 0, 2),
(229, 'EMPRESTIMOS DE COLIGADAS', '221005', 1, 2),
(230, 'EMPRESA 01', '2.2.1.005.0001-4', 0, 2),
(231, 'EMPRESA 02', '2.2.1.005.0002-2', 0, 2),
(232, 'EMPRESA 03', '2.2.1.005.0003-0', 0, 2),
(233, 'EMPRESA 04', '2.2.1.005.0004-9', 0, 2),
(234, 'PATRIMONIO LIQUIDO', '23', 1, 2),
(235, 'CAPITAL SOCIAL', '231', 1, 2),
(236, 'CAPITAL SOCIAL', '231001', 1, 2),
(237, 'CAPITAL SOCIAL SUBSCRITO', '2.3.1.001.0001-4', 0, 2),
(238, 'CAPITAL SOCIAL A INTEGRALIZAR', '2.3.1.001.0002-2', 0, 2),
(239, 'CAPITAL - DOMICILIADOS NO PAIS', '2.3.1.001.0003-0', 0, 2),
(240, 'CAPITAL NÃO DOMICILIADOS', '2.3.1.001.0004-9', 0, 2),
(241, 'RESERVAS', '232', 1, 2),
(242, 'RESERVA DE CAPITAL', '2.3.2.001-0', 1, 2),
(243, 'RESERVA LEGAL', '2.3.2.002-9', 1, 2),
(244, 'RESERVA ESTATUTARIA', '2.3.2.003-7', 1, 2),
(245, 'RESERVAS P/ CONTINGENCIAS', '2.3.2.004-5', 1, 2),
(246, 'RESERVA ESPECIAL', '2.3.2.005-3', 1, 2),
(247, 'RESULTADOS ACUMULADOS', '232006', 1, 2),
(248, 'RESULTADO DE 20XX', '2.3.2.006.0001-9', 0, 2),
(249, 'RESULTADO DE 20XX', '2.3.2.006.0002-7', 0, 2),
(250, 'RESULTADO DE 20XX', '2.3.2.006.0003-5', 0, 2),
(251, 'RESULTADOS ACUMULADOS - 20XX', '2.3.2.006.0004-3', 0, 2),
(252, 'ACOES EM TESOURARIA', '232007', 1, 2),
(253, 'PREJUIZOS ACUMULADOS', '232008', 1, 2),
(254, 'RESULTADO DE 20XX', '2.3.2.008.0001-8', 0, 2),
(255, 'RESERVA LEGAL', '2.3.3-0', 1, 2),
(256, 'RESERVA ESTATUÁRIOS', '2.3.4-8', 1, 2),
(257, 'RESERVAS P/ CONTINGÊNCIAS', '2.3.5-6', 1, 2),
(258, 'RESERVA ESPECIAL', '2.3.6-4', 1, 2),
(259, 'AÇÕES EM TESOURARIA', '2.3.7-2', 1, 2),
(260, 'RESULTADOS ACUMULADOS', '238', 1, 2),
(261, 'RESULTADOS', '238001', 1, 2),
(262, 'RESERVA DE 20XX', '2.3.8.001.0001-7', 0, 2),
(263, 'RESULTADOS DE 20XX', '2.3.8.001.0002-5', 0, 2),
(264, 'PREJUÍZOS ACUMULADOS', '239', 1, 2),
(265, 'PREJUÍZOS ACUMULADOS', '239001', 1, 2),
(266, 'PREJUÍZOS DE 20XX', '2.3.9.001.0001-9', 0, 2),
(267, 'PREJUÍZO DE 20XX', '2.3.9.001.0002-7', 0, 2),
(268, 'PREJUÍZO DE 20XX', '2.3.9.001.0003-5', 0, 2),
(269, 'RECEITAS', '3', 1, 3),
(270, 'RECEITAS OPERACIONAIS', '31', 1, 3),
(271, 'RECEITA BRUTA', '311', 1, 3),
(272, 'RECEITA BRUTA DE VENDAS', '311001', 1, 3),
(273, 'RECEITA DE VENDA MERCADO INTERNO', '3.1.1.001.0001-5', 0, 3),
(274, 'RECEITACAO C/ EXPORTACAO', '3.1.1.001.0002-3', 0, 3),
(275, 'RECEITA DE SERVICOS', '3.1.1.001.0003-1', 0, 3),
(276, 'VENDA C/ ISENCOES', '3.1.1.001.0004-0', 0, 3),
(277, 'RECEITAS C/ INDUSTRIALIZACOES', '3.1.1.001.0005-8', 0, 3),
(278, 'RECEITA C/ SERVIÇOS EXTERIOR', '3.1.1.001.0006-6', 0, 3),
(279, '(-) DEDUCAO DA RECEITA BRUTA', '311002', 1, 3),
(280, '(-) IPI SOBRE VENDAS', '3.1.1.002.0001-0', 0, 3),
(281, '(-) ICMS SOBRE VENDAS', '3.1.1.002.0002-8', 0, 3),
(282, '(-) PIS SOBRE VENDAS', '3.1.1.002.0003-6', 0, 3),
(283, '(-) COFINS SOBRE VENDAS', '3.1.1.002.0004-4', 0, 3),
(284, '(-) ICMS SUBSTITUICAO TRIBUTARIA', '3.1.1.002.0005-2', 0, 3),
(285, '(-) ISS S/ SERVIÇOS', '3.1.1.002.0006-0', 0, 3),
(286, '(-) SIMPLES S/ FATURAMENTO', '3.1.1.002.0007-9', 0, 3),
(287, '(-) DEVOLUCAO DE VENDAS', '3.1.1.002.0008-7', 0, 3),
(288, '(-) IRPJ', '3.1.1.002.0009-5', 0, 3),
(289, '(-) CSSL', '3.1.1.002.0010-9', 0, 3),
(290, 'CUSTOS DOS PRODUTOS VENDIDOS', '311003', 1, 3),
(291, 'ESTOQUE INICIAIS', '3.1.1.003.0001-4', 0, 3),
(292, 'COMPRAS DE MERCADORIAS NACIONAIS', '3.1.1.003.0002-2', 0, 3),
(293, 'COMPRAS DE MERC. EXTERIOR', '3.1.1.003.0003-0', 0, 3),
(294, '(-) ICMS SOBRE COMPRAS', '3.1.1.003.0004-9', 0, 3),
(295, '(-) IPI SOBRE COMPRAS', '3.1.1.003.0005-7', 0, 3),
(296, '(-) PIS S/ COMPRAS', '3.1.1.003.0006-5', 0, 3),
(297, '(-) COFINS S/ COMPRAS', '3.1.1.003.0007-3', 0, 3),
(298, 'FRETES S/ COMPRAS', '3.1.1.003.0008-1', 0, 3),
(299, 'BENEFICIAMENTO EF. POR 3º', '3.1.1.003.0009-0', 0, 3),
(300, '(-) ESTOQUE FINAL', '3.1.1.003.0010-3', 0, 3),
(301, 'CUSTOS DOS PRODUTOS INDUSTRIALIZADOS', '311004', 1, 3),
(302, 'ESTOQUES INICIAIS', '3.1.1.004.0001-9', 0, 3),
(303, 'COMPRAS DE MERCADORIAS NACIONAIS', '3.1.1.004.0002-7', 0, 3),
(304, 'COMPRAS DE MERC. EXTERIOR', '3.1.1.004.0003-5', 0, 3),
(305, '(-) ICMS SOBRE COMRPAS', '3.1.1.004.0004-3', 0, 3),
(306, '(-) IPI SOBRE COMPRAS', '3.1.1.004.0005-1', 0, 3),
(307, '(-) PIS SOBRE COMPRAS', '3.1.1.004.0006-0', 0, 3),
(308, '(-) COFINS SOBRE COMPRAS', '3.1.1.004.0007-8', 0, 3),
(309, 'FRETES SOBRE COMPRAS', '3.1.1.004.0008-6', 0, 3),
(310, 'BENEFICIAMENTO EFET. POR 3o', '3.1.1.004.0009-4', 0, 3),
(311, '(-) ESTOQUE FINAL', '3.1.1.004.0010-8', 0, 3),
(312, 'CUSTO DOS PRODUTOS INDUSTRIALIZADOS', '3.1.1.040-0', 1, 3),
(313, 'OUTRAS RECEITAS OPERACIONAIS', '312', 1, 3),
(314, 'RECEITAS FINANCEIRAS', '312001', 1, 3),
(315, 'REND. APLICACAO FINANCEIRA', '3.1.2.001.0001-7', 0, 3),
(316, 'DESCONTO OBTIDOS', '3.1.2.001.0002-5', 0, 3),
(317, 'JUROS ATIVOS', '3.1.2.001.0003-3', 0, 3),
(318, 'VARIACAO CAMBIAL ATIVA', '312002', 1, 3),
(319, 'V. C. ATIVA REALIZADA', '3.1.2.002.0001-1', 0, 3),
(320, 'V. C. ATIVA NAO REALIZADA    ', '3.1.2.002.0002-0', 0, 3),
(321, 'RECEITAS NAO OPERACIONAIS', '32', 1, 3),
(322, 'OUTRAS RECEITAS', '321', 1, 3),
(323, 'ALIENACAO DE ATIVO FIXO', '321001', 1, 3),
(324, 'VENDA DE ATIVO FIXO', '3.2.1.001.0001-3', 0, 3),
(325, 'CUSTO DO ATIVO FIXO', '3.2.1.001.0002-1', 0, 3),
(326, '(-) BAIXA DE DEPRECIAÇÃO DO ATIVO FIXO', '3.2.1.001.0003-0', 0, 3),
(327, 'DESPESAS', '4', 1, 4),
(328, 'DESPESAS OPERACIONAIS', '41', 1, 4),
(329, 'DESPESAS GERAIS', '411', 1, 4),
(330, 'DESPESAS C/ PESSOAL', '411001', 1, 4),
(331, 'SALARIOS E ENCARGOS', '4.1.1.001.0001-2', 0, 4),
(332, 'FERIAS', '4.1.1.001.0002-0', 0, 4),
(333, '13 SALARIO', '4.1.1.001.0003-9', 0, 4),
(334, 'PRO LABORE', '4.1.1.001.0004-7', 0, 4),
(335, 'ESTAGIO', '4.1.1.001.0005-5', 0, 4),
(336, 'GRATIFICACOES', '4.1.1.001.0006-3', 0, 4),
(337, 'PLR - PARTICIPACAO NOS LUCROS', '4.1.1.001.0007-1', 0, 4),
(338, 'BOLSA - CURSOS E TREINAMENTOS', '4.1.1.001.0008-0', 0, 4),
(339, 'RESCISOES TRABALHISTAS', '4.1.1.001.0009-8', 0, 4),
(340, 'AJUDA DE CUSTOS', '4.1.1.001.0010-1', 0, 4),
(341, 'VALE REFEICAO', '4.1.1.001.0012-8', 0, 4),
(342, 'VALE TRANSPORTE', '4.1.1.001.0013-6', 0, 4),
(343, 'UNIFORMES', '4.1.1.001.0014-4', 0, 4),
(344, 'ASSISTENCIA MEDICA', '4.1.1.001.0015-2', 0, 4),
(345, 'ASSISTENCIA ODONTOLOGICA', '4.1.1.001.0016-0', 0, 4),
(346, 'DESPESAS C/ PCMSO', '4.1.1.001.0017-9', 0, 4),
(347, 'INSS', '4.1.1.001.0018-7', 0, 4),
(348, 'FGTS S/ SALARIOS', '4.1.1.001.0019-5', 0, 4),
(349, 'HORAS EXTRAS', '4.1.1.001.0020-9', 0, 4),
(350, 'DESPESAS ADMINISTRATIVAS', '411002', 1, 4),
(351, 'DESPESAS C/ CARTORIOS', '4.1.1.002.0001-7', 0, 4),
(352, 'ASSINATURA DE JORNAIS E REVISTAS', '4.1.1.002.0002-5', 0, 4),
(353, 'DESPESAS ADMINISTRATIVAS', '4.1.1.002.0003-3', 0, 4),
(354, 'DESPESAS DE ESCRITÓRIO', '4.1.1.002.0004-1', 0, 4),
(355, 'DESPESAS C/ COMUNICACAO', '411003', 1, 4),
(356, 'TELEFONIA FIXA', '4.1.1.003.0001-1', 0, 4),
(357, 'TELEFONIA MOVEL', '4.1.1.003.0002-0', 0, 4),
(358, 'DESP. C/ INTERNET', '4.1.1.003.0003-8', 0, 4),
(359, 'DESPESAS C/ OCUPACAO', '411004', 1, 4),
(360, 'AGUA / ESGOTO', '4.1.1.004.0001-6', 0, 4),
(361, 'ENERGIA ELETRICA', '4.1.1.004.0002-4', 0, 4),
(362, 'ALUGUEIS', '4.1.1.004.0003-2', 0, 4),
(363, 'CONDOMINIO', '4.1.1.004.0004-0', 0, 4),
(364, 'MANUTENCAO / REPAROS', '4.1.1.004.0005-9', 0, 4),
(365, 'IPTU', '4.1.1.004.0006-7', 0, 4),
(366, 'LIMPEZA ESCRITÓRIO', '4.1.1.004.0007-5', 0, 4),
(367, 'DESPESAS DE ESCRITORIOS', '411005', 1, 4),
(368, 'MATERIAL DE ESCRITORIO', '4.1.1.005.0001-0', 0, 4),
(369, 'MATERIAL DE HIGIENE E LIMPEZA', '4.1.1.005.0002-9', 0, 4),
(370, 'SUPRIMENTOS DE INFORMATICA', '4.1.1.005.0003-7', 0, 4),
(371, 'DESPESAS C/ COPA', '4.1.1.005.0004-5', 0, 4),
(372, 'DESPESAS DE LOGISTICA', '411006', 1, 4),
(373, 'CORREIOS', '4.1.1.006.0001-5', 0, 4),
(374, 'FRETES E CARRETOS', '4.1.1.006.0002-3', 0, 4),
(375, 'SERVICOS DE MOTOBOY', '4.1.1.006.0003-1', 0, 4),
(376, 'DESPESAS C/ VENDAS', '411007', 1, 4),
(377, 'BRINDES', '4.1.1.007.0001-0', 0, 4),
(378, 'BONIFICACOES', '4.1.1.007.0002-8', 0, 4),
(379, 'PROPAGANDA DE PUBLICIDADE', '4.1.1.007.0003-6', 0, 4),
(380, 'EVENTOS', '4.1.1.007.0004-4', 0, 4),
(381, 'DESPESAS C/ VIAGENS', '411008', 1, 4),
(382, 'LOCACAO DE VEICULOS', '4.1.1.008.0001-4', 0, 4),
(383, 'HOSPEDAGEM', '4.1.1.008.0002-2', 0, 4),
(384, 'PASSAGENS', '4.1.1.008.0003-0', 0, 4),
(385, 'PEDAGIOS', '4.1.1.008.0004-9', 0, 4),
(386, 'LANCHES / REFEICOES', '4.1.1.008.0005-7', 0, 4),
(387, 'TAXI', '4.1.1.008.0006-5', 0, 4),
(388, 'LOCOMOÇÃO', '4.1.1.008.0007-3', 0, 4),
(389, 'REEMBOLSO DE COMBUSTIVEL', '4.1.1.008.0008-1', 0, 4),
(390, 'VIAGENS E ESTADIAS', '4.1.1.008.0009-0', 0, 4),
(391, 'ESTACIONAMENTO', '4.1.1.008.0010-3', 0, 4),
(392, 'DEPRECIACOES / AMORTIZACOES', '411009', 1, 4),
(393, 'DESPESAS C/ DEPRECIACOES', '4.1.1.009.0001-9', 0, 4),
(394, 'DESPESAS C/ AMORTIZACOES', '4.1.1.009.0002-7', 0, 4),
(395, 'SERVICOS PRESTADOS PJ', '411010', 1, 4),
(396, 'ASSESSORIA CONTABIL', '4.1.1.010.0001-1', 0, 4),
(397, 'ASSESSORIA JURIDICA', '4.1.1.010.0002-0', 0, 4),
(398, 'CONSULTORIAS', '4.1.1.010.0003-8', 0, 4),
(399, 'SERVICOS DE LIMPEZA', '4.1.1.010.0004-6', 0, 4),
(400, 'SERVICOS DE VIGILANCIA', '4.1.1.010.0005-4', 0, 4),
(401, 'SERVICOS DE INFORMATICA', '4.1.1.010.0006-2', 0, 4),
(402, 'OUTROS SERVIÇOS PJ', '4.1.1.010.0007-0', 0, 4),
(403, 'SERVICOS PRESTADOS PF', '411011', 1, 4),
(404, 'SERVICOS DE LIMPEZA PF', '4.1.1.011.0001-6', 0, 4),
(405, 'DESPESAS TRIBUTARIAS', '411012', 1, 4),
(406, 'ASSOCIACAO DE CLASSES', '4.1.1.012.0001-0', 0, 4),
(407, 'TAXAS FEDERAIS', '4.1.1.012.0002-9', 0, 4),
(408, 'TAXAS ESTADUAIS', '4.1.1.012.0003-7', 0, 4),
(409, 'TAXAS MUNICIPAIS', '4.1.1.012.0004-5', 0, 4),
(410, 'TAXAS SINDICAIS', '4.1.1.012.0005-3', 0, 4),
(411, 'PROVISOES DIVERSAS', '411013', 1, 4),
(412, 'PROVISAO DE FERIAS', '4.1.1.013.0001-5', 0, 4),
(413, 'PROVISAO DE 13o SALARIO', '4.1.1.013.0002-3', 0, 4),
(414, 'OUTRAS PROVISOES', '4.1.1.013.0003-1', 0, 4),
(415, 'DESPESAS FINANCEIRAS', '412', 1, 4),
(416, 'DESPESAS FINANCEIRAS', '412001', 1, 4),
(417, 'DESPESAS BANCARIAS', '4.1.2.001.0001-4', 0, 4),
(418, 'IOF / IOC', '4.1.2.001.0002-2', 0, 4),
(419, 'JUROS PASSIVOS', '4.1.2.001.0003-0', 0, 4),
(420, 'DESCONTO CONCEDIDOS', '4.1.2.001.0004-9', 0, 4),
(421, 'TARIFAS DE CAMBIO', '4.1.2.001.0005-7', 0, 4),
(422, 'VARIACAO CAMBIAL PASSIVA', '412002', 1, 4),
(423, 'V. C. PASSIVA REALIZADA', '4.1.2.002.0001-9', 0, 4),
(424, 'V. C . NAO REALIZADA', '4.1.2.002.0002-7', 0, 4),
(425, 'OUTRAS DESPESAS OPERACIONAIS', '42', 1, 4),
(426, 'OUTRAS DESPESAS NAO OPERACIONAIS', '421', 1, 4),
(427, 'DESPESAS INDEDUTIVEIS', '421001', 1, 4),
(428, 'MULTAS FEDERAIS', '4.2.1.001.0001-0', 0, 4),
(429, 'MULTAS ESTADUAIS', '4.2.1.001.0002-9', 0, 4),
(430, 'MULTAS MUNICIPAIS', '4.2.1.001.0003-7', 0, 4),
(431, 'MULTAS DE TRANSITO', '4.2.1.001.0004-5', 0, 4),
(432, 'OUTRAS DESPESAS INDEDUTIVEIS', '421002', 1, 4),
(433, 'DOACOES', '4.2.1.002.0001-5', 0, 4),
(434, 'APURAÇÃO DO RESULTADO', '5', 1, 5),
(435, 'APURAÇÃO DO RESULTADO', '51', 1, 5),
(436, 'APURAÇÃO DO RESULTADO', '511', 1, 5),
(437, 'APURAÇÃO DO RESULTADO', '511001', 1, 5),
(438, 'APURAÇÃO DO RESULTADO', '5.1.1.001.0001-0', 0, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `grupo`
--

CREATE TABLE `grupo` (
  `grupo_id` int(11) NOT NULL,
  `grupo_nome` varchar(255) NOT NULL,
  `grupo_naturezadesaldo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `grupo`
--

INSERT INTO `grupo` (`grupo_id`, `grupo_nome`, `grupo_naturezadesaldo`) VALUES
(1, 'ativo', 1),
(2, 'passivo', 0),
(3, 'receita', 0),
(4, 'despesa', 0),
(5, 'resultado', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `lancamento`
--

CREATE TABLE `lancamento` (
  `lanc_id` int(11) NOT NULL,
  `lanc_conta` int(11) NOT NULL,
  `lanc_valor` decimal(10,0) NOT NULL,
  `lanc_historico` varchar(255) NOT NULL,
  `lanc_data` date NOT NULL,
  `lanc_dc` enum('crédito','débito') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `lancamento`
--

INSERT INTO `lancamento` (`lanc_id`, `lanc_conta`, `lanc_valor`, `lanc_historico`, `lanc_data`, `lanc_dc`) VALUES
(5, 7, 333, 'dfsfsd', '2025-05-14', 'crédito');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `contas`
--
ALTER TABLE `contas`
  ADD PRIMARY KEY (`CT_id`),
  ADD UNIQUE KEY `CT_id` (`CT_id`),
  ADD KEY `Contas_fk4` (`grupo_id`);

--
-- Índices de tabela `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`grupo_id`),
  ADD UNIQUE KEY `grupo_id` (`grupo_id`);

--
-- Índices de tabela `lancamento`
--
ALTER TABLE `lancamento`
  ADD PRIMARY KEY (`lanc_id`),
  ADD UNIQUE KEY `lanc_id` (`lanc_id`),
  ADD KEY `Lançamento_fk1` (`lanc_conta`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contas`
--
ALTER TABLE `contas`
  MODIFY `CT_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=439;

--
-- AUTO_INCREMENT de tabela `grupo`
--
ALTER TABLE `grupo`
  MODIFY `grupo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `lancamento`
--
ALTER TABLE `lancamento`
  MODIFY `lanc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `contas`
--
ALTER TABLE `contas`
  ADD CONSTRAINT `Contas_fk4` FOREIGN KEY (`grupo_id`) REFERENCES `grupo` (`grupo_id`);

--
-- Restrições para tabelas `lancamento`
--
ALTER TABLE `lancamento`
  ADD CONSTRAINT `Lançamento_fk1` FOREIGN KEY (`lanc_conta`) REFERENCES `contas` (`CT_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
