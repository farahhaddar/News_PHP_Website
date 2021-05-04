-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 04, 2021 at 04:59 AM
-- Server version: 10.3.25-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `full_content` blob NOT NULL,
  `author` varchar(255) NOT NULL,
  `published_on` date NOT NULL,
  `views` int(11) NOT NULL,
  `cover_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `short_description`, `full_content`, `author`, `published_on`, `views`, `cover_image`) VALUES
(1, 'Pfizer And BioNTech Seek Covid Vaccine Approval', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.', 0x48756666506f20616e616c79746963732072696768742d73697a696e672048756666506f204e69636b2044656e746f6e206e65777370617065722073636f6f7020706c616769617269736d206d6f6e6574697a6174696f6e2c204e59542052264420676574206d652072657772697465206c6f636174696f6e2d6261736564204b696e646c652053696e676c65206162756e64616e636520636f70797269676874207065726665637420666f72207374617274696e6720612063616d7066697265206950616420617070204d696e6e506f73742c2053746f726966792065486f772050726f6a656374205468756e646572646f6d6520626f742064617461206a6f75726e616c69736d20636f676e697469766520737572706c7573206775747465722e2070617977616c6c206d656d65204c696b6520627574746f6e20666f757274682065737461746520696e63656e7420636f6c6c61626f726174696f6e20746865206f74686572206c6f6e67657220426f6f6b205265766965772046726f6e746c696e652073686f6f74206120766964656f204e69636b2044656e746f6e2c2063726f7764736f757263696e672043504d2050726f5075626c69636120746f6f6c732057534a2046726565204461726b6f206e6577736f6e6f6d6963732057616c746572204c6970706d616e6e2c20436c617920536869726b7920525420676f20766972616c20627574207768617427732074686520627573696e657373206d6f64656c20476f6f676c652b20746865206f74686572206c6f6e67657220426f6f6b2052657669657720617765736f6d6520466c6970626f6172642e0a0a646174612076697375616c697a6174696f6e206479696e6720526f6d656e65736b6f2063726f7764736f757263696e6720696620746865206e657773206973207468617420696d706f7274616e742c206974276c6c2066696e64206d652073747570696420636f6d6d656e746572732052535320687970657268797065726c6f63616c2c20627574207768617427732074686520627573696e657373206d6f64656c20546865205765656b656e646572205477697474657220746f70706c6573206469637461746f727320636f6d6d756e697479207065726665637420666f72207374617274696e6720612063616d7066697265204350432c20414f4c20477574656e6265726720706172656e746865736973206479696e672073656d697065726d6561626c6520667574757265206f66206e617272617469766520596f75547562652e20527570657274204d7572646f636820352520636f7272757074696f6e207461626c657473207265706f7274696e6720676574206d65207265777269746520746865206e6f74696f6e206f6620746865207075626c696320414f4c20546563684372756e6368202b312057616c746572204c6970706d616e6e206f70656e20736f75726365205477697474657220746f70706c6573206469637461746f7273206479696e6720412e4a2e204c6965626c696e6720676574206d652072657772697465204761776b65722054686973205765656b20696e205265766965772c20616e616c7974696373205374657665204a6f62732048756666506f205253532046616365626f6f6b20477574656e6265726720706172656e746865736973205a6974652067616d696669636174696f6e20414f4c207765206e6565642061204e6174652053696c76657220526f62696e20536c6f616e20352520636f7272757074696f6e2057534a206d6564696120646965742e0a0a6469676974616c2063697263756c6174696f6e20737472617465677920616c676f726974686d7320696e6e6f766174696f6e207265636f6e7465787475616c697a65206e657773706170657220687970657268797065726c6f63616c20636875726368206f66207468652073617676792070616964436f6e74656e7420696e2074686520736c6f74206c6561726e696e67732c20616e6f6e796d69747920746f74616c6c7920626c6f77696e67207570206f6e205477697474657220526f6d656e65736b6f204c7563697573204e69656d616e205253532063616e63656c206d7920737562736372697074696f6e2061667465726e6f6f6e2070617065722e20636f6e74656e74206973206b696e6720526575746572732046726f6e746c696e652074726f6c6c7320546865204461696c7920596f755475626520527570657274204d7572646f6368206375726d756467656f6e204b696e646c652053696e676c652c20456e6379636c6f2052657574657273204d6f7a696c6c6120746f74616c6c7920626c6f77696e67207570206f6e2054776974746572206465616420747265657320456e6379636c6f205477697474657220746f70706c6573206469637461746f7273206469676974616c206669727374204e5954205226442c20676f7474612067726f6b206974206265666f726520796f7520726f636b20697420747765657473204e69636b2044656e746f6e20576573742053656174746c6520426c6f672043504320446f6573206d7920227965732c2062757422206c6f6f6b2062696720696e207468697320636f726e6572206f66666963653f20546865205072696e74696e6720507265737320617320616e204167656e74206f66204368616e67652e0a, 'Johne Doe', '2021-04-02', 48, 'assets/image.jpg'),
(2, 'Covid-19 death count crosses 2L in India; over 3K.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. ', 0x48756666506f20616e616c79746963732072696768742d73697a696e672048756666506f204e69636b2044656e746f6e206e65777370617065722073636f6f7020706c616769617269736d206d6f6e6574697a6174696f6e2c204e59542052264420676574206d652072657772697465206c6f636174696f6e2d6261736564204b696e646c652053696e676c65206162756e64616e636520636f70797269676874207065726665637420666f72207374617274696e6720612063616d7066697265206950616420617070204d696e6e506f73742c2053746f726966792065486f772050726f6a656374205468756e646572646f6d6520626f742064617461206a6f75726e616c69736d20636f676e697469766520737572706c7573206775747465722e2070617977616c6c206d656d65204c696b6520627574746f6e20666f757274682065737461746520696e63656e7420636f6c6c61626f726174696f6e20746865206f74686572206c6f6e67657220426f6f6b205265766965772046726f6e746c696e652073686f6f74206120766964656f204e69636b2044656e746f6e2c2063726f7764736f757263696e672043504d2050726f5075626c69636120746f6f6c732057534a2046726565204461726b6f206e6577736f6e6f6d6963732057616c746572204c6970706d616e6e2c20436c617920536869726b7920525420676f20766972616c20627574207768617427732074686520627573696e657373206d6f64656c20476f6f676c652b20746865206f74686572206c6f6e67657220426f6f6b2052657669657720617765736f6d6520466c6970626f6172642e0a0a646174612076697375616c697a6174696f6e206479696e6720526f6d656e65736b6f2063726f7764736f757263696e6720696620746865206e657773206973207468617420696d706f7274616e742c206974276c6c2066696e64206d652073747570696420636f6d6d656e746572732052535320687970657268797065726c6f63616c2c20627574207768617427732074686520627573696e657373206d6f64656c20546865205765656b656e646572205477697474657220746f70706c6573206469637461746f727320636f6d6d756e697479207065726665637420666f72207374617274696e6720612063616d7066697265204350432c20414f4c20477574656e6265726720706172656e746865736973206479696e672073656d697065726d6561626c6520667574757265206f66206e617272617469766520596f75547562652e20527570657274204d7572646f636820352520636f7272757074696f6e207461626c657473207265706f7274696e6720676574206d65207265777269746520746865206e6f74696f6e206f6620746865207075626c696320414f4c20546563684372756e6368202b312057616c746572204c6970706d616e6e206f70656e20736f75726365205477697474657220746f70706c6573206469637461746f7273206479696e6720412e4a2e204c6965626c696e6720676574206d652072657772697465204761776b65722054686973205765656b20696e205265766965772c20616e616c7974696373205374657665204a6f62732048756666506f205253532046616365626f6f6b20477574656e6265726720706172656e746865736973205a6974652067616d696669636174696f6e20414f4c207765206e6565642061204e6174652053696c76657220526f62696e20536c6f616e20352520636f7272757074696f6e2057534a206d6564696120646965742e0a0a6469676974616c2063697263756c6174696f6e20737472617465677920616c676f726974686d7320696e6e6f766174696f6e207265636f6e7465787475616c697a65206e657773706170657220687970657268797065726c6f63616c20636875726368206f66207468652073617676792070616964436f6e74656e7420696e2074686520736c6f74206c6561726e696e67732c20616e6f6e796d69747920746f74616c6c7920626c6f77696e67207570206f6e205477697474657220526f6d656e65736b6f204c7563697573204e69656d616e205253532063616e63656c206d7920737562736372697074696f6e2061667465726e6f6f6e2070617065722e20636f6e74656e74206973206b696e6720526575746572732046726f6e746c696e652074726f6c6c7320546865204461696c7920596f755475626520527570657274204d7572646f6368206375726d756467656f6e204b696e646c652053696e676c652c20456e6379636c6f2052657574657273204d6f7a696c6c6120746f74616c6c7920626c6f77696e67207570206f6e2054776974746572206465616420747265657320456e6379636c6f205477697474657220746f70706c6573206469637461746f7273206469676974616c206669727374204e5954205226442c20676f7474612067726f6b206974206265666f726520796f7520726f636b20697420747765657473204e69636b2044656e746f6e20576573742053656174746c6520426c6f672043504320446f6573206d7920227965732c2062757422206c6f6f6b2062696720696e207468697320636f726e6572206f66666963653f20546865205072696e74696e6720507265737320617320616e204167656e74206f66204368616e67652e0a, 'EDEN LANE', '2021-04-01', 69, 'assets/image1.jpg'),
(3, 'Vaccines Not In, Don\'t Go To Hospitals ', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.', 0x48756666506f20616e616c79746963732072696768742d73697a696e672048756666506f204e69636b2044656e746f6e206e65777370617065722073636f6f7020706c616769617269736d206d6f6e6574697a6174696f6e2c204e59542052264420676574206d652072657772697465206c6f636174696f6e2d6261736564204b696e646c652053696e676c65206162756e64616e636520636f70797269676874207065726665637420666f72207374617274696e6720612063616d7066697265206950616420617070204d696e6e506f73742c2053746f726966792065486f772050726f6a656374205468756e646572646f6d6520626f742064617461206a6f75726e616c69736d20636f676e697469766520737572706c7573206775747465722e2070617977616c6c206d656d65204c696b6520627574746f6e20666f757274682065737461746520696e63656e7420636f6c6c61626f726174696f6e20746865206f74686572206c6f6e67657220426f6f6b205265766965772046726f6e746c696e652073686f6f74206120766964656f204e69636b2044656e746f6e2c2063726f7764736f757263696e672043504d2050726f5075626c69636120746f6f6c732057534a2046726565204461726b6f206e6577736f6e6f6d6963732057616c746572204c6970706d616e6e2c20436c617920536869726b7920525420676f20766972616c20627574207768617427732074686520627573696e657373206d6f64656c20476f6f676c652b20746865206f74686572206c6f6e67657220426f6f6b2052657669657720617765736f6d6520466c6970626f6172642e0a0a646174612076697375616c697a6174696f6e206479696e6720526f6d656e65736b6f2063726f7764736f757263696e6720696620746865206e657773206973207468617420696d706f7274616e742c206974276c6c2066696e64206d652073747570696420636f6d6d656e746572732052535320687970657268797065726c6f63616c2c20627574207768617427732074686520627573696e657373206d6f64656c20546865205765656b656e646572205477697474657220746f70706c6573206469637461746f727320636f6d6d756e697479207065726665637420666f72207374617274696e6720612063616d7066697265204350432c20414f4c20477574656e6265726720706172656e746865736973206479696e672073656d697065726d6561626c6520667574757265206f66206e617272617469766520596f75547562652e20527570657274204d7572646f636820352520636f7272757074696f6e207461626c657473207265706f7274696e6720676574206d65207265777269746520746865206e6f74696f6e206f6620746865207075626c696320414f4c20546563684372756e6368202b312057616c746572204c6970706d616e6e206f70656e20736f75726365205477697474657220746f70706c6573206469637461746f7273206479696e6720412e4a2e204c6965626c696e6720676574206d652072657772697465204761776b65722054686973205765656b20696e205265766965772c20616e616c7974696373205374657665204a6f62732048756666506f205253532046616365626f6f6b20477574656e6265726720706172656e746865736973205a6974652067616d696669636174696f6e20414f4c207765206e6565642061204e6174652053696c76657220526f62696e20536c6f616e20352520636f7272757074696f6e2057534a206d6564696120646965742e0a0a6469676974616c2063697263756c6174696f6e20737472617465677920616c676f726974686d7320696e6e6f766174696f6e207265636f6e7465787475616c697a65206e657773706170657220687970657268797065726c6f63616c20636875726368206f66207468652073617676792070616964436f6e74656e7420696e2074686520736c6f74206c6561726e696e67732c20616e6f6e796d69747920746f74616c6c7920626c6f77696e67207570206f6e205477697474657220526f6d656e65736b6f204c7563697573204e69656d616e205253532063616e63656c206d7920737562736372697074696f6e2061667465726e6f6f6e2070617065722e20636f6e74656e74206973206b696e6720526575746572732046726f6e746c696e652074726f6c6c7320546865204461696c7920596f755475626520527570657274204d7572646f6368206375726d756467656f6e204b696e646c652053696e676c652c20456e6379636c6f2052657574657273204d6f7a696c6c6120746f74616c6c7920626c6f77696e67207570206f6e2054776974746572206465616420747265657320456e6379636c6f205477697474657220746f70706c6573206469637461746f7273206469676974616c206669727374204e5954205226442c20676f7474612067726f6b206974206265666f726520796f7520726f636b20697420747765657473204e69636b2044656e746f6e20576573742053656174746c6520426c6f672043504320446f6573206d7920227965732c2062757422206c6f6f6b2062696720696e207468697320636f726e6572206f66666963653f20546865205072696e74696e6720507265737320617320616e204167656e74206f66204368616e67652e0a, 'Bob Frapples', '2021-04-11', 34, 'assets/image2.jpg'),
(4, 'Covid-19: States unsure of vaccination Phase 3.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.', 0x48756666506f20616e616c79746963732072696768742d73697a696e672048756666506f204e69636b2044656e746f6e206e65777370617065722073636f6f7020706c616769617269736d206d6f6e6574697a6174696f6e2c204e59542052264420676574206d652072657772697465206c6f636174696f6e2d6261736564204b696e646c652053696e676c65206162756e64616e636520636f70797269676874207065726665637420666f72207374617274696e6720612063616d7066697265206950616420617070204d696e6e506f73742c2053746f726966792065486f772050726f6a656374205468756e646572646f6d6520626f742064617461206a6f75726e616c69736d20636f676e697469766520737572706c7573206775747465722e2070617977616c6c206d656d65204c696b6520627574746f6e20666f757274682065737461746520696e63656e7420636f6c6c61626f726174696f6e20746865206f74686572206c6f6e67657220426f6f6b205265766965772046726f6e746c696e652073686f6f74206120766964656f204e69636b2044656e746f6e2c2063726f7764736f757263696e672043504d2050726f5075626c69636120746f6f6c732057534a2046726565204461726b6f206e6577736f6e6f6d6963732057616c746572204c6970706d616e6e2c20436c617920536869726b7920525420676f20766972616c20627574207768617427732074686520627573696e657373206d6f64656c20476f6f676c652b20746865206f74686572206c6f6e67657220426f6f6b2052657669657720617765736f6d6520466c6970626f6172642e0a0a646174612076697375616c697a6174696f6e206479696e6720526f6d656e65736b6f2063726f7764736f757263696e6720696620746865206e657773206973207468617420696d706f7274616e742c206974276c6c2066696e64206d652073747570696420636f6d6d656e746572732052535320687970657268797065726c6f63616c2c20627574207768617427732074686520627573696e657373206d6f64656c20546865205765656b656e646572205477697474657220746f70706c6573206469637461746f727320636f6d6d756e697479207065726665637420666f72207374617274696e6720612063616d7066697265204350432c20414f4c20477574656e6265726720706172656e746865736973206479696e672073656d697065726d6561626c6520667574757265206f66206e617272617469766520596f75547562652e20527570657274204d7572646f636820352520636f7272757074696f6e207461626c657473207265706f7274696e6720676574206d65207265777269746520746865206e6f74696f6e206f6620746865207075626c696320414f4c20546563684372756e6368202b312057616c746572204c6970706d616e6e206f70656e20736f75726365205477697474657220746f70706c6573206469637461746f7273206479696e6720412e4a2e204c6965626c696e6720676574206d652072657772697465204761776b65722054686973205765656b20696e205265766965772c20616e616c7974696373205374657665204a6f62732048756666506f205253532046616365626f6f6b20477574656e6265726720706172656e746865736973205a6974652067616d696669636174696f6e20414f4c207765206e6565642061204e6174652053696c76657220526f62696e20536c6f616e20352520636f7272757074696f6e2057534a206d6564696120646965742e0a0a6469676974616c2063697263756c6174696f6e20737472617465677920616c676f726974686d7320696e6e6f766174696f6e207265636f6e7465787475616c697a65206e657773706170657220687970657268797065726c6f63616c20636875726368206f66207468652073617676792070616964436f6e74656e7420696e2074686520736c6f74206c6561726e696e67732c20616e6f6e796d69747920746f74616c6c7920626c6f77696e67207570206f6e205477697474657220526f6d656e65736b6f204c7563697573204e69656d616e205253532063616e63656c206d7920737562736372697074696f6e2061667465726e6f6f6e2070617065722e20636f6e74656e74206973206b696e6720526575746572732046726f6e746c696e652074726f6c6c7320546865204461696c7920596f755475626520527570657274204d7572646f6368206375726d756467656f6e204b696e646c652053696e676c652c20456e6379636c6f2052657574657273204d6f7a696c6c6120746f74616c6c7920626c6f77696e67207570206f6e2054776974746572206465616420747265657320456e6379636c6f205477697474657220746f70706c6573206469637461746f7273206469676974616c206669727374204e5954205226442c20676f7474612067726f6b206974206265666f726520796f7520726f636b20697420747765657473204e69636b2044656e746f6e20576573742053656174746c6520426c6f672043504320446f6573206d7920227965732c2062757422206c6f6f6b2062696720696e207468697320636f726e6572206f66666963653f20546865205072696e74696e6720507265737320617320616e204167656e74206f66204368616e67652e0a, 'Bob Frapples', '2021-04-18', 115, 'assets/image3.jpg'),
(5, 'Earthquake of magnitude 6.4 jolts Assam', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.', 0x48756666506f20616e616c79746963732072696768742d73697a696e672048756666506f204e69636b2044656e746f6e206e65777370617065722073636f6f7020706c616769617269736d206d6f6e6574697a6174696f6e2c204e59542052264420676574206d652072657772697465206c6f636174696f6e2d6261736564204b696e646c652053696e676c65206162756e64616e636520636f70797269676874207065726665637420666f72207374617274696e6720612063616d7066697265206950616420617070204d696e6e506f73742c2053746f726966792065486f772050726f6a656374205468756e646572646f6d6520626f742064617461206a6f75726e616c69736d20636f676e697469766520737572706c7573206775747465722e2070617977616c6c206d656d65204c696b6520627574746f6e20666f757274682065737461746520696e63656e7420636f6c6c61626f726174696f6e20746865206f74686572206c6f6e67657220426f6f6b205265766965772046726f6e746c696e652073686f6f74206120766964656f204e69636b2044656e746f6e2c2063726f7764736f757263696e672043504d2050726f5075626c69636120746f6f6c732057534a2046726565204461726b6f206e6577736f6e6f6d6963732057616c746572204c6970706d616e6e2c20436c617920536869726b7920525420676f20766972616c20627574207768617427732074686520627573696e657373206d6f64656c20476f6f676c652b20746865206f74686572206c6f6e67657220426f6f6b2052657669657720617765736f6d6520466c6970626f6172642e0a0a646174612076697375616c697a6174696f6e206479696e6720526f6d656e65736b6f2063726f7764736f757263696e6720696620746865206e657773206973207468617420696d706f7274616e742c206974276c6c2066696e64206d652073747570696420636f6d6d656e746572732052535320687970657268797065726c6f63616c2c20627574207768617427732074686520627573696e657373206d6f64656c20546865205765656b656e646572205477697474657220746f70706c6573206469637461746f727320636f6d6d756e697479207065726665637420666f72207374617274696e6720612063616d7066697265204350432c20414f4c20477574656e6265726720706172656e746865736973206479696e672073656d697065726d6561626c6520667574757265206f66206e617272617469766520596f75547562652e20527570657274204d7572646f636820352520636f7272757074696f6e207461626c657473207265706f7274696e6720676574206d65207265777269746520746865206e6f74696f6e206f6620746865207075626c696320414f4c20546563684372756e6368202b312057616c746572204c6970706d616e6e206f70656e20736f75726365205477697474657220746f70706c6573206469637461746f7273206479696e6720412e4a2e204c6965626c696e6720676574206d652072657772697465204761776b65722054686973205765656b20696e205265766965772c20616e616c7974696373205374657665204a6f62732048756666506f205253532046616365626f6f6b20477574656e6265726720706172656e746865736973205a6974652067616d696669636174696f6e20414f4c207765206e6565642061204e6174652053696c76657220526f62696e20536c6f616e20352520636f7272757074696f6e2057534a206d6564696120646965742e0a0a6469676974616c2063697263756c6174696f6e20737472617465677920616c676f726974686d7320696e6e6f766174696f6e207265636f6e7465787475616c697a65206e657773706170657220687970657268797065726c6f63616c20636875726368206f66207468652073617676792070616964436f6e74656e7420696e2074686520736c6f74206c6561726e696e67732c20616e6f6e796d69747920746f74616c6c7920626c6f77696e67207570206f6e205477697474657220526f6d656e65736b6f204c7563697573204e69656d616e205253532063616e63656c206d7920737562736372697074696f6e2061667465726e6f6f6e2070617065722e20636f6e74656e74206973206b696e6720526575746572732046726f6e746c696e652074726f6c6c7320546865204461696c7920596f755475626520527570657274204d7572646f6368206375726d756467656f6e204b696e646c652053696e676c652c20456e6379636c6f2052657574657273204d6f7a696c6c6120746f74616c6c7920626c6f77696e67207570206f6e2054776974746572206465616420747265657320456e6379636c6f205477697474657220746f70706c6573206469637461746f7273206469676974616c206669727374204e5954205226442c20676f7474612067726f6b206974206265666f726520796f7520726f636b20697420747765657473204e69636b2044656e746f6e20576573742053656174746c6520426c6f672043504320446f6573206d7920227965732c2062757422206c6f6f6b2062696720696e207468697320636f726e6572206f66666963653f20546865205072696e74696e6720507265737320617320616e204167656e74206f66204368616e67652e0a, 'Bob Frapples', '2021-04-22', 336, 'assets/image4.jpg'),
(6, 'Indian Covid variant found in at least 17 countries', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.', 0x48756666506f20616e616c79746963732072696768742d73697a696e672048756666506f204e69636b2044656e746f6e206e65777370617065722073636f6f7020706c616769617269736d206d6f6e6574697a6174696f6e2c204e59542052264420676574206d652072657772697465206c6f636174696f6e2d6261736564204b696e646c652053696e676c65206162756e64616e636520636f70797269676874207065726665637420666f72207374617274696e6720612063616d7066697265206950616420617070204d696e6e506f73742c2053746f726966792065486f772050726f6a656374205468756e646572646f6d6520626f742064617461206a6f75726e616c69736d20636f676e697469766520737572706c7573206775747465722e2070617977616c6c206d656d65204c696b6520627574746f6e20666f757274682065737461746520696e63656e7420636f6c6c61626f726174696f6e20746865206f74686572206c6f6e67657220426f6f6b205265766965772046726f6e746c696e652073686f6f74206120766964656f204e69636b2044656e746f6e2c2063726f7764736f757263696e672043504d2050726f5075626c69636120746f6f6c732057534a2046726565204461726b6f206e6577736f6e6f6d6963732057616c746572204c6970706d616e6e2c20436c617920536869726b7920525420676f20766972616c20627574207768617427732074686520627573696e657373206d6f64656c20476f6f676c652b20746865206f74686572206c6f6e67657220426f6f6b2052657669657720617765736f6d6520466c6970626f6172642e0a0a646174612076697375616c697a6174696f6e206479696e6720526f6d656e65736b6f2063726f7764736f757263696e6720696620746865206e657773206973207468617420696d706f7274616e742c206974276c6c2066696e64206d652073747570696420636f6d6d656e746572732052535320687970657268797065726c6f63616c2c20627574207768617427732074686520627573696e657373206d6f64656c20546865205765656b656e646572205477697474657220746f70706c6573206469637461746f727320636f6d6d756e697479207065726665637420666f72207374617274696e6720612063616d7066697265204350432c20414f4c20477574656e6265726720706172656e746865736973206479696e672073656d697065726d6561626c6520667574757265206f66206e617272617469766520596f75547562652e20527570657274204d7572646f636820352520636f7272757074696f6e207461626c657473207265706f7274696e6720676574206d65207265777269746520746865206e6f74696f6e206f6620746865207075626c696320414f4c20546563684372756e6368202b312057616c746572204c6970706d616e6e206f70656e20736f75726365205477697474657220746f70706c6573206469637461746f7273206479696e6720412e4a2e204c6965626c696e6720676574206d652072657772697465204761776b65722054686973205765656b20696e205265766965772c20616e616c7974696373205374657665204a6f62732048756666506f205253532046616365626f6f6b20477574656e6265726720706172656e746865736973205a6974652067616d696669636174696f6e20414f4c207765206e6565642061204e6174652053696c76657220526f62696e20536c6f616e20352520636f7272757074696f6e2057534a206d6564696120646965742e0a0a6469676974616c2063697263756c6174696f6e20737472617465677920616c676f726974686d7320696e6e6f766174696f6e207265636f6e7465787475616c697a65206e657773706170657220687970657268797065726c6f63616c20636875726368206f66207468652073617676792070616964436f6e74656e7420696e2074686520736c6f74206c6561726e696e67732c20616e6f6e796d69747920746f74616c6c7920626c6f77696e67207570206f6e205477697474657220526f6d656e65736b6f204c7563697573204e69656d616e205253532063616e63656c206d7920737562736372697074696f6e2061667465726e6f6f6e2070617065722e20636f6e74656e74206973206b696e6720526575746572732046726f6e746c696e652074726f6c6c7320546865204461696c7920596f755475626520527570657274204d7572646f6368206375726d756467656f6e204b696e646c652053696e676c652c20456e6379636c6f2052657574657273204d6f7a696c6c6120746f74616c6c7920626c6f77696e67207570206f6e2054776974746572206465616420747265657320456e6379636c6f205477697474657220746f70706c6573206469637461746f7273206469676974616c206669727374204e5954205226442c20676f7474612067726f6b206974206265666f726520796f7520726f636b20697420747765657473204e69636b2044656e746f6e20576573742053656174746c6520426c6f672043504320446f6573206d7920227965732c2062757422206c6f6f6b2062696720696e207468697320636f726e6572206f66666963653f20546865205072696e74696e6720507265737320617320616e204167656e74206f66204368616e67652e0a, 'Paige Turner', '2021-04-20', 7081, 'assets/image5.jpg'),
(7, 'Women Make History As Nancy Pelosi, Kamala Harris ', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.', 0x48756666506f20616e616c79746963732072696768742d73697a696e672048756666506f204e69636b2044656e746f6e206e65777370617065722073636f6f7020706c616769617269736d206d6f6e6574697a6174696f6e2c204e59542052264420676574206d652072657772697465206c6f636174696f6e2d6261736564204b696e646c652053696e676c65206162756e64616e636520636f70797269676874207065726665637420666f72207374617274696e6720612063616d7066697265206950616420617070204d696e6e506f73742c2053746f726966792065486f772050726f6a656374205468756e646572646f6d6520626f742064617461206a6f75726e616c69736d20636f676e697469766520737572706c7573206775747465722e2070617977616c6c206d656d65204c696b6520627574746f6e20666f757274682065737461746520696e63656e7420636f6c6c61626f726174696f6e20746865206f74686572206c6f6e67657220426f6f6b205265766965772046726f6e746c696e652073686f6f74206120766964656f204e69636b2044656e746f6e2c2063726f7764736f757263696e672043504d2050726f5075626c69636120746f6f6c732057534a2046726565204461726b6f206e6577736f6e6f6d6963732057616c746572204c6970706d616e6e2c20436c617920536869726b7920525420676f20766972616c20627574207768617427732074686520627573696e657373206d6f64656c20476f6f676c652b20746865206f74686572206c6f6e67657220426f6f6b2052657669657720617765736f6d6520466c6970626f6172642e0a0a646174612076697375616c697a6174696f6e206479696e6720526f6d656e65736b6f2063726f7764736f757263696e6720696620746865206e657773206973207468617420696d706f7274616e742c206974276c6c2066696e64206d652073747570696420636f6d6d656e746572732052535320687970657268797065726c6f63616c2c20627574207768617427732074686520627573696e657373206d6f64656c20546865205765656b656e646572205477697474657220746f70706c6573206469637461746f727320636f6d6d756e697479207065726665637420666f72207374617274696e6720612063616d7066697265204350432c20414f4c20477574656e6265726720706172656e746865736973206479696e672073656d697065726d6561626c6520667574757265206f66206e617272617469766520596f75547562652e20527570657274204d7572646f636820352520636f7272757074696f6e207461626c657473207265706f7274696e6720676574206d65207265777269746520746865206e6f74696f6e206f6620746865207075626c696320414f4c20546563684372756e6368202b312057616c746572204c6970706d616e6e206f70656e20736f75726365205477697474657220746f70706c6573206469637461746f7273206479696e6720412e4a2e204c6965626c696e6720676574206d652072657772697465204761776b65722054686973205765656b20696e205265766965772c20616e616c7974696373205374657665204a6f62732048756666506f205253532046616365626f6f6b20477574656e6265726720706172656e746865736973205a6974652067616d696669636174696f6e20414f4c207765206e6565642061204e6174652053696c76657220526f62696e20536c6f616e20352520636f7272757074696f6e2057534a206d6564696120646965742e0a0a6469676974616c2063697263756c6174696f6e20737472617465677920616c676f726974686d7320696e6e6f766174696f6e207265636f6e7465787475616c697a65206e657773706170657220687970657268797065726c6f63616c20636875726368206f66207468652073617676792070616964436f6e74656e7420696e2074686520736c6f74206c6561726e696e67732c20616e6f6e796d69747920746f74616c6c7920626c6f77696e67207570206f6e205477697474657220526f6d656e65736b6f204c7563697573204e69656d616e205253532063616e63656c206d7920737562736372697074696f6e2061667465726e6f6f6e2070617065722e20636f6e74656e74206973206b696e6720526575746572732046726f6e746c696e652074726f6c6c7320546865204461696c7920596f755475626520527570657274204d7572646f6368206375726d756467656f6e204b696e646c652053696e676c652c20456e6379636c6f2052657574657273204d6f7a696c6c6120746f74616c6c7920626c6f77696e67207570206f6e2054776974746572206465616420747265657320456e6379636c6f205477697474657220746f70706c6573206469637461746f7273206469676974616c206669727374204e5954205226442c20676f7474612067726f6b206974206265666f726520796f7520726f636b20697420747765657473204e69636b2044656e746f6e20576573742053656174746c6520426c6f672043504320446f6573206d7920227965732c2062757422206c6f6f6b2062696720696e207468697320636f726e6572206f66666963653f20546865205072696e74696e6720507265737320617320616e204167656e74206f66204368616e67652e0a, 'Anna Mull', '2021-04-02', 132, 'assets/image6.jpg'),
(8, 'Bharat Biotech cuts cost of Covaxin by Rs 200', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.', 0x48756666506f20616e616c79746963732072696768742d73697a696e672048756666506f204e69636b2044656e746f6e206e65777370617065722073636f6f7020706c616769617269736d206d6f6e6574697a6174696f6e2c204e59542052264420676574206d652072657772697465206c6f636174696f6e2d6261736564204b696e646c652053696e676c65206162756e64616e636520636f70797269676874207065726665637420666f72207374617274696e6720612063616d7066697265206950616420617070204d696e6e506f73742c2053746f726966792065486f772050726f6a656374205468756e646572646f6d6520626f742064617461206a6f75726e616c69736d20636f676e697469766520737572706c7573206775747465722e2070617977616c6c206d656d65204c696b6520627574746f6e20666f757274682065737461746520696e63656e7420636f6c6c61626f726174696f6e20746865206f74686572206c6f6e67657220426f6f6b205265766965772046726f6e746c696e652073686f6f74206120766964656f204e69636b2044656e746f6e2c2063726f7764736f757263696e672043504d2050726f5075626c69636120746f6f6c732057534a2046726565204461726b6f206e6577736f6e6f6d6963732057616c746572204c6970706d616e6e2c20436c617920536869726b7920525420676f20766972616c20627574207768617427732074686520627573696e657373206d6f64656c20476f6f676c652b20746865206f74686572206c6f6e67657220426f6f6b2052657669657720617765736f6d6520466c6970626f6172642e0a0a646174612076697375616c697a6174696f6e206479696e6720526f6d656e65736b6f2063726f7764736f757263696e6720696620746865206e657773206973207468617420696d706f7274616e742c206974276c6c2066696e64206d652073747570696420636f6d6d656e746572732052535320687970657268797065726c6f63616c2c20627574207768617427732074686520627573696e657373206d6f64656c20546865205765656b656e646572205477697474657220746f70706c6573206469637461746f727320636f6d6d756e697479207065726665637420666f72207374617274696e6720612063616d7066697265204350432c20414f4c20477574656e6265726720706172656e746865736973206479696e672073656d697065726d6561626c6520667574757265206f66206e617272617469766520596f75547562652e20527570657274204d7572646f636820352520636f7272757074696f6e207461626c657473207265706f7274696e6720676574206d65207265777269746520746865206e6f74696f6e206f6620746865207075626c696320414f4c20546563684372756e6368202b312057616c746572204c6970706d616e6e206f70656e20736f75726365205477697474657220746f70706c6573206469637461746f7273206479696e6720412e4a2e204c6965626c696e6720676574206d652072657772697465204761776b65722054686973205765656b20696e205265766965772c20616e616c7974696373205374657665204a6f62732048756666506f205253532046616365626f6f6b20477574656e6265726720706172656e746865736973205a6974652067616d696669636174696f6e20414f4c207765206e6565642061204e6174652053696c76657220526f62696e20536c6f616e20352520636f7272757074696f6e2057534a206d6564696120646965742e0a0a6469676974616c2063697263756c6174696f6e20737472617465677920616c676f726974686d7320696e6e6f766174696f6e207265636f6e7465787475616c697a65206e657773706170657220687970657268797065726c6f63616c20636875726368206f66207468652073617676792070616964436f6e74656e7420696e2074686520736c6f74206c6561726e696e67732c20616e6f6e796d69747920746f74616c6c7920626c6f77696e67207570206f6e205477697474657220526f6d656e65736b6f204c7563697573204e69656d616e205253532063616e63656c206d7920737562736372697074696f6e2061667465726e6f6f6e2070617065722e20636f6e74656e74206973206b696e6720526575746572732046726f6e746c696e652074726f6c6c7320546865204461696c7920596f755475626520527570657274204d7572646f6368206375726d756467656f6e204b696e646c652053696e676c652c20456e6379636c6f2052657574657273204d6f7a696c6c6120746f74616c6c7920626c6f77696e67207570206f6e2054776974746572206465616420747265657320456e6379636c6f205477697474657220746f70706c6573206469637461746f7273206469676974616c206669727374204e5954205226442c20676f7474612067726f6b206974206265666f726520796f7520726f636b20697420747765657473204e69636b2044656e746f6e20576573742053656174746c6520426c6f672043504320446f6573206d7920227965732c2062757422206c6f6f6b2062696720696e207468697320636f726e6572206f66666963653f20546865205072696e74696e6720507265737320617320616e204167656e74206f66204368616e67652e0a, 'Petey Cruiser', '2021-04-01', 169, 'assets/image7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `article_id`, `image_path`) VALUES
(6, 2, 'assets/image.jpg'),
(7, 2, 'assets/image1.jpg'),
(8, 2, 'assets/image2.jpg'),
(12, 1, 'assets/image3.jpg'),
(13, 1, 'assets/image4.jpg'),
(14, 1, 'assets/image5.jpg'),
(15, 3, 'assets/image6.jpg'),
(16, 3, 'assets/image1.jpg'),
(17, 3, 'assets/image.jpg'),
(18, 4, 'assets/image2.jpg'),
(19, 4, 'assets/image3.jpg'),
(20, 4, 'assets/image8.jpg'),
(21, 5, 'assets/image3.jpg'),
(22, 5, 'assets/image2.jpg'),
(23, 5, 'assets/image7.jpg'),
(24, 6, 'assets/image3.jpg'),
(25, 6, 'assets/image5.jpg'),
(26, 6, 'assets/image8.jpg'),
(27, 7, 'assets/image1.jpg'),
(28, 7, 'assets/image6.jpg'),
(29, 7, 'assets/image4.jpg'),
(30, 8, 'assets/image6.jpg'),
(31, 8, 'assets/image5.jpg'),
(32, 8, 'assets/image4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `article_id`, `type`) VALUES
(8, 1, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'farah@gmail.com', '$2y$10$33MoKuO8Q5NuEhI2gdHJg.BBw869UrttkGscCvXD8Cle0bYvvf5Sq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `Foreign key ` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;