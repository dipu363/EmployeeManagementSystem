-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema employee_information
--

CREATE DATABASE IF NOT EXISTS employee_information;
USE employee_information;

--
-- Definition of table `emp_attendence`
--

DROP TABLE IF EXISTS `emp_attendence`;
CREATE TABLE `emp_attendence` (
  `SL_NO` int(10) unsigned NOT NULL auto_increment,
  `EMP_ID` varchar(45) NOT NULL,
  `EMP_NAME` varchar(45) NOT NULL,
  `EMP_DEP` varchar(45) NOT NULL,
  `EMP_POST` varchar(45) NOT NULL,
  `EMP_SHIFT` varchar(45) NOT NULL,
  `ATT_DATE` date NOT NULL,
  `IN_TIME` varchar(45) NOT NULL,
  `OUT_TIME` varchar(45) default NULL,
  `AT_MONTH` varchar(45) NOT NULL,
  `AT_YEAR` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`SL_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_attendence`
--

/*!40000 ALTER TABLE `emp_attendence` DISABLE KEYS */;
INSERT INTO `emp_attendence` (`SL_NO`,`EMP_ID`,`EMP_NAME`,`EMP_DEP`,`EMP_POST`,`EMP_SHIFT`,`ATT_DATE`,`IN_TIME`,`OUT_TIME`,`AT_MONTH`,`AT_YEAR`) VALUES 
 (61,'50','kamal','Accounts','General manager','Morning shift','2018-09-07','01:37:33 AM','04:06:33 AM','',''),
 (62,'60','anike','Accounts','Finance manager','Day shift','2018-09-07','08:18:34 AM','09:30:22 AM','',''),
 (63,'20','monir','Administrs','Assitent manager','Morning shift','2018-09-07','10:16:19 AM','10:18:11 AM','',''),
 (64,'','','','','','2018-09-07','12:35:17 PM',NULL,'',''),
 (65,'50','kamal','Accounts','General manager','Morning shift','2018-09-08','01:41:27 AM','04:06:33 AM','January','2018'),
 (66,'20','monir','Administrs','Assitent manager','Morning shift','2018-09-08','02:32:30 AM',NULL,'January','2018'),
 (67,'60','anike','Accounts','Finance manager','Day shift','2018-09-08','02:33:14 AM',NULL,'January','2018'),
 (68,'50','kamal','Accounts','General manager','Morning shift','2018-09-10','03:29:24 AM','04:06:33 AM','January','2018');
/*!40000 ALTER TABLE `emp_attendence` ENABLE KEYS */;


--
-- Definition of table `employee_info`
--

DROP TABLE IF EXISTS `employee_info`;
CREATE TABLE `employee_info` (
  `EMP_NO` int(10) unsigned NOT NULL auto_increment,
  `EMP_id` varchar(45) NOT NULL,
  `EMP_F_name` varchar(45) NOT NULL,
  `EMP_Surname` varchar(45) NOT NULL,
  `EMP_Address` varchar(45) NOT NULL,
  `EMP_Contact` varchar(45) NOT NULL,
  `EMP_Age` varchar(45) NOT NULL,
  `EMP_Gender` varchar(45) NOT NULL,
  `EMP_Department` varchar(45) NOT NULL,
  `EMP_Post` varchar(45) NOT NULL,
  `EMP_Shift` varchar(45) NOT NULL,
  `EMP_H_date` varchar(45) NOT NULL,
  `EMP_B_salary` double NOT NULL,
  `EMP_Image` blob NOT NULL,
  PRIMARY KEY  (`EMP_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_info`
--

/*!40000 ALTER TABLE `employee_info` DISABLE KEYS */;
INSERT INTO `employee_info` (`EMP_NO`,`EMP_id`,`EMP_F_name`,`EMP_Surname`,`EMP_Address`,`EMP_Contact`,`EMP_Age`,`EMP_Gender`,`EMP_Department`,`EMP_Post`,`EMP_Shift`,`EMP_H_date`,`EMP_B_salary`,`EMP_Image`) VALUES 
 (42,'578','dipu','raj','jdhfk','467273565','56','Female','Sales','Finance manager','Morning shift','Aug 29, 2018',867686,0x6E756C6C),
 (46,'463','6676','raj','jdhfk','467273565','56','Female','Sales','Finance manager','Morning shift','Aug 29, 2018',867686,0x6E756C6C),
 (47,'50','kamal','dipu','kakril','768699877','50','Male','Accounts','General manager','Morning shift','Aug 15, 2018',50000,0x6E756C6C),
 (48,'60','anike','kamal','kakril','768699877','40','Male','Accounts','Finance manager','Day shift','Aug 7, 2018',23000,0x6E756C6C),
 (49,'20','monir','kamal','kakril','768699877','30','Male','Administrs','Assitent manager','Morning shift','Sep 14, 2011',23000,0x6E756C6C),
 (50,'10','giyas Uddin','Dipu','Dhaka','01933932636','28','Male','Accounts','General manager','Morning shift','Sep 10, 2018',25000,0x6E756C6C),
 (51,'10','giyas Uddin','Dipu','Dhaka','01933932636','28','Male','Accounts','General manager','Morning shift','Sep 10, 2018',25000,0x6E756C6C);
/*!40000 ALTER TABLE `employee_info` ENABLE KEYS */;


--
-- Definition of table `monthly_salary`
--

DROP TABLE IF EXISTS `monthly_salary`;
CREATE TABLE `monthly_salary` (
  `Serial_No` int(10) unsigned NOT NULL auto_increment,
  `Emp_ID` varchar(10) NOT NULL,
  `Emp_name` varchar(45) NOT NULL,
  `Emp_dep` varchar(45) NOT NULL,
  `Emp_post` varchar(45) NOT NULL,
  `B_Salary` double NOT NULL,
  `Gross_salary` double NOT NULL,
  `Net_Salary` double NOT NULL,
  `Sal_Month` varchar(10) NOT NULL,
  `Sal_Year` varchar(4) NOT NULL,
  `Pro_Fund` double NOT NULL,
  `Insu_Fund` double NOT NULL,
  `Wel_Fund` double NOT NULL,
  `Advence` double NOT NULL,
  `IncomTax` double NOT NULL,
  `Deduction` double NOT NULL,
  PRIMARY KEY  USING BTREE (`Serial_No`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monthly_salary`
--

/*!40000 ALTER TABLE `monthly_salary` DISABLE KEYS */;
INSERT INTO `monthly_salary` (`Serial_No`,`Emp_ID`,`Emp_name`,`Emp_dep`,`Emp_post`,`B_Salary`,`Gross_salary`,`Net_Salary`,`Sal_Month`,`Sal_Year`,`Pro_Fund`,`Insu_Fund`,`Wel_Fund`,`Advence`,`IncomTax`,`Deduction`) VALUES 
 (2,'50','kamal','Accounts','General manager',50000,44666,24666,'January','2018',10,5,10,0,15,20000),
 (3,'60','anike','Accounts','Finance manager',23000,17916,8716,'January','2018',10,5,10,0,15,9200);
/*!40000 ALTER TABLE `monthly_salary` ENABLE KEYS */;


--
-- Definition of table `reg_info`
--

DROP TABLE IF EXISTS `reg_info`;
CREATE TABLE `reg_info` (
  `Id_no` int(10) unsigned NOT NULL auto_increment,
  `Name` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Contact` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY  (`Id_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_info`
--

/*!40000 ALTER TABLE `reg_info` DISABLE KEYS */;
INSERT INTO `reg_info` (`Id_no`,`Name`,`Address`,`Contact`,`Country`,`Gender`,`Username`,`Email`,`Password`) VALUES 
 (1,'Giyas Uddin ','Dhaka','01933932636','Bangladesh','Male','dipu','giyasuddin636@gmail.com','12345678'),
 (2,'kamal akhon','Narayangonj','01843312412','Bangladesh','Male','kamal','kamal@gamil.com','12345678');
/*!40000 ALTER TABLE `reg_info` ENABLE KEYS */;


--
-- Definition of table `weekly_wegas`
--

DROP TABLE IF EXISTS `weekly_wegas`;
CREATE TABLE `weekly_wegas` (
  `serial_no` int(10) unsigned NOT NULL,
  `N_W_hour` int(10) unsigned NOT NULL,
  `A_W_hour` int(10) unsigned NOT NULL,
  `N_W_rate` double NOT NULL,
  `G_W_rate` double NOT NULL,
  `NumberOf_leber` int(10) unsigned NOT NULL,
  `Date` date NOT NULL,
  `Per_Leber_wages` double NOT NULL,
  `Total_wages` double NOT NULL,
  PRIMARY KEY  (`serial_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weekly_wegas`
--

/*!40000 ALTER TABLE `weekly_wegas` DISABLE KEYS */;
/*!40000 ALTER TABLE `weekly_wegas` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
