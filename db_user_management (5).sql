-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2019 at 07:54 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_user_management`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_participant` (`id_p` VARCHAR(11))  BEGIN
	insert into tb_tr_participant (id, grade, class)
	values (id_p, null, null);
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `add_placement` (`id_p` VARCHAR(10), `client_p` VARCHAR(5), `participant_p` VARCHAR(11))  BEGIN
	insert into tb_tr_placement (id, start_date, end_date, tb_tr_placement.`position`, department, tb_tr_placement.`client`, participant)
	values(id_p, null, null, null, null, client_p, participant_p);
    END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` varchar(255) NOT NULL,
  `birth_date` datetime DEFAULT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `is_delete` bit(1) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `marital` int(11) NOT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `photo` tinyblob DEFAULT NULL,
  `religion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `birth_date`, `birth_place`, `department`, `email`, `first_name`, `gender`, `is_delete`, `last_name`, `manager`, `marital`, `nationality`, `photo`, `religion`) VALUES
('5', '1998-12-30 17:00:00', 'pemalang', 'add', 'saputrareza979@gmail.com', 'ss', 'Male', b'0', 'ddd', '1', 1, 'WNI', 0x0a, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `employee_role` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_account`
--

CREATE TABLE `tb_m_account` (
  `id` varchar(11) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `verif_time` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_account`
--

INSERT INTO `tb_m_account` (`id`, `password`, `token`, `status`, `verif_time`) VALUES
('1', '$2a$10$fbOFITq34hbOp6oXf8KV3.XtMgdS9XYGjvrKwc/iq2KTSVOAs61w6', NULL, '0', NULL),
('2', '$2y$12$RyivjkVBLKHlXoU3ak6sweiVpxHJwKrjKf39S7CUeYgtwImQk5Kxu', '', '0', '2019-09-17'),
('3', '$2a$10$4fgx68HgMgTfMgWE.rOIiec1992D1r7sYsi3/bo0MvD396aTLEBqG', '', '0', '2019-09-17'),
('4', '?V?v??ר', NULL, '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_category`
--

CREATE TABLE `tb_m_category` (
  `id` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_category`
--

INSERT INTO `tb_m_category` (`id`, `name`) VALUES
('1', 'Programming Language'),
('2', 'Platform / Operating System'),
('3', 'Application'),
('4', 'Development');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_certificate`
--

CREATE TABLE `tb_m_certificate` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `institution` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_certificate`
--

INSERT INTO `tb_m_certificate` (`id`, `name`, `institution`) VALUES
(1, 'Oracle Database', 1),
(2, 'Oracle Administrator', 1),
(3, 'Oracle Cloud', 1),
(4, 'Microsoft SQL', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_degree`
--

CREATE TABLE `tb_m_degree` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_degree`
--

INSERT INTO `tb_m_degree` (`id`, `name`) VALUES
(1, 'D3'),
(2, 'S1'),
(3, 'S2'),
(4, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_education`
--

CREATE TABLE `tb_m_education` (
  `id` int(11) NOT NULL,
  `university` int(11) NOT NULL,
  `degree` int(11) NOT NULL,
  `major` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_education`
--

INSERT INTO `tb_m_education` (`id`, `university`, `degree`, `major`) VALUES
(1, 1, 2, 'TI'),
(2, 1, 3, 'SI'),
(3, 2, 2, 'SI'),
(4, 2, 3, 'TI'),
(5, 3, 1, 'MI');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_employee`
--

CREATE TABLE `tb_m_employee` (
  `id` varchar(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `birth_place` varchar(50) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `nationality` enum('WNI','WNA') DEFAULT NULL,
  `photo` mediumblob DEFAULT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `religion` int(11) DEFAULT NULL,
  `marital` int(11) DEFAULT NULL,
  `manager` varchar(11) NOT NULL,
  `department` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_employee`
--

INSERT INTO `tb_m_employee` (`id`, `first_name`, `last_name`, `email`, `birth_place`, `birth_date`, `gender`, `nationality`, `photo`, `is_delete`, `religion`, `marital`, `manager`, `department`) VALUES
('1', 'Super Admin', NULL, 'mii.bootcamp29@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '1', 'ADD2'),
('2', 'Muhammad', 'Affanul Halim', 'axffan@gmail.com', 'Jakarta', '0001-01-01', 'Male', 'WNI', NULL, 0, 3, NULL, '1', 'ADD1'),
('3', 'Wirya', 'Likwan Ibrahim', 'wehijin@gmail.com', 'Jakarta', '0001-01-01', 'Male', 'WNI', 0xffd8ffe000104a46494600010101006000600000ffdb0043000201010201010202020202020202030503030303030604040305070607070706070708090b0908080a0807070a0d0a0a0b0c0c0c0c07090e0f0d0c0e0b0c0c0cffdb004301020202030303060303060c0807080c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0cffc000110801f401f403012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00fdfca28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a2b92f8d7f1ebc13fb37f80ee7c51f103c59e1df067876d389751d67508acadc3609081a420339c1c28cb13c004d7e3ffede1ff0588f19ff00c162fe28c1fb2bfec31757f776de2289878dbe243dbcf636da5e9dbb64ab133aac91c583879b6879372c71025f2403f657c13f10f40f897a4c97fe1cd7347f1058c37125a4973a6de477714734676c91168c901d4f0cb9c83d456c57cf9ff04c8ff8272f827fe096ff00b28e95f0bbc12f757b1c73b6a5ac6ab75c4fad6a32246935cb2824202b1c6aa8bc2a46832c4163f41d00145145001451450014514500145145001451450014515e41ff000505f8b9a97c02fd833e35f8e346b88ed35af07f8135bd674d99ce025d5bd84f2c3ff9115303b9a00e57f637ff0082a57c1efdbc7e32fc52f02fc38d72eb55d73e11ea0ba7eb265b6f2a0b925e48fceb57c913422486442e31c853f75d19be89afe5b7fe088736b3ff0004bdfda83f63ff008d3717f7571e02fdadecf58f066b8b28c2d9de47adcd62833fdc578f4c9f7b7387b803819afea4a800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a8353d52db44d36e2f2f2e20b4b3b489a69e79a411c70c6a0b33b31e1540049278005001a96a56fa369d3de5e4f0dada5ac6d34f3cce123851412cccc780a002493c002bf303f6e3ff839f3e1bfc3cf1737c34fd9b340d4bf68ff008c5a8b9b3d3ad7c3f6f25c68b0dc74f9a68c6fbadbf7b6db06460083347d4781fed71fb5c7c4bff8390ff697d47f66efd9bb51bcf0cfecdde19b845f889f11163658f5b40dfea62e85e262a7ca8720ce46f7db12d7ea77ec2fff0004dcf835ff0004e5f86f0f877e14f82b4bd058dba437fabb44b2eadac95032f75744799212c0b6dc88d493b11471401f993f0fbfe0dc3f8aff00f0541be9fe287ede3f17fc689e2ad5230748f07f842f6d2287c2d113911169219edd382418e043cfccd348c5abf577f637fd95b42fd88ff666f097c2bf0cea9e25d6b41f06dabda59deebf7c2f751991a5797f7b2854538321550aaaaaaaaaa00502bd368a0028a28a002a8f89fc4b61e0cf0dea1ac6ab750d8e97a55b4979797329c476f0c6a5ddd8f60aa093f4abd5f91bff000726fc4bf1a7ed09fb44fecdbfb1bf833c517be16d3be3ceab23f8cae2c9374eda62cd0a202320b4402de48d1e40730202719a00f10fd893f64fbeff00839dbf6c1f17fed2bf1eadf568bf679f085ec9e1df00782e3bf92d56f7cb2acde6346c1c28565699d0ab49348115c243b2bf69bf67cfd97fe1d7ec9fe074f0dfc35f04f867c0fa226ddd6ba369f1daaccc380f21501a47e4e5dc9639393cd67fec7dfb257827f618fd9cbc31f0b7e1ee9cfa6f85bc2b6e61b65964f367b877769259e57fe296491ddd8e00cb60055000f4ba002bf13bfe0d89ff00828059fc02f12fc49fd92be3a789b5db2f8ed0fc42d52fac87882e5e58752630db452dac13c8c7f7a668279829c0944fb90b1635fb635f157fc1667fe08d9e14ff0082a97c2182ead674f08fc63f0721b8f07f8badf31cd6b2a9f316da774f9dadd9f9047cd131de9cee5700fb568afcdbff00837e7fe0abbe22fdad3c21e24f815f1bde7d37f692f8312cd61aedadec623b8d6ace19561fb61c7ca658dd962971c1263901225c0fd24a00fcf8f007fc1493e23c1ff0715f8e7f669f144ba443f0ca7f0141ad783e08ecd56ee6bc58ad6596479b3b981cdfa95e80411e003b8b7ddbf123c377fe33f877af68fa5eb577e1bd4f55d3ae2cecf57b58d249f4a9a489912e63570559e3621c0618254678afc99ff82b9c43f672ff0083907f615f8ab18f2078e56e3c0733af0272d33da80c0753ff001395193e8bfddafd80a00fc7cd5bfe0dd2fdace1b5b9b9b1ff008298fc73b8d4151e5b78674d5e1b7965c12aae46b2fb10b601211b03f84f4aa1fb24ff00c1753e2a7fc1383e2cda7c02ff0082816837da16a28df67f0ffc51b5b669f4cd721040592e1a350254e5737112ee5dc04d123077afd92af3efda6bf654f877fb64fc28bdf047c4ff0008e8de33f0c5ff00ccf67a843bbc97c10258a404490ca01389236575c9c11401d5f81bc77a27c4ef0869fe20f0deafa66bfa16ad0adcd8ea3a75d25d5ade447a3c72212aea7d4135ad5f873f153f60dfda6bfe0dd0f885acfc4afd94a5d57e31feceb7304b7fe26f006bb766e26d040605e68e3464672171b6e204322aa9f3a3911379fd00ff008259ff00c171be097fc15962bbd33c0777ac68de38d1f4e1a96abe17d66d7cabbb5803471bcd1c885a29a2596444dcadbbe652c89b80a00fb1a8a28a002bf3cbfe0e96f8d927c19ff822efc4c8ada636f7be32b9d37c370303d566bb8e49d7fe056f0cebf8d7e86d7e417fc1dc0edf153e1f7ecbdf06632cd27c4ff8a96ca225fbd288e31698fcf525fc48a00f2fff0082ddfec6175f01bfe0dcdfd9b754f0f5b9b1d7bf67d9bc37abdd4eabcc125cdbf9574fea0b5fcf03d7ecdfeceff196c3f68af803e08f1fe958fecdf1be8363af5a80dbb6c7756e932ae7d407c7e15c57fc142ff6588ff6d0fd85fe297c284fb34571e33f0ddd69da73cdc436f79b37da48d81f75274898e3b2d7e457fc12bbfe0e26f873ff0004f4ff0082505afc3df8c169afcbf17fe0deb579e0bb7f07d9c41b53d51565924858ee21218e12cd6cecc495300c2b1655201fb89e24f887a0783756d22c357d7347d2afbc41706d34bb6bcbc8e09752980dc6281588323e39daa09c76ad8afc74ff008265ff00c13c7e2fff00c14dff006bed2bf6d1fdaeedf50d0ffb12e92f3e17fc3a90496f1e871c72092dee6589b0d1a2305745602499c095f08115ff0062e800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800afc9dff8392bf690f1efc57f1e7c1dfd8a3e126a51695e2cfda2ae5bfe123bedcc1ec745593661b6fcde4c9e5dd3cbb7931d9ba7224615fac55f8b1fb06f88758ff82c9ffc1c51affed41a145169df07ff00669d36e7c0da05f85c9f12c92437f02904f66fb7dddce472919b656197cd007ea37ec1ff00b117823fe09e5fb30786be16f80ac52df49d0601f69bb68d56e758bb603cebcb823ef4b230c9eca02aae15540f61a28a0028a28a0028a28a002bf1e7e1bd97fc349ffc1e4bf10c7891fed117c03f8610cde188f19584cd69a686c8ff007b5cbd607d4afa66bf61abf203f637ff0095c93f6b1ffb25563ffa4de14a00fd7fa28a2800a28a2803f15bfe0b1be2a9ff00e095bff05eff00819fb5eea9e1ed4d3e0ef893413e0ef186a3a4a867b8bf68afe2fdf2f7296ed67322f59069ee179435fb535f901ff07ab7fca2cbc03ff65574effd346b15faff00401f901ff073d7fc5bff00daebfe09fdf12eebfe40fe07f8aa3ed84f03e7bdd22e464f6f96c65ff22bf5febf207fe0f4b3f61ff8264fc39bf8bf777b69f1574ff2275e1e1ce95ab31da7b728a7fe022bf5fa800a28af28fdb67f6cdf03fec09fb367897e27fc40d492c742f0edb19121565fb4ea770788ad6dd491be691f0aa3a0c96621558800e5bfe0a47ff0523f871ff04befd9c6ff00e217c42bff00ef5be8da35bbafdbfc4179b72b6f029fc0bb9f9635c93d81f87ffe0dc6fd8efc7be2cf89df17bf6d2f8c9a24be1ff1e7ed0370ff00d81a6480c6d61a2492a5c6ed9c1092b476cb1ef01bcbb457e44a09f923f660f12f803f6daf8e30fedb5ff0502f89fe0bf0d7866195a4f863f0b6fef7cdf2ecd1c98ee0e9ea1a796dc11b940889b871e63feef62bfd75aa7fc1e3dfb23699f10d74382c3e2e5fe99f68583fb7edfc3b6eba704271e6ec92e92eb60ea4791bb1d14f4a00fd5da28a2800afc84ff82c7b7fc2eaff0083887f604f877febbfe118b8baf18f95d766d9c5c6fc7fdc23ff001cf6afd7bafe7dff00e0a83f057e38ff00c142bfe0e5af15783ff67bf1ae8de04f881f0a7e195bdb8d7752bd9ecc69967340a6e04334104d24733aeb5b4322861e6310ca466803ecff00f82dd7fc175b47fd9a7c3daa7c0bf80da8cbe36fda7fc57709e1fd3f4cd12d9af64f0d4d3e14cb2100a1ba0ad88e105995cab3a855c37e7b7ecb7ff04fcd43fe093dff0005fafd98ff00e17b6a107c4ad6be33e8f2ea77bad6af9bbfecef155c7da1488e4766f3e68ae7ecca266249373e600ac171facfff000490ff00821ffc32ff0082617816df569ad2d3c71f19f555fb5ebfe38d4e15b9bd17524789e3b291d7cc82dcb33f43be4dd9919b80bf2eff00c1dc9e1eb8f873f0b7f66df8ed636f34977f07fe265bbb4b0a12d6f1cc16e43920703cdd3a25ce7ef3a8ea45007ebed158bf0ebe22687f173c05a378a3c33aa59eb7e1ef10d9c5a869ba85a49e641796f2a878e446ee0a906b6a800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800afc80ff00832a7fe5165e3eff00b2aba8ff00e9a347afd7fafc67ff008367b5b7fd817f6b2fda67f623f145dd9a6a9e10f13bf8afc353cac23b8d72da586186470a719cdac7a74c1572409653d173401fb314514500145145001451450015f8f7fb36de27c39ff83cabf6804d6b3607c7df0b6d63d03cd18fed231d9e80cfe5fae0585dff00df86f4afd84afce1ff0082e67fc12a3e217ed33e3bf875fb44fecf1a9dae87fb43fc18706c04f37951ebf608cf28b5c90537abbca155f09225ccc8e7057001fa3d457c5fff00043aff0082ae27fc156ff64a93c43ade9fa77877e267847509345f176876a5d12d6e1798e78e39099122950f0189dae92a6e6d993f68500145145007e33ffc1ea1f10b45b9fd843e16f8022d46da6f1aeb5f112d756b1d1223bef6ead21d3f518249963193b44b75027bb4800ce0e3f662bf15ff00e0959e10b7ff0082b9ff00c174ff00680fda77c6096fadf847e076a09e0ef877693c625b68de3926486ea307237247149718ed2ea01d482831fb51401fcf8ffc1d55ff000573fd9dbf6dff00d8ab40f867f0abe24da78cbc65e19f88f6da96a1676ba55fc70476d069fa9dbc92a5ccb02dbcaa259e251e5c8dbb7e46402476dfb48ffc1ee7e11d1ee67b5f849f0535fd797958b52f156ab169aa08fe2fb35bace594f6ccc871d40e947fc1c19fb207c26f8adff051afd943f671f879f0bbe1d7853c45f13bc48fe22f19ea7a0f86ecf4fd4ae34e69c46cf24d046b248a638f529583372d0a9ea323f68be0d7ecd5f0e7f673d3a4b3f87be00f04f812d26ff590787743b5d2e3939cf2b02203cf3401f821e04ff82b07fc158bfe0a5909d47e0afc33b6f086833297b6bfd37c2f6b65613a0e7e4bcd6e478656c75f2dbbf006457556bff06bbfed43ff00051f6d0fc7bfb56fed1979a678a2e109b9d0e5b41af4fa2a6f61e444d15cc76716e55463e40280b9fbc473fbf745007e677eca3ff069dfec91fb384d6d7bafe81e20f8b1ac4186f3bc57a896b457ee45adb88a265ff6651275ee79af15ff0083c47e19786fe107fc121be1c683e12f0f687e17d0ecfe2a69e2df4ed22c22b2b4807f646b1f722895517a7615fb27ab6ad6ba0695737d7d736f65656513cf71713c8238a08d4166776380aa0024927000afc35f136a5a27fc1cbbff0005b3d3b48b36f10f88bf64bfd9ef4d69afa48f7dbe95e22d57cc6e437713b3220e8ed6f69295d9bcb5007ee951451400d92458636662155465989c003d4d7e3aff00c100f5f83f6bff00f82c47edc1fb44691e65ff0084afb53b7f0be83abec3e4ea30094e0c6ddc7936568e4750b3479eb5f4bffc1cadfb5f5f7ec75ff048cf887a868b7cda6f88bc6ef078374bb846dae8d785bed1b4f50ff638eeb691ca9008e95e9bff000459fd8974efd813fe09b1f0c7c0b6d69f66d66e74a875df11bb2e249f55bc8d26b9dfebe592b0a9ebb2041da803ea8ae37f682f805e13fda93e0b788fe1f78e747b7d7bc29e2bb27b0d46ca61c488dc8653d55d582b238c32b2ab020806bb2a2803f18ffe0911f127c6bff046aff82976adfb087c4ad4eff5ef871e32f3b5df847afdc8c054612ccd6fe8ab208e65651c2dcc2db548b8dd5fb395f96fff0007307ec93f11fc7fa77ecf5f1bbe09f83b5ff19fc55f831e3db692dec745b36b8b892ce62b317942658c2971696eac705556e2466c2ee35fa91400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140057e727fc162ffe08cbe3afdacbf682f873fb40fece1e30f0cfc2efda0be1f4a613ab6a91325aeaf6db4ac66664827dd244a64401e1759239991fe55515fa3745007e397c07ff0082dffed37fb017ed19e07f861fb7f7c3af0e784fc39e36cd868ff11b4a7816de49d6409f68bc782792d44677297dab03428c8ed16d24d7eb8fc3cf899e1cf8bbe15b7d77c27e20d13c4fa25dff00a8d4749be8af6d66ff007658d991bf035e7ffb66fec23f09ff00e0a11f0b6dbc17f187c1f6de32f0e59dfa6a76f6d25e5cd9c96f728ae8b224d6f2472a9db23a901c0218820d7e74fc4fff008336ff00670d5f54d4358f00f8e3e307c38d70932e91f64d5adef6c7489872ac124805cba8f4fb506ff6c5007eb9515f8ff1ff00c1b81fb52431aaaffc14dbe3f2aa8c2a88757000f41ff13ca65cff00c1ae5f13be2caff67fc5ff00dbd3e3d7c48f0e631fd9adf6a8b39fbdcdd6a1769c8c7fcb3fce803f40be39ff00c156ff00669fd9b62d5c78d3e3b7c2dd1ef7421fe9da60f115b5ceab09ce368b2859ee59bfd958c9f6af4dfd9ebf686f067ed5df06b42f883f0f35fb4f147837c4b0bcfa6ea76caeb1dcaa48d13fcaeaaeacb223a32b286564604022be24f835ff0006b17ec53f08ec34bfb57c30d43c69a9e972acc352f11788efe692e994823ce821962b575e395306d3920822bef5f87bf0e7c3df08fc17a7f86fc29a0e8de18f0ee931f9363a5e93651d959592649db1431aaa22e4938500649a00daa28a2803f237fe0a35ff00044ff89ffb3ffeda1a2fed5bfb0dd869365f138ea17777e2ef08dfea9f67d3fc4cd724191d1659238b6c85a53344d346a49478cabaf383a17fc1d69ab7ec9ed27867f6befd9a7e297c34f1c5ab346b27872c639ac354c1e64856f278709d70639a7538c86e78fd90a2803f39fc03ff00075a7ec43e31f09d9ea3a8fc51d63c297972bba4d2b55f086ad25dda1cfdd76b5b79e127bfc92b0e7ad7ca3ff056cff82fae87fb7eafc2ff00d9bff637f893f6bd6be38f8823f0cf893c48347d4f4d9743b6b89a08238d0cf04720597ce91a592256648e06191bebf553c4bff04c4fd9afc69e20bcd5b58fd9ebe076adaaea12b4f757979e03d2e7b8b9918e59de4680b3313d49249ae9be0c7ec5bf073f670d666d47e1e7c26f869e03d42e13cb96ebc3be17b1d2e6957d19e089188f62680384ff008262ff00c136bc0bff0004b2fd9674ef867e07fb45e7ef8ea3adeaf743171ae6a0e88925cbae484188d15235e11114658ee66fa1e8a2803f203f6c8ff95c93f64eff00b2557dff00a4de2bafd7fafc8dff008395be0ef8cbf663f8a9f06bf6eef8716fa6ddeb1fb3fdc47a6789ad2ea7311bed32e6e8430202392864bcb985c2e580bd0c0611abdaff00e0dbbff82937c44ff82a17ec51e30f1cfc4fbad16e3c47a3f8f6fb45b75d36d16d521b216965730a1404e76b5cca818f25631925816201fa0f5f903f127fe0f15f83ba978865f0b7c1bf83ff0018be2e78e2e3511a7e8fa7259c1a7daeb8db8ae6078dee6e896c6513ec9b8e790b5fafd5cf7c36f849e14f835a25c69be0ff000cf87bc29a75e5e4ba8dc5ae8fa7436304f7329dd2cec912aab48e796723731ea4d007e3278f3e1a7edc1ff0710f8d2d3c35f107c1de22fd903f669b60b2eb3a5ddb49fdb3e21657cf92e92a4334c4ff00089218edd31bcacaeaaa7f5a7f635fd8cbe1e7ec11f00747f86df0cb428b43f0d6900b1c9f32e6fe76c79973712f5966720658f60140555551ea74500145145007e2f7fc17075c6ff82a47fc15f3f678fd8dfc308ba8e91e06d4e3f1b7c45981dd0d9c3b5243138e8aeb67bf19e19b5085720e6bf686bf1c7fe0d37d0d3f69ab9fda63f6aef102473f8dfe2878fee7462cdf33e9b6c91c3a83c31b768d9af605c7a5a47d315fb1d400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401ccfc64f83be19fda0be166bde09f19e8d67e21f0b789ace4b0d4f4eba5cc5750b8c1071820f4219486520104100d7c3dff00043cff008230eb5ff0483f893fb4221f1569faf780fe226b5613f83ace29a692f34db2b5fb691f6cdc891f9e56ea34263dc185b86246e08bfa0f4500145145001451450015e53fb717ecf3adfed65fb2578efe1bf877c71a9fc38d63c63a6369d0788f4f83ce9f4e0cca5f09bd090e81a36c3ab6d91b6b29c11ead45007cfbff0004cbff008272f823fe096dfb29e99f0b7c0ef777b0c770fa9eafaa5df13eb7a8c891a4b74ea0954cac51a2a2f0a91a0cb1058fd05451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401fffd9, 0, 1, 1, '1', 'ADD2'),
('4', 'kkk', 'hhh', 'saputrareza979@gmail.com', 'pml', '2019-09-10', 'Male', 'WNI', NULL, 0, 1, 1, '1', 'ku');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_institution`
--

CREATE TABLE `tb_m_institution` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_institution`
--

INSERT INTO `tb_m_institution` (`id`, `name`) VALUES
(1, 'Oracle'),
(2, 'Cisco'),
(3, 'Microsoft');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_language`
--

CREATE TABLE `tb_m_language` (
  `id` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_language`
--

INSERT INTO `tb_m_language` (`id`, `name`) VALUES
('1', 'Bahasa Indonesia'),
('2', 'English'),
('3', 'Mandarin'),
('4', 'Arabic');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_major`
--

CREATE TABLE `tb_m_major` (
  `id` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_major`
--

INSERT INTO `tb_m_major` (`id`, `name`) VALUES
('MI', 'Manajemen Informasi'),
('SI', 'Sistem Informasi'),
('TF', 'Teknik Fisika'),
('TI', 'Teknik Informatika'),
('TM', 'Teknik Mesin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_marital`
--

CREATE TABLE `tb_m_marital` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_marital`
--

INSERT INTO `tb_m_marital` (`id`, `name`) VALUES
(1, 'Single'),
(2, 'Married'),
(3, 'Divorced'),
(4, 'Widowed');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_religion`
--

CREATE TABLE `tb_m_religion` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_religion`
--

INSERT INTO `tb_m_religion` (`id`, `name`) VALUES
(1, 'Islam'),
(2, 'Kristen'),
(3, 'Hindu'),
(4, 'Buddha'),
(5, 'Konghucu');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_role`
--

CREATE TABLE `tb_m_role` (
  `id` varchar(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_role`
--

INSERT INTO `tb_m_role` (`id`, `name`) VALUES
('1', 'Super Admin'),
('2', 'Manager'),
('3', 'Trainer'),
('4', 'Staff'),
('5', 'kkkk');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_skill`
--

CREATE TABLE `tb_m_skill` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `category` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_skill`
--

INSERT INTO `tb_m_skill` (`id`, `name`, `category`) VALUES
(1, 'Java', '1'),
(2, 'C#', '1'),
(3, 'Windows 7', '2'),
(4, 'Windows 8', '2'),
(5, 'Windows 10', '2'),
(6, 'Ubuntu', '2'),
(7, 'Microsoft Office 2019', '3'),
(8, 'Adobe Photoshop', '3'),
(9, 'Netbeans', '4'),
(10, 'Microsoft Visual Studio', '4');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_status`
--

CREATE TABLE `tb_m_status` (
  `id` varchar(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_status`
--

INSERT INTO `tb_m_status` (`id`, `name`) VALUES
('-1', 'Not Verified'),
('0', 'Verified'),
('1', 'Login Gagal 1'),
('2', 'Login Gagal 2'),
('3', 'Lock');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_university`
--

CREATE TABLE `tb_m_university` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_m_university`
--

INSERT INTO `tb_m_university` (`id`, `name`) VALUES
(1, 'Universitas Gadjah Mada'),
(2, 'Universitas Indonesia'),
(3, 'Universitas Airlangga'),
(4, 'Universitas Hasanuddin'),
(5, 'Universitas Diponegoro');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tr_award`
--

CREATE TABLE `tb_tr_award` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `date` varchar(10) NOT NULL,
  `employee` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tr_certification`
--

CREATE TABLE `tb_tr_certification` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `attachment` blob DEFAULT NULL,
  `employee` varchar(11) NOT NULL,
  `certificate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tr_education_history`
--

CREATE TABLE `tb_tr_education_history` (
  `id` int(11) NOT NULL,
  `gpa` varchar(10) NOT NULL,
  `attachment` blob DEFAULT NULL,
  `education` int(11) NOT NULL,
  `employee` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_tr_education_history`
--

INSERT INTO `tb_tr_education_history` (`id`, `gpa`, `attachment`, `education`, `employee`) VALUES
(1, '3.00', NULL, 1, '3'),
(2, '3.00', NULL, 3, '3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tr_employee_language`
--

CREATE TABLE `tb_tr_employee_language` (
  `id` int(11) NOT NULL,
  `employee` varchar(10) NOT NULL,
  `language` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_tr_employee_language`
--

INSERT INTO `tb_tr_employee_language` (`id`, `employee`, `language`) VALUES
(1, '3', '1'),
(2, '3', '2'),
(4, '3', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tr_employee_role`
--

CREATE TABLE `tb_tr_employee_role` (
  `id` int(11) NOT NULL,
  `employee` varchar(11) NOT NULL,
  `role` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_tr_employee_role`
--

INSERT INTO `tb_tr_employee_role` (`id`, `employee`, `role`) VALUES
(1, '1', '1'),
(2, '2', '4'),
(3, '1', '4');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tr_employee_skill`
--

CREATE TABLE `tb_tr_employee_skill` (
  `id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `employee` varchar(11) NOT NULL,
  `skill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_tr_employee_skill`
--

INSERT INTO `tb_tr_employee_skill` (`id`, `score`, `employee`, `skill`) VALUES
(1, 75, '3', 2),
(2, 80, '3', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tr_experience`
--

CREATE TABLE `tb_tr_experience` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `date` varchar(10) NOT NULL,
  `employee` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_tr_experience`
--

INSERT INTO `tb_tr_experience` (`id`, `name`, `date`, `employee`) VALUES
(1, 'Berekspresi', '0001-01-01', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tr_organization`
--

CREATE TABLE `tb_tr_organization` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `posittion` varchar(50) NOT NULL,
  `start_period` date NOT NULL,
  `end_period` date NOT NULL,
  `employee` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_tr_organization`
--

INSERT INTO `tb_tr_organization` (`id`, `name`, `posittion`, `start_period`, `end_period`, `employee`) VALUES
(1, 'Mencoba Organisasi', 'Percobaan', '0001-01-01', '0001-01-02', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tr_project`
--

CREATE TABLE `tb_tr_project` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` text NOT NULL,
  `employee` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_tr_project`
--

INSERT INTO `tb_tr_project` (`id`, `name`, `start_date`, `end_date`, `description`, `employee`) VALUES
(1, 'Projecter', '0001-01-01', '0001-01-02', 'Deskripsi Project', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tr_training`
--

CREATE TABLE `tb_tr_training` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `employee` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tr_work_assignment`
--

CREATE TABLE `tb_tr_work_assignment` (
  `id` int(11) NOT NULL,
  `company` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `job_description` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `employee` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_tr_work_assignment`
--

INSERT INTO `tb_tr_work_assignment` (`id`, `company`, `position`, `job_description`, `start_date`, `end_date`, `employee`) VALUES
(1, 'Coba', 'Percobaan', 'Deskripsi Coba', '0001-01-01', '0001-01-02', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_account`
--
ALTER TABLE `tb_m_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tb_m_category`
--
ALTER TABLE `tb_m_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_certificate`
--
ALTER TABLE `tb_m_certificate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `institution` (`institution`);

--
-- Indexes for table `tb_m_degree`
--
ALTER TABLE `tb_m_degree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_education`
--
ALTER TABLE `tb_m_education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `university` (`university`),
  ADD KEY `degree` (`degree`),
  ADD KEY `major` (`major`);

--
-- Indexes for table `tb_m_employee`
--
ALTER TABLE `tb_m_employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `religion` (`religion`),
  ADD KEY `marital` (`marital`),
  ADD KEY `manager` (`manager`);

--
-- Indexes for table `tb_m_institution`
--
ALTER TABLE `tb_m_institution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_language`
--
ALTER TABLE `tb_m_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_major`
--
ALTER TABLE `tb_m_major`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_marital`
--
ALTER TABLE `tb_m_marital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_religion`
--
ALTER TABLE `tb_m_religion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_role`
--
ALTER TABLE `tb_m_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_skill`
--
ALTER TABLE `tb_m_skill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `tb_m_status`
--
ALTER TABLE `tb_m_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_m_university`
--
ALTER TABLE `tb_m_university`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tr_award`
--
ALTER TABLE `tb_tr_award`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee` (`employee`);

--
-- Indexes for table `tb_tr_certification`
--
ALTER TABLE `tb_tr_certification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee` (`employee`),
  ADD KEY `certificate` (`certificate`);

--
-- Indexes for table `tb_tr_education_history`
--
ALTER TABLE `tb_tr_education_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee` (`employee`),
  ADD KEY `education` (`education`);

--
-- Indexes for table `tb_tr_employee_language`
--
ALTER TABLE `tb_tr_employee_language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee` (`employee`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `tb_tr_employee_role`
--
ALTER TABLE `tb_tr_employee_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee` (`employee`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `tb_tr_employee_skill`
--
ALTER TABLE `tb_tr_employee_skill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee` (`employee`),
  ADD KEY `skill` (`skill`);

--
-- Indexes for table `tb_tr_experience`
--
ALTER TABLE `tb_tr_experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee` (`employee`);

--
-- Indexes for table `tb_tr_organization`
--
ALTER TABLE `tb_tr_organization`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee` (`employee`);

--
-- Indexes for table `tb_tr_project`
--
ALTER TABLE `tb_tr_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee` (`employee`);

--
-- Indexes for table `tb_tr_training`
--
ALTER TABLE `tb_tr_training`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee` (`employee`);

--
-- Indexes for table `tb_tr_work_assignment`
--
ALTER TABLE `tb_tr_work_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee` (`employee`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_tr_education_history`
--
ALTER TABLE `tb_tr_education_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_tr_employee_language`
--
ALTER TABLE `tb_tr_employee_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_tr_employee_role`
--
ALTER TABLE `tb_tr_employee_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_tr_employee_skill`
--
ALTER TABLE `tb_tr_employee_skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_tr_experience`
--
ALTER TABLE `tb_tr_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_tr_organization`
--
ALTER TABLE `tb_tr_organization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_tr_project`
--
ALTER TABLE `tb_tr_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_tr_work_assignment`
--
ALTER TABLE `tb_tr_work_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_m_account`
--
ALTER TABLE `tb_m_account`
  ADD CONSTRAINT `tb_m_account_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tb_m_employee` (`id`),
  ADD CONSTRAINT `tb_m_account_ibfk_2` FOREIGN KEY (`status`) REFERENCES `tb_m_status` (`id`);

--
-- Constraints for table `tb_m_certificate`
--
ALTER TABLE `tb_m_certificate`
  ADD CONSTRAINT `tb_m_certificate_ibfk_1` FOREIGN KEY (`institution`) REFERENCES `tb_m_institution` (`id`);

--
-- Constraints for table `tb_m_education`
--
ALTER TABLE `tb_m_education`
  ADD CONSTRAINT `tb_m_education_ibfk_1` FOREIGN KEY (`university`) REFERENCES `tb_m_university` (`id`),
  ADD CONSTRAINT `tb_m_education_ibfk_2` FOREIGN KEY (`degree`) REFERENCES `tb_m_degree` (`id`),
  ADD CONSTRAINT `tb_m_education_ibfk_3` FOREIGN KEY (`major`) REFERENCES `tb_m_major` (`id`);

--
-- Constraints for table `tb_m_employee`
--
ALTER TABLE `tb_m_employee`
  ADD CONSTRAINT `tb_m_employee_ibfk_1` FOREIGN KEY (`religion`) REFERENCES `tb_m_religion` (`id`),
  ADD CONSTRAINT `tb_m_employee_ibfk_2` FOREIGN KEY (`marital`) REFERENCES `tb_m_marital` (`id`),
  ADD CONSTRAINT `tb_m_employee_ibfk_3` FOREIGN KEY (`manager`) REFERENCES `tb_m_employee` (`id`);

--
-- Constraints for table `tb_m_skill`
--
ALTER TABLE `tb_m_skill`
  ADD CONSTRAINT `tb_m_skill_ibfk_1` FOREIGN KEY (`category`) REFERENCES `tb_m_category` (`id`);

--
-- Constraints for table `tb_tr_award`
--
ALTER TABLE `tb_tr_award`
  ADD CONSTRAINT `tb_tr_award_ibfk_1` FOREIGN KEY (`employee`) REFERENCES `tb_m_employee` (`id`);

--
-- Constraints for table `tb_tr_certification`
--
ALTER TABLE `tb_tr_certification`
  ADD CONSTRAINT `tb_tr_certification_ibfk_1` FOREIGN KEY (`employee`) REFERENCES `tb_m_employee` (`id`),
  ADD CONSTRAINT `tb_tr_certification_ibfk_2` FOREIGN KEY (`certificate`) REFERENCES `tb_m_certificate` (`id`);

--
-- Constraints for table `tb_tr_education_history`
--
ALTER TABLE `tb_tr_education_history`
  ADD CONSTRAINT `tb_tr_education_history_ibfk_1` FOREIGN KEY (`employee`) REFERENCES `tb_m_employee` (`id`),
  ADD CONSTRAINT `tb_tr_education_history_ibfk_2` FOREIGN KEY (`education`) REFERENCES `tb_m_education` (`id`);

--
-- Constraints for table `tb_tr_employee_language`
--
ALTER TABLE `tb_tr_employee_language`
  ADD CONSTRAINT `tb_tr_employee_language_ibfk_1` FOREIGN KEY (`employee`) REFERENCES `tb_m_employee` (`id`),
  ADD CONSTRAINT `tb_tr_employee_language_ibfk_2` FOREIGN KEY (`language`) REFERENCES `tb_m_language` (`id`);

--
-- Constraints for table `tb_tr_employee_role`
--
ALTER TABLE `tb_tr_employee_role`
  ADD CONSTRAINT `tb_tr_employee_role_ibfk_1` FOREIGN KEY (`employee`) REFERENCES `tb_m_employee` (`id`),
  ADD CONSTRAINT `tb_tr_employee_role_ibfk_2` FOREIGN KEY (`role`) REFERENCES `tb_m_role` (`id`);

--
-- Constraints for table `tb_tr_employee_skill`
--
ALTER TABLE `tb_tr_employee_skill`
  ADD CONSTRAINT `tb_tr_employee_skill_ibfk_1` FOREIGN KEY (`employee`) REFERENCES `tb_m_employee` (`id`),
  ADD CONSTRAINT `tb_tr_employee_skill_ibfk_2` FOREIGN KEY (`skill`) REFERENCES `tb_m_skill` (`id`);

--
-- Constraints for table `tb_tr_experience`
--
ALTER TABLE `tb_tr_experience`
  ADD CONSTRAINT `tb_tr_experience_ibfk_1` FOREIGN KEY (`employee`) REFERENCES `tb_m_employee` (`id`);

--
-- Constraints for table `tb_tr_organization`
--
ALTER TABLE `tb_tr_organization`
  ADD CONSTRAINT `tb_tr_organization_ibfk_1` FOREIGN KEY (`employee`) REFERENCES `tb_m_employee` (`id`);

--
-- Constraints for table `tb_tr_project`
--
ALTER TABLE `tb_tr_project`
  ADD CONSTRAINT `tb_tr_project_ibfk_1` FOREIGN KEY (`employee`) REFERENCES `tb_m_employee` (`id`);

--
-- Constraints for table `tb_tr_training`
--
ALTER TABLE `tb_tr_training`
  ADD CONSTRAINT `tb_tr_training_ibfk_1` FOREIGN KEY (`employee`) REFERENCES `tb_m_employee` (`id`);

--
-- Constraints for table `tb_tr_work_assignment`
--
ALTER TABLE `tb_tr_work_assignment`
  ADD CONSTRAINT `tb_tr_work_assignment_ibfk_1` FOREIGN KEY (`employee`) REFERENCES `tb_m_employee` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
