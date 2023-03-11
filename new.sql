CREATE DATABASE college;
USE college;
CREATE TABLE `questions` (
  `id` int NOT NULL,
  `question` text NOT NULL,
  `op1` varchar(25) NOT NULL,
  `op2` varchar(25) NOT NULL,
  `op3` varchar(25) NOT NULL,
  `op4` varchar(25) NOT NULL
);

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `op1`, `op2`, `op3`, `op4`) VALUES
('1', '1.Which planet is closest to the Sun ?', 'a.Mercury', 'b.Venus', 'c.Earth', 'd.Mars'),
('10', 'q', 'op1', 'op2', 'op3', 'op4'),
('11', '1.Which planet is closest to the Sun ?', 'a.Mercury', 'b.Venus', 'c.Earth', 'd.Mars'),
('12', 'q', 'op1', 'op2', 'op3', 'op4'),
('13', 'q1', 'op1', 'op2', 'op3', 'op4'),
('14', 'q1', 'op1', 'op2', 'op3', 'op4'),
('15', 'q1', 'op1', 'op2', 'op3', 'op4'),
('16', 'q1', 'op1', 'op2', 'op3', 'op4'),
('17', 'q1', 'op1', 'op2', 'op3', 'op4'),
('18', 'q1', 'op1', 'op2', 'op3', 'op4'),
('19', 'q1', 'op1', 'op2', 'op3', 'op4'),
('2', 'q', 'op1', 'op2', 'op3', 'op4'),
('20', 'q1', 'op1', 'op2', 'op3', 'op4'),
('21', '1.Which planet is closest to the Sun ?', 'a.Mercury', 'b.Venus', 'c.Earth', 'd.Mars'),
('22', 'q', 'op1', 'op2', 'op3', 'op4'),
('23', 'q1', 'op1', 'op2', 'op3', 'op4'),
('24', 'q1', 'op1', 'op2', 'op3', 'op4'),
('25', 'q1', 'op1', 'op2', 'op3', 'op4'),
('26', 'q1', 'op1', 'op2', 'op3', 'op4'),
('27', 'q1', 'op1', 'op2', 'op3', 'op4'),
('28', 'q1', 'op1', 'op2', 'op3', 'op4'),
('29', 'q1', 'op1', 'op2', 'op3', 'op4'),
('3', 'q1', 'op1', 'op2', 'op3', 'op4'),
('30', 'q1', 'op1', 'op2', 'op3', 'op4'),
('4', 'q1', 'op1', 'op2', 'op3', 'op4'),
('5', 'q1', 'op1', 'op2', 'op3', 'op4'),
('6', 'q1', 'op1', 'op2', 'op3', 'op4'),
('7', 'q1', 'op1', 'op2', 'op3', 'op4'),
('8', 'q1', 'op1', 'op2', 'op3', 'op4'),
('9', 'q1', 'op1', 'op2', 'op3', 'op4');
