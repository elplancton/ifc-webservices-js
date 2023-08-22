-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql10.freemysqlhosting.net
-- Tempo de geração: 15/08/2023 às 23:51
-- Versão do servidor: 5.5.62-0ubuntu0.14.04.1
-- Versão do PHP: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sql10639997`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `curso`
--

CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `semestres` int(11) NOT NULL,
  `id_coordenador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `curso`
--

INSERT INTO `curso` (`id`, `nome`, `semestres`, `id_coordenador`) VALUES
(1, 'Tecnologia em Sistemas para Internet - TSI', 6, 5),
(2, 'Bacharelado em Sistemas de Informação', 8, 3),
(3, 'Técnico em Informática Integrado', 6, 2),
(4, 'Bacharelado em Agronomia', 8, 6),
(5, 'PROEJA', 6, 5),
(7, 'teste2', 4, 6),
(8, 'inserido', 6, 5),
(9, 'inserido', 6, 5),
(10, 'teste', 2, 5),
(11, '12', 2, 3),
(12, '45', 2, 3),
(13, 'asda', 3, 4),
(14, 'Curso do Rafael', 5, 3),
(15, 'sdfsdfdsfdsf', 6, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `id` int(11) NOT NULL,
  `codigo` varchar(15) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `carga` int(11) NOT NULL,
  `ementa` text NOT NULL,
  `semestre` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `disciplina`
--

INSERT INTO `disciplina` (`id`, `codigo`, `nome`, `carga`, `ementa`, `semestre`, `id_curso`) VALUES
(2, 'STB0302', 'Inglês Instrumental', 60, 'Conscientização do processo de leitura. Estratégias de leitura. Gramática aplicada da língua inglesa. Reconhecimento de gêneros textuais e aquisição de vocabulário. Análise textual de um gênero. Leitura intensiva de diversos gêneros textuais da área de Informática. Redação acadêmica.', 1, 1),
(3, 'STB0303', 'Introdução à Computação', 30, 'Evolução da computação (tecnologias e usos). Modelos funcionais dos computadores. Sistemas de códigos e codecs. Sistemas operacionais. Linguagens de programação. Sistemas de rede e Internet. Open Source/Free Software. O estado da arte. TI x Sustentabilidade.', 1, 1),
(4, 'STB0304', 'Introdução à Programação Web', 60, 'Infraestrutura do Ambiente Web; Páginas Estáticas e Páginas Dinâmicas; Introdução a Linguagem de Marcação HTML e suas evoluções; Folhas de Estilos (CSS); Introdução a Programação Client-Side (JavaScript); Princípios para Web Design Responsivo.', 1, 1),
(5, 'STB0305', 'Algoritmos e Técnicas de Programação', 90, 'Introdução à lógica de programação. Conceitos básicos sobre algoritmos. Algoritmos Estruturados: conceitos, estruturas de controle (seqüência, seleção e repetição)entrada e saída, atribuição; Operadores Básicos (Aritméticos, Relacionais e Lógicos); Resolução de problemas usando algoritmos; Verificação e correção de algoritmos através de testes de mesa; Implementações de algoritmos em uma linguagem de programação.Procedimentos e Funções.', 1, 1),
(6, 'STB0306', 'Estrutura de Dados', 60, 'Conjuntos Numéricos: Conjunto dos números Naturais; Conjunto dos números Inteiros; Conjunto dos números Racionais: Frações e operações com frações.', 2, 1),
(7, 'STB0307', 'Banco de Dados I', 60, 'Conscientização do processo de leitura. Estratégias de leitura. Gramática aplicada da língua inglesa. Reconhecimento de gêneros textuais e aquisição de vocabulário. Análise textual de um gênero. Leitura intensiva de diversos gêneros textuais da área de Informática. Redação acadêmica.', 2, 1),
(8, 'STB0308', 'Sistemas Operacionais', 60, 'Evolução da computação (tecnologias e usos). Modelos funcionais dos computadores. Sistemas de códigos e codecs. Sistemas operacionais. Linguagens de programação. Sistemas de rede e Internet. Open Source/Free Software. O estado da arte. TI x Sustentabilidade.', 2, 1),
(9, 'STB0309', 'Engenharia de Software I', 60, 'Infraestrutura do Ambiente Web; Páginas Estáticas e Páginas Dinâmicas; Introdução a Linguagem de Marcação HTML e suas evoluções; Folhas de Estilos (CSS); Introdução a Programação Client-Side (JavaScript); Princípios para Web Design Responsivo.', 2, 1),
(10, 'STB0305', 'Programação Web', 60, 'Introdução à lógica de programação. Conceitos básicos sobre algoritmos. Algoritmos Estruturados: conceitos, estruturas de controle (seqüência, seleção e repetição)entrada e saída, atribuição; Operadores Básicos (Aritméticos, Relacionais e Lógicos); Resolução de problemas usando algoritmos; Verificação e correção de algoritmos através de testes de mesa; Implementações de algoritmos em uma linguagem de programação.Procedimentos e Funções.', 2, 1),
(11, 'SIB0312', 'Desenvolvimento Web I', 60, 'Introdução à lógica de programação. Conceitos básicos sobre algoritmos. Algoritmos Estruturados: conceitos, estruturas de controle (seqüência, seleção e repetição)entrada e saída, atribuição; Operadores Básicos (Aritméticos, Relacionais e Lógicos); Resolução de problemas usando algoritmos; Verificação e correção de algoritmos através de testes de mesa; Implementações de algoritmos em uma linguagem de programação.Procedimentos e Funções.', 5, 2),
(12, 'SIB0313', 'Desenvolvimento Web II', 60, 'Introdução à lógica de programação. Conceitos básicos sobre algoritmos. Algoritmos Estruturados: conceitos, estruturas de controle (seqüência, seleção e repetição)entrada e saída, atribuição; Operadores Básicos (Aritméticos, Relacionais e Lógicos); Resolução de problemas usando algoritmos; Verificação e correção de algoritmos através de testes de mesa; Implementações de algoritmos em uma linguagem de programação.Procedimentos e Funções.', 6, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `estudante`
--

CREATE TABLE `estudante` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `matricula_estudante`
--

CREATE TABLE `matricula_estudante` (
  `id_estudante` int(11) NOT NULL,
  `id_disciplina` int(11) NOT NULL,
  `ano` int(11) NOT NULL,
  `semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `professor`
--

CREATE TABLE `professor` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `professor`
--

INSERT INTO `professor` (`id`, `nome`, `email`) VALUES
(1, 'André Moraes', 'a****s@ifc.edu.br'),
(2, 'Ângelo Frozza', 'a****a@ifc.edu.br'),
(3, 'Daniel Anderle', 'd****e@ifc.edu.br'),
(4, 'Daniel Varela', 'd****a@ifc.edu.br'),
(5, 'Rafael Speroni', 'r****i@ifc.edu.br'),
(6, 'Lidiane Visintin', 'l****n@ifc.edu.br'),
(7, 'Joao', 'joao@gmail.com');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_coordenador` (`id_coordenador`);

--
-- Índices de tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_disc_curso` (`id_curso`);

--
-- Índices de tabela `estudante`
--
ALTER TABLE `estudante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_estudante_curso` (`id_curso`);

--
-- Índices de tabela `matricula_estudante`
--
ALTER TABLE `matricula_estudante`
  ADD PRIMARY KEY (`id_estudante`,`id_disciplina`),
  ADD KEY `fk_matr_disciplina` (`id_disciplina`);

--
-- Índices de tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `fk_coordenador` FOREIGN KEY (`id_coordenador`) REFERENCES `professor` (`id`);

--
-- Restrições para tabelas `disciplina`
--
ALTER TABLE `disciplina`
  ADD CONSTRAINT `fk_disc_curso` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`);

--
-- Restrições para tabelas `estudante`
--
ALTER TABLE `estudante`
  ADD CONSTRAINT `fk_estudante_curso` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`);

--
-- Restrições para tabelas `matricula_estudante`
--
ALTER TABLE `matricula_estudante`
  ADD CONSTRAINT `fk_matr_disciplina` FOREIGN KEY (`id_disciplina`) REFERENCES `disciplina` (`id`),
  ADD CONSTRAINT `fk_matr_estudante` FOREIGN KEY (`id_estudante`) REFERENCES `estudante` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
