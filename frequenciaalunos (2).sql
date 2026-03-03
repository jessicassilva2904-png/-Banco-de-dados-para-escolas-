-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2026 at 11:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `frequenciaalunos`
--

-- --------------------------------------------------------

--
-- Table structure for table `alunos`
--

CREATE TABLE `alunos` (
  `id_aluno` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `turma_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alunos`
--

INSERT INTO `alunos` (`id_aluno`, `nome`, `data_nasc`, `turma_id`) VALUES
(4, 'vanessa camargo', '2001-05-16', 7),
(9, 'italo costa', '2006-10-18', 6),
(11, 'joao pedro cassiano ', '2001-05-16', 7),
(12, 'caua oliveira', '2006-10-18', 6),
(13, 'camila souza', '2005-10-09', 7),
(14, 'kaua camargo ', '2006-10-18', NULL),
(15, 'rafaela silva', '2001-10-02', 7),
(16, 'jose souza ', '1999-09-26', 6),
(17, 'thiago freitas', '1994-10-19', NULL),
(18, 'jessica_santos ', '1999-09-26', 6),
(19, 'janaina_costa', '1994-10-11', 7),
(20, 'ana_silva', '1999-09-26', 6),
(23, 'gabrielly_santos', '2001-05-29', 7),
(24, 'kelly_santos', '2025-10-28', 6);

-- --------------------------------------------------------

--
-- Table structure for table `aulas`
--

CREATE TABLE `aulas` (
  `id_aula` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `disciplina_id` int(11) DEFAULT NULL,
  `turma_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aulas`
--

INSERT INTO `aulas` (`id_aula`, `data`, `disciplina_id`, `turma_id`) VALUES
(1, '2025-10-01', 4, 7),
(2, '2025-10-02', 5, 6),
(3, '2025-10-03', 1, 7),
(4, '2025-10-03', 3, 6),
(5, '2025-10-06', 2, 7),
(6, '2025-10-03', 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `disciplinas`
--

CREATE TABLE `disciplinas` (
  `id_disciplina` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `professor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disciplinas`
--

INSERT INTO `disciplinas` (`id_disciplina`, `nome`, `professor_id`) VALUES
(1, 'Programação_oit', 1),
(2, 'Sistemas_operacionais', 2),
(3, 'Projetos_gti', 4),
(4, 'programacao_ort_objeto ', 5),
(5, 'programacao_web', 3);

-- --------------------------------------------------------

--
-- Table structure for table `frequencias`
--

CREATE TABLE `frequencias` (
  `id_frequencia` int(11) NOT NULL,
  `id_aluno` int(11) DEFAULT NULL,
  `id_aula` int(11) DEFAULT NULL,
  `presente` int(1) DEFAULT NULL,
  `justificativa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `frequencias`
--

INSERT INTO `frequencias` (`id_frequencia`, `id_aluno`, `id_aula`, `presente`, `justificativa`) VALUES
(3, 20, 1, 70, 'APROVADA'),
(4, 13, 1, 100, 'APROVADA '),
(5, 12, NULL, 5, 'CONSELHO '),
(6, 12, NULL, 6, 'APROVADO '),
(7, 23, 3, 59, 'COMSELHO'),
(8, 12, NULL, 43, 'REPROVADO'),
(9, 16, 1, 75, 'APROVADO '),
(10, 11, 3, 8, 'APROVADO '),
(11, 12, NULL, 65, 'APROVADO ');

-- --------------------------------------------------------

--
-- Table structure for table `professores`
--

CREATE TABLE `professores` (
  `id_professor` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `professores`
--

INSERT INTO `professores` (`id_professor`, `nome`, `email`) VALUES
(1, 'calixto ', 'calixtoitalo@gmail.com'),
(2, 'rodnei portelli', 'rodneiportelli@gmail.com'),
(3, 'mauricio_tanizaka', 'tanizakaitalo@gmail.com'),
(4, 'edson_moreno ', 'edson_morenoitalo@gmail.com'),
(5, 'paulo_lacerda', 'paulo_lacerdaitalo@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `semestres`
--

CREATE TABLE `semestres` (
  `id_semestre` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semestres`
--

INSERT INTO `semestres` (`id_semestre`, `nome`, `ano`) VALUES
(1, '1 semestre', 2025),
(2, '2 semestre', 2025),
(3, '3 semestre', 2025),
(4, '4 semestre', 2025),
(5, '5 semestre', 2025),
(6, '6 semestre', 2025);

-- --------------------------------------------------------

--
-- Table structure for table `turmas`
--

CREATE TABLE `turmas` (
  `id_turma` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `turmas`
--

INSERT INTO `turmas` (`id_turma`, `nome`, `ano`) VALUES
(6, 'tarde', 2025),
(7, 'noite', 2025),
(8, '2025', 2025);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id_aluno`),
  ADD KEY `turma_id` (`turma_id`);

--
-- Indexes for table `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id_aula`),
  ADD KEY `disciplina_id` (`disciplina_id`),
  ADD KEY `turma_id` (`turma_id`);

--
-- Indexes for table `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id_disciplina`),
  ADD KEY `professor_id` (`professor_id`);

--
-- Indexes for table `frequencias`
--
ALTER TABLE `frequencias`
  ADD PRIMARY KEY (`id_frequencia`),
  ADD KEY `id_aluno` (`id_aluno`),
  ADD KEY `id_aula` (`id_aula`);

--
-- Indexes for table `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id_professor`);

--
-- Indexes for table `semestres`
--
ALTER TABLE `semestres`
  ADD PRIMARY KEY (`id_semestre`);

--
-- Indexes for table `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`id_turma`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1111101001;

--
-- AUTO_INCREMENT for table `aulas`
--
ALTER TABLE `aulas`
  MODIFY `id_aula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `id_disciplina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `frequencias`
--
ALTER TABLE `frequencias`
  MODIFY `id_frequencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `professores`
--
ALTER TABLE `professores`
  MODIFY `id_professor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `semestres`
--
ALTER TABLE `semestres`
  MODIFY `id_semestre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `turmas`
--
ALTER TABLE `turmas`
  MODIFY `id_turma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`turma_id`) REFERENCES `turmas` (`id_turma`);

--
-- Constraints for table `aulas`
--
ALTER TABLE `aulas`
  ADD CONSTRAINT `aulas_ibfk_1` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplinas` (`id_disciplina`),
  ADD CONSTRAINT `aulas_ibfk_2` FOREIGN KEY (`turma_id`) REFERENCES `turmas` (`id_turma`);

--
-- Constraints for table `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD CONSTRAINT `disciplinas_ibfk_1` FOREIGN KEY (`professor_id`) REFERENCES `professores` (`id_professor`);

--
-- Constraints for table `frequencias`
--
ALTER TABLE `frequencias`
  ADD CONSTRAINT `frequencias_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `alunos` (`id_aluno`),
  ADD CONSTRAINT `frequencias_ibfk_2` FOREIGN KEY (`id_aula`) REFERENCES `aulas` (`id_aula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
