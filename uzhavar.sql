-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2022 at 10:45 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uzhavar`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `states` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `shipping` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `custId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `locationId` int(11) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `zipcode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  `addressId` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `createdAt`, `updatedAt`, `slug`) VALUES
(1, 'Fertilizer', '2022-09-19 13:27:52', '2022-09-22 04:42:34', 'fertilizer'),
(2, 'Seeds', '2022-09-22 04:44:06', '2022-09-22 04:44:06', 'seeds'),
(3, 'Crop Diseases', '2022-09-22 04:44:41', '2022-09-22 04:44:41', 'crop-diseases'),
(4, 'Organic farming', '2022-09-22 04:45:08', '2022-09-22 04:45:08', 'organic-farming'),
(7, 'Crop Prevention', '2022-10-07 06:03:35', '2022-10-07 06:06:37', 'crop-prevention');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstName`, `lastName`, `phone`, `email`, `password`, `userid`, `gender`, `createdAt`, `updatedAt`) VALUES
(1, 'Priyanka', 'M', '9944142890', 'priyanka123@gmail.com', '$2a$10$RFVFDXgvynYqqPv5oCInC.U4QmP0rxZtwnNfYSxk62qIeUguFkhqW', NULL, 'Female', '2022-09-21 12:27:24', '2022-11-10 09:30:17'),
(7, 'test', NULL, NULL, 'test@gmail.com', '$2a$10$YETZqAAjpmZfxATIjTnmXu3lrWczyGTSZBxnOm0vZ25qimZLVkdCm', NULL, NULL, '2022-11-12 05:44:02', '2022-11-12 05:44:02'),
(8, 'lensi', NULL, '9876543210', 'lensi11@gmail.com', '$2a$10$mMb8B18.QDNsFo7SnmGfAe3hwiyDWwnKFT9je8UBWBXl1mzH8FlQy', NULL, 'Female', '2022-11-16 07:40:45', '2022-11-16 10:20:51');

-- --------------------------------------------------------

--
-- Table structure for table `customer_review`
--

CREATE TABLE `customer_review` (
  `id` int(11) NOT NULL,
  `r_name` varchar(255) NOT NULL,
  `r_mobile` varchar(10) NOT NULL,
  `r_email` varchar(255) NOT NULL,
  `r_helpful` varchar(255) NOT NULL,
  `r_quality` varchar(255) NOT NULL,
  `r_feedback` longtext NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_review`
--

INSERT INTO `customer_review` (`id`, `r_name`, `r_mobile`, `r_email`, `r_helpful`, `r_quality`, `r_feedback`, `createdAt`, `updatedAt`) VALUES
(1, 'test', '1234567890', 'test@gmail.com', 'yes', '8', 'rexcfvgbhnjmk', '2022-11-16 11:52:48', '2022-11-16 11:52:48'),
(2, 'frdg', '1234567890', 'priyanka@gmail.com', 'yes', '80', 'awesxdcfvgbhnj', '2022-11-17 04:32:31', '2022-11-17 04:32:31'),
(3, 'drrfcg', '1234567890', 'lensi11@gmail.com', 'No', '50', 'sdcfvgbhnjmk', '2022-11-17 05:14:27', '2022-11-17 05:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `zipcode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `custId` int(11) DEFAULT NULL,
  `number` varchar(255) NOT NULL,
  `paymentmethod` varchar(255) DEFAULT NULL,
  `transactionId` varchar(255) DEFAULT NULL,
  `grandtotal` int(255) DEFAULT NULL,
  `status` enum('processing','shipping','delieverd','cancel') DEFAULT 'processing',
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp(),
  `deliverydate` datetime DEFAULT NULL,
  `products` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`products`)),
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `paymentstatus` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `custId`, `number`, `paymentmethod`, `transactionId`, `grandtotal`, `status`, `createdAt`, `updatedAt`, `deliverydate`, `products`, `name`, `email`, `address`, `pincode`, `country`, `city`, `paymentstatus`) VALUES
(16, 1, '', 'card', 'card_1M2BUESIR2AbPxU02bSoMXkZ', 4275, 'processing', '2022-11-09 10:26:31', '2022-11-09 10:26:31', '2022-11-19 10:26:31', '{\"cart_1667989536535\":{\"id\":36,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"Boronated Calcium Nitrate\",\"slug\":\"boronated-calcium\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\9042c9f6-1c03-49f3-a253-10406ff745b1.png\",\"sortDesc\":\"Contains 100% soluble Ca & B\\r\\nN in nitrate form-preferred for fruit & field crops\\r\\nBoron helps in cell wall formation, Ca improves the strength of cell wall – increasing strength & quality of produce\\r\\nCorrects Calcium & Boron deficiency\",\"desc\":\"<ul><li>Contains 100% soluble Ca &amp; B</li><li>N in nitrate form-preferred for fruit &amp; field crops</li><li>Boron helps in cell wall formation, Ca improves the strength of cell wall – increasing strength &amp; quality of produce</li><li>Corrects Calcium &amp; Boron deficiency</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:10:18.000Z\",\"updatedAt\":\"2022-09-27T13:10:18.000Z\",\"SubCategory\":{\"id\":3,\"sub_name\":\"Water soluble fertilizer\",\"category\":{\"id\":1,\"name\":\"Fertilizer\"}},\"SubChildCategory\":{\"id\":22,\"name\":\"Water Soluble Fertilizers\",\"categoryId\":1,\"subcategoryId\":3,\"createdAt\":\"2022-09-27T12:33:27.000Z\",\"updatedAt\":\"2022-09-27T12:33:27.000Z\",\"products\":[{\"id\":28,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 19-19-19\",\"slug\":\"WSF\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":1500,\"price\":1300,\"qty\":1,\"discountPer\":6,\"discount\":78,\"total\":1300,\"netPrice\":1222,\"photo\":\"storage\\\\products\\\\e9e824dd-cd5e-4653-95a5-54b96ea039e8.jpeg\",\"sortDesc\":\"Maintains NPK nutrient balance\\r\\nInstant uptake of nutrients by plants\\r\\nPrompts root & shoot development\\r\\nContains Mg, Zn, Fe, Co, Mn, B, Mo\\r\\nBeing acidic helps in maintaining drippers free of salts in drip irrigation system.\",\"desc\":\"<ul><li>Maintains NPK nutrient balance</li><li>Instant uptake of nutrients by plants</li><li>Prompts root &amp; shoot development</li><li>Contains Mg, Zn, Fe, Co, Mn, B, Mo</li><li>Being acidic helps in maintaining drippers free of salts in drip irrigation system.</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T12:38:35.000Z\",\"updatedAt\":\"2022-09-27T12:38:35.000Z\",\"productphotos\":[]},{\"id\":29,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 0-52-34\",\"slug\":\"WSF-0-52-34\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\cf40e85f-e496-4ba7-b7a4-2735a656451b.jpeg\",\"sortDesc\":\"Chloride-free, lowest salt index – prevents clogging of drip\\r\\nImproves fruit size, luster, uniform colour and taste of fruit & yield\\r\\nImproves resistance to adverse weather and pests\\r\\nPromote flowering & fruit settings\\r\\nReduces flower & fruit dropping\",\"desc\":\"<ul><li>Chloride-free, lowest salt index – prevents clogging of drip</li><li>Improves fruit size, luster, uniform colour and taste of fruit &amp; yield</li><li>Improves resistance to adverse weather and pests</li><li>Promote flowering &amp; fruit settings</li><li>Reduces flower &amp; fruit dropping</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:00:18.000Z\",\"updatedAt\":\"2022-09-27T13:00:18.000Z\",\"productphotos\":[]},{\"id\":30,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 17-44-0\",\"slug\":\"WSF-17-44-0\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\dcb28a3d-343f-454a-bcb1-496c9207a1cc.jpeg\",\"sortDesc\":\"Best replacement of DAP\\r\\nEconomic source of ‘P’\\r\\nReduces ‘N’ volatilisation\\r\\nGives impressive increase in yield & quality of crop\\r\\nHelps to un-clog the drippers of MIS\\r\\nBeing acidic, it neutralises the pH of alkaline soil & enhances efficiency of nutrients applie\",\"desc\":\"<ul><li>Best replacement of DAP</li><li>Economic source of ‘P’</li><li>Reduces ‘N’ volatilisation</li><li>Gives impressive increase in yield &amp; quality of crop</li><li>Helps to un-clog the drippers of MIS</li><li>Being acidic, it neutralises the pH of alkaline soil &amp; enhances efficiency of nutrients applie</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:02:46.000Z\",\"updatedAt\":\"2022-09-27T13:02:46.000Z\",\"productphotos\":[]},{\"id\":31,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 13-0-45\",\"slug\":\"WSF-13-0-45\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\26dec67f-12d2-45f6-b041-3a0e00af1a2a.jpeg\",\"sortDesc\":\"N in nitrate form – readily available plus a rich source of potash\\r\\nHelps in formation of sugar during fruit setting\\r\\nReduces dropping of immature fruits\\r\\nImproves shape, size and quality of fruits/seeds\\r\\nHelps in uptake of Ca, Mg & K by crops\\r\\nLess hygroscopic\",\"desc\":\"<ul><li>N in nitrate form – readily available plus a rich source of potash</li><li>Helps in formation of sugar during fruit setting</li><li>Reduces dropping of immature fruits</li><li>Improves shape, size and quality of fruits/seeds</li><li>Helps in uptake of Ca, Mg &amp; K by crops</li><li>Less hygroscopic</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:03:45.000Z\",\"updatedAt\":\"2022-09-27T13:03:45.000Z\",\"productphotos\":[]},{\"id\":32,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 12-61-0\",\"slug\":\"WSF-12-61-0\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\63dc2f2c-d28f-4dc7-89e4-324b1fe2b598.jpeg\",\"sortDesc\":\"Highly concentrated source of P along with N\\r\\nHelps in fast and healthy vegetative & root growth\\r\\nLess hygroscopic and hence can be applied with other fertilizers\\r\\nLow salt index – free from Na & Cl\\r\\nImproves uptake of other nutrients\",\"desc\":\"<ul><li>Highly concentrated source of P along with N</li><li>Helps in fast and healthy vegetative &amp; root growth</li><li>Less hygroscopic and hence can be applied with other fertilizers</li><li>Low salt index – free from Na &amp; Cl</li><li>Improves uptake of other nutrients</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:04:41.000Z\",\"updatedAt\":\"2022-09-27T13:04:41.000Z\",\"productphotos\":[]},{\"id\":33,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 0-0-50\",\"slug\":\"WSF-0-0-50\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\628f44b0-0df1-45a4-91ac-4d7a64a2c2ab.jpeg\",\"sortDesc\":\"Cheapest source of K (Chloride-free)\\r\\nAlso contains 18% S\\r\\nIncreases shelf life of the crop post-harvest\\r\\nIncreases resistance against pest, diseases and abiotic stress\",\"desc\":\"<ul><li>Cheapest source of K (Chloride-free)</li><li>Also contains 18% S</li><li>Increases shelf life of the crop post-harvest</li><li>Increases resistance against pest, diseases and abiotic stress</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:05:30.000Z\",\"updatedAt\":\"2022-09-27T13:05:30.000Z\",\"productphotos\":[]},{\"id\":34,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 13-40-13\",\"slug\":\"WSF-13-40-13\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\9b2c6107-11ec-4784-b54c-8f940ac7f85a.jpeg\",\"sortDesc\":\"Fosters plant rooting and blossoming\\r\\nHas an acid pH to prevent scale formation in irrigation systems\\r\\nPromotes crop growth by stimulating new root development\\r\\nReduces flower drop, increases fruit setting and increases yield and quality of the produce.\\r\\nUseful at early flowering, early fruit formation and fruit development stages, where the requirement of crops for P is more and less for N and K\\r\\nEnriched with micronutrients\",\"desc\":\"<ul><li>Fosters plant rooting and blossoming</li><li>Has an acid pH to prevent scale formation in irrigation systems</li><li>Promotes crop growth by stimulating new root development</li><li>Reduces flower drop, increases fruit setting and increases yield and quality of the produce.</li><li>Useful at early flowering, early fruit formation and fruit development stages, where the requirement of crops for P is more and less&nbsp;for N and K</li><li>Enriched with micronutrients</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:06:24.000Z\",\"updatedAt\":\"2022-09-27T13:06:24.000Z\",\"productphotos\":[]},{\"id\":35,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"Calcium Nitrate\",\"slug\":\"calcium-nitrate\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\aca6e3ac-910d-4315-bdbf-1321da68963b.jpeg\",\"sortDesc\":\"Contains 100% soluble calcium\\r\\nN in nitrate form – preferred for fruit & field crops\\r\\nImproves strength of cell wall – increasing shelf life of marketable produce\\r\\nCorrects Calcium deficiencies\\r\\n\",\"desc\":\"<ul><li>Contains 100% soluble calcium</li><li>N in nitrate form – preferred for fruit &amp; field crops</li><li>Improves strength of cell wall – increasing shelf life of marketable produce</li><li>Corrects Calcium deficiencies</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:07:57.000Z\",\"updatedAt\":\"2022-09-27T13:07:57.000Z\",\"productphotos\":[]},{\"id\":36,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"Boronated Calcium Nitrate\",\"slug\":\"boronated-calcium\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\9042c9f6-1c03-49f3-a253-10406ff745b1.png\",\"sortDesc\":\"Contains 100% soluble Ca & B\\r\\nN in nitrate form-preferred for fruit & field crops\\r\\nBoron helps in cell wall formation, Ca improves the strength of cell wall – increasing strength & quality of produce\\r\\nCorrects Calcium & Boron deficiency\",\"desc\":\"<ul><li>Contains 100% soluble Ca &amp; B</li><li>N in nitrate form-preferred for fruit &amp; field crops</li><li>Boron helps in cell wall formation, Ca improves the strength of cell wall – increasing strength &amp; quality of produce</li><li>Corrects Calcium &amp; Boron deficiency</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:10:18.000Z\",\"updatedAt\":\"2022-09-27T13:10:18.000Z\",\"productphotos\":[]},{\"id\":37,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"Boronated Calcium Nitrate Liquid\",\"slug\":\"BCNL\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\f5bf974e-64bf-4951-844a-a0b1fc26decf.png\",\"sortDesc\":\"Contains 100% soluble Calcium and Boron\\r\\nNitrogen in nitrate form-preferred for fruit & field crops\\r\\nBoron helps in cell wall formation\\r\\nCalcium improves the strength of cell wall – increasing strength & quality of produce\\r\\nCorrects Calcium & Boron deficiency\",\"desc\":\"<ul><li>Contains 100% soluble Calcium and Boron</li><li>Nitrogen in nitrate form-preferred for fruit &amp; field crops</li><li>Boron helps in cell wall formation</li><li>Calcium improves the strength of cell wall – increasing strength &amp; quality of produce</li><li>Corrects Calcium &amp; Boron deficiency</li></ul>\",\"createdAt\":\"2022-09-27T13:13:19.000Z\",\"updatedAt\":\"2022-09-27T13:13:19.000Z\",\"productphotos\":[]}]},\"count\":1},\"cart_1667989537015\":{\"id\":35,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"Calcium Nitrate\",\"slug\":\"calcium-nitrate\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\aca6e3ac-910d-4315-bdbf-1321da68963b.jpeg\",\"sortDesc\":\"Contains 100% soluble calcium\\r\\nN in nitrate form – preferred for fruit & field crops\\r\\nImproves strength of cell wall – increasing shelf life of marketable produce\\r\\nCorrects Calcium deficiencies\\r\\n\",\"desc\":\"<ul><li>Contains 100% soluble calcium</li><li>N in nitrate form – preferred for fruit &amp; field crops</li><li>Improves strength of cell wall – increasing shelf life of marketable produce</li><li>Corrects Calcium deficiencies</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:07:57.000Z\",\"updatedAt\":\"2022-09-27T13:07:57.000Z\",\"SubCategory\":{\"id\":3,\"sub_name\":\"Water soluble fertilizer\",\"category\":{\"id\":1,\"name\":\"Fertilizer\"}},\"SubChildCategory\":{\"id\":22,\"name\":\"Water Soluble Fertilizers\",\"categoryId\":1,\"subcategoryId\":3,\"createdAt\":\"2022-09-27T12:33:27.000Z\",\"updatedAt\":\"2022-09-27T12:33:27.000Z\",\"products\":[{\"id\":28,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 19-19-19\",\"slug\":\"WSF\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":1500,\"price\":1300,\"qty\":1,\"discountPer\":6,\"discount\":78,\"total\":1300,\"netPrice\":1222,\"photo\":\"storage\\\\products\\\\e9e824dd-cd5e-4653-95a5-54b96ea039e8.jpeg\",\"sortDesc\":\"Maintains NPK nutrient balance\\r\\nInstant uptake of nutrients by plants\\r\\nPrompts root & shoot development\\r\\nContains Mg, Zn, Fe, Co, Mn, B, Mo\\r\\nBeing acidic helps in maintaining drippers free of salts in drip irrigation system.\",\"desc\":\"<ul><li>Maintains NPK nutrient balance</li><li>Instant uptake of nutrients by plants</li><li>Prompts root &amp; shoot development</li><li>Contains Mg, Zn, Fe, Co, Mn, B, Mo</li><li>Being acidic helps in maintaining drippers free of salts in drip irrigation system.</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T12:38:35.000Z\",\"updatedAt\":\"2022-09-27T12:38:35.000Z\",\"productphotos\":[]},{\"id\":29,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 0-52-34\",\"slug\":\"WSF-0-52-34\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\cf40e85f-e496-4ba7-b7a4-2735a656451b.jpeg\",\"sortDesc\":\"Chloride-free, lowest salt index – prevents clogging of drip\\r\\nImproves fruit size, luster, uniform colour and taste of fruit & yield\\r\\nImproves resistance to adverse weather and pests\\r\\nPromote flowering & fruit settings\\r\\nReduces flower & fruit dropping\",\"desc\":\"<ul><li>Chloride-free, lowest salt index – prevents clogging of drip</li><li>Improves fruit size, luster, uniform colour and taste of fruit &amp; yield</li><li>Improves resistance to adverse weather and pests</li><li>Promote flowering &amp; fruit settings</li><li>Reduces flower &amp; fruit dropping</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:00:18.000Z\",\"updatedAt\":\"2022-09-27T13:00:18.000Z\",\"productphotos\":[]},{\"id\":30,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 17-44-0\",\"slug\":\"WSF-17-44-0\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\dcb28a3d-343f-454a-bcb1-496c9207a1cc.jpeg\",\"sortDesc\":\"Best replacement of DAP\\r\\nEconomic source of ‘P’\\r\\nReduces ‘N’ volatilisation\\r\\nGives impressive increase in yield & quality of crop\\r\\nHelps to un-clog the drippers of MIS\\r\\nBeing acidic, it neutralises the pH of alkaline soil & enhances efficiency of nutrients applie\",\"desc\":\"<ul><li>Best replacement of DAP</li><li>Economic source of ‘P’</li><li>Reduces ‘N’ volatilisation</li><li>Gives impressive increase in yield &amp; quality of crop</li><li>Helps to un-clog the drippers of MIS</li><li>Being acidic, it neutralises the pH of alkaline soil &amp; enhances efficiency of nutrients applie</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:02:46.000Z\",\"updatedAt\":\"2022-09-27T13:02:46.000Z\",\"productphotos\":[]},{\"id\":31,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 13-0-45\",\"slug\":\"WSF-13-0-45\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\26dec67f-12d2-45f6-b041-3a0e00af1a2a.jpeg\",\"sortDesc\":\"N in nitrate form – readily available plus a rich source of potash\\r\\nHelps in formation of sugar during fruit setting\\r\\nReduces dropping of immature fruits\\r\\nImproves shape, size and quality of fruits/seeds\\r\\nHelps in uptake of Ca, Mg & K by crops\\r\\nLess hygroscopic\",\"desc\":\"<ul><li>N in nitrate form – readily available plus a rich source of potash</li><li>Helps in formation of sugar during fruit setting</li><li>Reduces dropping of immature fruits</li><li>Improves shape, size and quality of fruits/seeds</li><li>Helps in uptake of Ca, Mg &amp; K by crops</li><li>Less hygroscopic</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:03:45.000Z\",\"updatedAt\":\"2022-09-27T13:03:45.000Z\",\"productphotos\":[]},{\"id\":32,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 12-61-0\",\"slug\":\"WSF-12-61-0\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\63dc2f2c-d28f-4dc7-89e4-324b1fe2b598.jpeg\",\"sortDesc\":\"Highly concentrated source of P along with N\\r\\nHelps in fast and healthy vegetative & root growth\\r\\nLess hygroscopic and hence can be applied with other fertilizers\\r\\nLow salt index – free from Na & Cl\\r\\nImproves uptake of other nutrients\",\"desc\":\"<ul><li>Highly concentrated source of P along with N</li><li>Helps in fast and healthy vegetative &amp; root growth</li><li>Less hygroscopic and hence can be applied with other fertilizers</li><li>Low salt index – free from Na &amp; Cl</li><li>Improves uptake of other nutrients</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:04:41.000Z\",\"updatedAt\":\"2022-09-27T13:04:41.000Z\",\"productphotos\":[]},{\"id\":33,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 0-0-50\",\"slug\":\"WSF-0-0-50\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\628f44b0-0df1-45a4-91ac-4d7a64a2c2ab.jpeg\",\"sortDesc\":\"Cheapest source of K (Chloride-free)\\r\\nAlso contains 18% S\\r\\nIncreases shelf life of the crop post-harvest\\r\\nIncreases resistance against pest, diseases and abiotic stress\",\"desc\":\"<ul><li>Cheapest source of K (Chloride-free)</li><li>Also contains 18% S</li><li>Increases shelf life of the crop post-harvest</li><li>Increases resistance against pest, diseases and abiotic stress</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:05:30.000Z\",\"updatedAt\":\"2022-09-27T13:05:30.000Z\",\"productphotos\":[]},{\"id\":34,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 13-40-13\",\"slug\":\"WSF-13-40-13\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\9b2c6107-11ec-4784-b54c-8f940ac7f85a.jpeg\",\"sortDesc\":\"Fosters plant rooting and blossoming\\r\\nHas an acid pH to prevent scale formation in irrigation systems\\r\\nPromotes crop growth by stimulating new root development\\r\\nReduces flower drop, increases fruit setting and increases yield and quality of the produce.\\r\\nUseful at early flowering, early fruit formation and fruit development stages, where the requirement of crops for P is more and less for N and K\\r\\nEnriched with micronutrients\",\"desc\":\"<ul><li>Fosters plant rooting and blossoming</li><li>Has an acid pH to prevent scale formation in irrigation systems</li><li>Promotes crop growth by stimulating new root development</li><li>Reduces flower drop, increases fruit setting and increases yield and quality of the produce.</li><li>Useful at early flowering, early fruit formation and fruit development stages, where the requirement of crops for P is more and less&nbsp;for N and K</li><li>Enriched with micronutrients</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:06:24.000Z\",\"updatedAt\":\"2022-09-27T13:06:24.000Z\",\"productphotos\":[]},{\"id\":35,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"Calcium Nitrate\",\"slug\":\"calcium-nitrate\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\aca6e3ac-910d-4315-bdbf-1321da68963b.jpeg\",\"sortDesc\":\"Contains 100% soluble calcium\\r\\nN in nitrate form – preferred for fruit & field crops\\r\\nImproves strength of cell wall – increasing shelf life of marketable produce\\r\\nCorrects Calcium deficiencies\\r\\n\",\"desc\":\"<ul><li>Contains 100% soluble calcium</li><li>N in nitrate form – preferred for fruit &amp; field crops</li><li>Improves strength of cell wall – increasing shelf life of marketable produce</li><li>Corrects Calcium deficiencies</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:07:57.000Z\",\"updatedAt\":\"2022-09-27T13:07:57.000Z\",\"productphotos\":[]},{\"id\":36,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"Boronated Calcium Nitrate\",\"slug\":\"boronated-calcium\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\9042c9f6-1c03-49f3-a253-10406ff745b1.png\",\"sortDesc\":\"Contains 100% soluble Ca & B\\r\\nN in nitrate form-preferred for fruit & field crops\\r\\nBoron helps in cell wall formation, Ca improves the strength of cell wall – increasing strength & quality of produce\\r\\nCorrects Calcium & Boron deficiency\",\"desc\":\"<ul><li>Contains 100% soluble Ca &amp; B</li><li>N in nitrate form-preferred for fruit &amp; field crops</li><li>Boron helps in cell wall formation, Ca improves the strength of cell wall – increasing strength &amp; quality of produce</li><li>Corrects Calcium &amp; Boron deficiency</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:10:18.000Z\",\"updatedAt\":\"2022-09-27T13:10:18.000Z\",\"productphotos\":[]},{\"id\":37,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"Boronated Calcium Nitrate Liquid\",\"slug\":\"BCNL\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\f5bf974e-64bf-4951-844a-a0b1fc26decf.png\",\"sortDesc\":\"Contains 100% soluble Calcium and Boron\\r\\nNitrogen in nitrate form-preferred for fruit & field crops\\r\\nBoron helps in cell wall formation\\r\\nCalcium improves the strength of cell wall – increasing strength & quality of produce\\r\\nCorrects Calcium & Boron deficiency\",\"desc\":\"<ul><li>Contains 100% soluble Calcium and Boron</li><li>Nitrogen in nitrate form-preferred for fruit &amp; field crops</li><li>Boron helps in cell wall formation</li><li>Calcium improves the strength of cell wall – increasing strength &amp; quality of produce</li><li>Corrects Calcium &amp; Boron deficiency</li></ul>\",\"createdAt\":\"2022-09-27T13:13:19.000Z\",\"updatedAt\":\"2022-09-27T13:13:19.000Z\",\"productphotos\":[]}]},\"count\":1},\"cart_1667989537430\":{\"id\":34,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 13-40-13\",\"slug\":\"WSF-13-40-13\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\9b2c6107-11ec-4784-b54c-8f940ac7f85a.jpeg\",\"sortDesc\":\"Fosters plant rooting and blossoming\\r\\nHas an acid pH to prevent scale formation in irrigation systems\\r\\nPromotes crop growth by stimulating new root development\\r\\nReduces flower drop, increases fruit setting and increases yield and quality of the produce.\\r\\nUseful at early flowering, early fruit formation and fruit development stages, where the requirement of crops for P is more and less for N and K\\r\\nEnriched with micronutrients\",\"desc\":\"<ul><li>Fosters plant rooting and blossoming</li><li>Has an acid pH to prevent scale formation in irrigation systems</li><li>Promotes crop growth by stimulating new root development</li><li>Reduces flower drop, increases fruit setting and increases yield and quality of the produce.</li><li>Useful at early flowering, early fruit formation and fruit development stages, where the requirement of crops for P is more and less&nbsp;for N and K</li><li>Enriched with micronutrients</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:06:24.000Z\",\"updatedAt\":\"2022-09-27T13:06:24.000Z\",\"SubCategory\":{\"id\":3,\"sub_name\":\"Water soluble fertilizer\",\"category\":{\"id\":1,\"name\":\"Fertilizer\"}},\"SubChildCategory\":{\"id\":22,\"name\":\"Water Soluble Fertilizers\",\"categoryId\":1,\"subcategoryId\":3,\"createdAt\":\"2022-09-27T12:33:27.000Z\",\"updatedAt\":\"2022-09-27T12:33:27.000Z\",\"products\":[{\"id\":28,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 19-19-19\",\"slug\":\"WSF\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":1500,\"price\":1300,\"qty\":1,\"discountPer\":6,\"discount\":78,\"total\":1300,\"netPrice\":1222,\"photo\":\"storage\\\\products\\\\e9e824dd-cd5e-4653-95a5-54b96ea039e8.jpeg\",\"sortDesc\":\"Maintains NPK nutrient balance\\r\\nInstant uptake of nutrients by plants\\r\\nPrompts root & shoot development\\r\\nContains Mg, Zn, Fe, Co, Mn, B, Mo\\r\\nBeing acidic helps in maintaining drippers free of salts in drip irrigation system.\",\"desc\":\"<ul><li>Maintains NPK nutrient balance</li><li>Instant uptake of nutrients by plants</li><li>Prompts root &amp; shoot development</li><li>Contains Mg, Zn, Fe, Co, Mn, B, Mo</li><li>Being acidic helps in maintaining drippers free of salts in drip irrigation system.</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T12:38:35.000Z\",\"updatedAt\":\"2022-09-27T12:38:35.000Z\",\"productphotos\":[]},{\"id\":29,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 0-52-34\",\"slug\":\"WSF-0-52-34\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\cf40e85f-e496-4ba7-b7a4-2735a656451b.jpeg\",\"sortDesc\":\"Chloride-free, lowest salt index – prevents clogging of drip\\r\\nImproves fruit size, luster, uniform colour and taste of fruit & yield\\r\\nImproves resistance to adverse weather and pests\\r\\nPromote flowering & fruit settings\\r\\nReduces flower & fruit dropping\",\"desc\":\"<ul><li>Chloride-free, lowest salt index – prevents clogging of drip</li><li>Improves fruit size, luster, uniform colour and taste of fruit &amp; yield</li><li>Improves resistance to adverse weather and pests</li><li>Promote flowering &amp; fruit settings</li><li>Reduces flower &amp; fruit dropping</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:00:18.000Z\",\"updatedAt\":\"2022-09-27T13:00:18.000Z\",\"productphotos\":[]},{\"id\":30,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 17-44-0\",\"slug\":\"WSF-17-44-0\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\dcb28a3d-343f-454a-bcb1-496c9207a1cc.jpeg\",\"sortDesc\":\"Best replacement of DAP\\r\\nEconomic source of ‘P’\\r\\nReduces ‘N’ volatilisation\\r\\nGives impressive increase in yield & quality of crop\\r\\nHelps to un-clog the drippers of MIS\\r\\nBeing acidic, it neutralises the pH of alkaline soil & enhances efficiency of nutrients applie\",\"desc\":\"<ul><li>Best replacement of DAP</li><li>Economic source of ‘P’</li><li>Reduces ‘N’ volatilisation</li><li>Gives impressive increase in yield &amp; quality of crop</li><li>Helps to un-clog the drippers of MIS</li><li>Being acidic, it neutralises the pH of alkaline soil &amp; enhances efficiency of nutrients applie</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:02:46.000Z\",\"updatedAt\":\"2022-09-27T13:02:46.000Z\",\"productphotos\":[]},{\"id\":31,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 13-0-45\",\"slug\":\"WSF-13-0-45\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\26dec67f-12d2-45f6-b041-3a0e00af1a2a.jpeg\",\"sortDesc\":\"N in nitrate form – readily available plus a rich source of potash\\r\\nHelps in formation of sugar during fruit setting\\r\\nReduces dropping of immature fruits\\r\\nImproves shape, size and quality of fruits/seeds\\r\\nHelps in uptake of Ca, Mg & K by crops\\r\\nLess hygroscopic\",\"desc\":\"<ul><li>N in nitrate form – readily available plus a rich source of potash</li><li>Helps in formation of sugar during fruit setting</li><li>Reduces dropping of immature fruits</li><li>Improves shape, size and quality of fruits/seeds</li><li>Helps in uptake of Ca, Mg &amp; K by crops</li><li>Less hygroscopic</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:03:45.000Z\",\"updatedAt\":\"2022-09-27T13:03:45.000Z\",\"productphotos\":[]},{\"id\":32,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 12-61-0\",\"slug\":\"WSF-12-61-0\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\63dc2f2c-d28f-4dc7-89e4-324b1fe2b598.jpeg\",\"sortDesc\":\"Highly concentrated source of P along with N\\r\\nHelps in fast and healthy vegetative & root growth\\r\\nLess hygroscopic and hence can be applied with other fertilizers\\r\\nLow salt index – free from Na & Cl\\r\\nImproves uptake of other nutrients\",\"desc\":\"<ul><li>Highly concentrated source of P along with N</li><li>Helps in fast and healthy vegetative &amp; root growth</li><li>Less hygroscopic and hence can be applied with other fertilizers</li><li>Low salt index – free from Na &amp; Cl</li><li>Improves uptake of other nutrients</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:04:41.000Z\",\"updatedAt\":\"2022-09-27T13:04:41.000Z\",\"productphotos\":[]},{\"id\":33,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 0-0-50\",\"slug\":\"WSF-0-0-50\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\628f44b0-0df1-45a4-91ac-4d7a64a2c2ab.jpeg\",\"sortDesc\":\"Cheapest source of K (Chloride-free)\\r\\nAlso contains 18% S\\r\\nIncreases shelf life of the crop post-harvest\\r\\nIncreases resistance against pest, diseases and abiotic stress\",\"desc\":\"<ul><li>Cheapest source of K (Chloride-free)</li><li>Also contains 18% S</li><li>Increases shelf life of the crop post-harvest</li><li>Increases resistance against pest, diseases and abiotic stress</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:05:30.000Z\",\"updatedAt\":\"2022-09-27T13:05:30.000Z\",\"productphotos\":[]},{\"id\":34,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"WSF 13-40-13\",\"slug\":\"WSF-13-40-13\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\9b2c6107-11ec-4784-b54c-8f940ac7f85a.jpeg\",\"sortDesc\":\"Fosters plant rooting and blossoming\\r\\nHas an acid pH to prevent scale formation in irrigation systems\\r\\nPromotes crop growth by stimulating new root development\\r\\nReduces flower drop, increases fruit setting and increases yield and quality of the produce.\\r\\nUseful at early flowering, early fruit formation and fruit development stages, where the requirement of crops for P is more and less for N and K\\r\\nEnriched with micronutrients\",\"desc\":\"<ul><li>Fosters plant rooting and blossoming</li><li>Has an acid pH to prevent scale formation in irrigation systems</li><li>Promotes crop growth by stimulating new root development</li><li>Reduces flower drop, increases fruit setting and increases yield and quality of the produce.</li><li>Useful at early flowering, early fruit formation and fruit development stages, where the requirement of crops for P is more and less&nbsp;for N and K</li><li>Enriched with micronutrients</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:06:24.000Z\",\"updatedAt\":\"2022-09-27T13:06:24.000Z\",\"productphotos\":[]},{\"id\":35,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"Calcium Nitrate\",\"slug\":\"calcium-nitrate\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\aca6e3ac-910d-4315-bdbf-1321da68963b.jpeg\",\"sortDesc\":\"Contains 100% soluble calcium\\r\\nN in nitrate form – preferred for fruit & field crops\\r\\nImproves strength of cell wall – increasing shelf life of marketable produce\\r\\nCorrects Calcium deficiencies\\r\\n\",\"desc\":\"<ul><li>Contains 100% soluble calcium</li><li>N in nitrate form – preferred for fruit &amp; field crops</li><li>Improves strength of cell wall – increasing shelf life of marketable produce</li><li>Corrects Calcium deficiencies</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:07:57.000Z\",\"updatedAt\":\"2022-09-27T13:07:57.000Z\",\"productphotos\":[]},{\"id\":36,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"Boronated Calcium Nitrate\",\"slug\":\"boronated-calcium\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\9042c9f6-1c03-49f3-a253-10406ff745b1.png\",\"sortDesc\":\"Contains 100% soluble Ca & B\\r\\nN in nitrate form-preferred for fruit & field crops\\r\\nBoron helps in cell wall formation, Ca improves the strength of cell wall – increasing strength & quality of produce\\r\\nCorrects Calcium & Boron deficiency\",\"desc\":\"<ul><li>Contains 100% soluble Ca &amp; B</li><li>N in nitrate form-preferred for fruit &amp; field crops</li><li>Boron helps in cell wall formation, Ca improves the strength of cell wall – increasing strength &amp; quality of produce</li><li>Corrects Calcium &amp; Boron deficiency</li></ul><p><br></p>\",\"createdAt\":\"2022-09-27T13:10:18.000Z\",\"updatedAt\":\"2022-09-27T13:10:18.000Z\",\"productphotos\":[]},{\"id\":37,\"categoryId\":1,\"subCategoryId\":3,\"childCategoryId\":22,\"name\":\"Boronated Calcium Nitrate Liquid\",\"slug\":\"BCNL\",\"brand\":\"add\",\"unitSize\":\"500 kg\",\"status\":\"active\",\"buyerPrice\":2000,\"price\":1500,\"qty\":1,\"discountPer\":5,\"discount\":75,\"total\":1500,\"netPrice\":1425,\"photo\":\"storage\\\\products\\\\f5bf974e-64bf-4951-844a-a0b1fc26decf.png\",\"sortDesc\":\"Contains 100% soluble Calcium and Boron\\r\\nNitrogen in nitrate form-preferred for fruit & field crops\\r\\nBoron helps in cell wall formation\\r\\nCalcium improves the strength of cell wall – increasing strength & quality of produce\\r\\nCorrects Calcium & Boron deficiency\",\"desc\":\"<ul><li>Contains 100% soluble Calcium and Boron</li><li>Nitrogen in nitrate form-preferred for fruit &amp; field crops</li><li>Boron helps in cell wall formation</li><li>Calcium improves the strength of cell wall – increasing strength &amp; quality of produce</li><li>Corrects Calcium &amp; Boron deficiency</li></ul>\",\"createdAt\":\"2022-09-27T13:13:19.000Z\",\"updatedAt\":\"2022-09-27T13:13:19.000Z\",\"productphotos\":[]}]},\"count\":1}}', 'awdawd', 'priyanka123@gmail.com', 'no:12/33', '600081', 'Afghanistan', 'Perth GPO', 1),
(17, 1, '', 'card', 'card_1M2BX0SIR2AbPxU0p6TgS821', 864, 'delieverd', '2022-11-09 10:29:22', '2022-11-09 10:36:44', '2022-11-11 00:00:00', '{\"cart_1667989739399\":{\"id\":8,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":4,\"name\":\"Lotus Seed\",\"slug\":\"lotus-seed\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":450,\"qty\":1,\"discountPer\":5,\"discount\":23,\"total\":450,\"netPrice\":427,\"photo\":\"storage\\\\products\\\\663bd9e5-6380-43de-b60a-3c9794818950.webp\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T07:07:07.000Z\",\"updatedAt\":\"2022-09-22T07:07:07.000Z\",\"SubCategory\":{\"id\":4,\"sub_name\":\"Horticulture\",\"category\":{\"id\":2,\"name\":\"Seeds\"}},\"SubChildCategory\":{\"id\":4,\"name\":\"Flower seed\",\"categoryId\":2,\"subcategoryId\":4,\"createdAt\":\"2022-09-22T06:38:50.000Z\",\"updatedAt\":\"2022-09-22T06:38:50.000Z\",\"products\":[{\"id\":8,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":4,\"name\":\"Lotus Seed\",\"slug\":\"lotus-seed\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":450,\"qty\":1,\"discountPer\":5,\"discount\":23,\"total\":450,\"netPrice\":427,\"photo\":\"storage\\\\products\\\\663bd9e5-6380-43de-b60a-3c9794818950.webp\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T07:07:07.000Z\",\"updatedAt\":\"2022-09-22T07:07:07.000Z\",\"productphotos\":[]},{\"id\":9,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":4,\"name\":\"Rose Seed\",\"slug\":\"rose-seed\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":450,\"qty\":1,\"discountPer\":4,\"discount\":18,\"total\":450,\"netPrice\":432,\"photo\":\"storage\\\\products\\\\751285c8-1bad-40cc-a675-5d2de0864424.webp\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T07:08:14.000Z\",\"updatedAt\":\"2022-09-22T07:08:14.000Z\",\"productphotos\":[]},{\"id\":10,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":4,\"name\":\"Marigold Seed\",\"slug\":\"marigold-seed\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":450,\"qty\":1,\"discountPer\":3,\"discount\":14,\"total\":450,\"netPrice\":436,\"photo\":\"storage\\\\products\\\\221ab546-376c-4ae9-bca4-f2cea2db093b.webp\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T07:09:08.000Z\",\"updatedAt\":\"2022-09-22T07:09:08.000Z\",\"productphotos\":[]},{\"id\":11,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":4,\"name\":\"Sunflower Seed\",\"slug\":\"sunflower-seed\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":450,\"qty\":1,\"discountPer\":4,\"discount\":18,\"total\":450,\"netPrice\":432,\"photo\":\"storage\\\\products\\\\ad285188-e654-49b2-9866-f980f88c943b.webp\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T07:10:00.000Z\",\"updatedAt\":\"2022-09-22T07:10:00.000Z\",\"productphotos\":[]}]},\"count\":1},\"cart_1667989740010\":{\"id\":7,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":3,\"name\":\"Custard apple\",\"slug\":\"custard-apple\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":460,\"qty\":1,\"discountPer\":5,\"discount\":23,\"total\":460,\"netPrice\":437,\"photo\":\"storage\\\\products\\\\67da230b-592b-48fe-bd1d-6d40cf1acb10.png\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T06:55:53.000Z\",\"updatedAt\":\"2022-09-22T06:55:53.000Z\",\"SubCategory\":{\"id\":4,\"sub_name\":\"Horticulture\",\"category\":{\"id\":2,\"name\":\"Seeds\"}},\"SubChildCategory\":{\"id\":3,\"name\":\"Fruit seed\",\"categoryId\":2,\"subcategoryId\":4,\"createdAt\":\"2022-09-22T06:38:27.000Z\",\"updatedAt\":\"2022-09-22T06:38:27.000Z\",\"products\":[{\"id\":6,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":3,\"name\":\"Muskelon   \",\"slug\":\"muskelon   \",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":400,\"qty\":1,\"discountPer\":6,\"discount\":24,\"total\":400,\"netPrice\":376,\"photo\":\"storage\\\\products\\\\8d339d89-3a6f-4242-8e64-496123a53b1d.png\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T06:50:23.000Z\",\"updatedAt\":\"2022-09-22T06:50:23.000Z\",\"productphotos\":[]},{\"id\":7,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":3,\"name\":\"Custard apple\",\"slug\":\"custard-apple\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":460,\"qty\":1,\"discountPer\":5,\"discount\":23,\"total\":460,\"netPrice\":437,\"photo\":\"storage\\\\products\\\\67da230b-592b-48fe-bd1d-6d40cf1acb10.png\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T06:55:53.000Z\",\"updatedAt\":\"2022-09-22T06:55:53.000Z\",\"productphotos\":[]}]},\"count\":1}}', 'awdawd', 'priyanka123@gmail.com', 'no:12/33', '600081', 'Afghanistan', 'Perth GPO', 1);
INSERT INTO `orders` (`id`, `custId`, `number`, `paymentmethod`, `transactionId`, `grandtotal`, `status`, `createdAt`, `updatedAt`, `deliverydate`, `products`, `name`, `email`, `address`, `pincode`, `country`, `city`, `paymentstatus`) VALUES
(18, 1, '', 'card', 'card_1M2DGcSIR2AbPxU0rFfdpBQw', 2204, 'shipping', '2022-11-09 12:20:34', '2022-11-09 12:24:25', '2022-11-15 00:00:00', '{\"cart_1667990789630\":{\"id\":7,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":3,\"name\":\"Custard apple\",\"slug\":\"custard-apple\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":460,\"qty\":1,\"discountPer\":5,\"discount\":23,\"total\":460,\"netPrice\":437,\"photo\":\"storage\\\\products\\\\67da230b-592b-48fe-bd1d-6d40cf1acb10.png\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T06:55:53.000Z\",\"updatedAt\":\"2022-09-22T06:55:53.000Z\",\"SubCategory\":{\"id\":4,\"sub_name\":\"Horticulture\",\"category\":{\"id\":2,\"name\":\"Seeds\"}},\"SubChildCategory\":{\"id\":3,\"name\":\"Fruit seed\",\"categoryId\":2,\"subcategoryId\":4,\"createdAt\":\"2022-09-22T06:38:27.000Z\",\"updatedAt\":\"2022-09-22T06:38:27.000Z\",\"products\":[{\"id\":6,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":3,\"name\":\"Muskelon   \",\"slug\":\"muskelon   \",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":400,\"qty\":1,\"discountPer\":6,\"discount\":24,\"total\":400,\"netPrice\":376,\"photo\":\"storage\\\\products\\\\8d339d89-3a6f-4242-8e64-496123a53b1d.png\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T06:50:23.000Z\",\"updatedAt\":\"2022-09-22T06:50:23.000Z\",\"productphotos\":[]},{\"id\":7,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":3,\"name\":\"Custard apple\",\"slug\":\"custard-apple\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":460,\"qty\":1,\"discountPer\":5,\"discount\":23,\"total\":460,\"netPrice\":437,\"photo\":\"storage\\\\products\\\\67da230b-592b-48fe-bd1d-6d40cf1acb10.png\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T06:55:53.000Z\",\"updatedAt\":\"2022-09-22T06:55:53.000Z\",\"productphotos\":[]}]},\"count\":2},\"cart_1667996327657\":{\"id\":18,\"categoryId\":2,\"subCategoryId\":6,\"childCategoryId\":10,\"name\":\"Papaya\",\"slug\":\"papaya\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":900,\"price\":700,\"qty\":1,\"discountPer\":5,\"discount\":35,\"total\":700,\"netPrice\":665,\"photo\":\"storage\\\\products\\\\6594c22b-93db-4a49-9f9d-a9685d256884.jpeg\",\"sortDesc\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\",\"desc\":\"<p><span style=\\\"color: rgb(0, 0, 0);\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>\",\"createdAt\":\"2022-09-23T12:39:11.000Z\",\"updatedAt\":\"2022-09-23T12:39:11.000Z\",\"SubCategory\":{\"id\":6,\"sub_name\":\"Saplings\",\"category\":{\"id\":2,\"name\":\"Seeds\"}},\"SubChildCategory\":{\"id\":10,\"name\":\"Papaya\",\"categoryId\":2,\"subcategoryId\":6,\"createdAt\":\"2022-09-23T12:28:41.000Z\",\"updatedAt\":\"2022-09-23T12:28:41.000Z\",\"products\":[{\"id\":18,\"categoryId\":2,\"subCategoryId\":6,\"childCategoryId\":10,\"name\":\"Papaya\",\"slug\":\"papaya\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":900,\"price\":700,\"qty\":1,\"discountPer\":5,\"discount\":35,\"total\":700,\"netPrice\":665,\"photo\":\"storage\\\\products\\\\6594c22b-93db-4a49-9f9d-a9685d256884.jpeg\",\"sortDesc\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\",\"desc\":\"<p><span style=\\\"color: rgb(0, 0, 0);\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>\",\"createdAt\":\"2022-09-23T12:39:11.000Z\",\"updatedAt\":\"2022-09-23T12:39:11.000Z\",\"productphotos\":[]}]},\"count\":2}}', 'priyanka', 'priyanka123@gmail.com', '391/2 kamban street', '603111', 'India', 'Venpakkam', 1),
(19, 1, '', 'card', 'card_1M2WK6SIR2AbPxU0lfBq8C8S', 2566, 'processing', '2022-11-10 08:41:26', '2022-11-10 08:41:26', '2022-11-20 08:41:26', '{\"cart_1668067204597\":{\"id\":15,\"categoryId\":2,\"subCategoryId\":5,\"childCategoryId\":6,\"name\":\"Paddy Seeds\",\"slug\":\"paddy\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":800,\"price\":600,\"qty\":1,\"discountPer\":6,\"discount\":36,\"total\":600,\"netPrice\":564,\"photo\":\"storage\\\\products\\\\fd7eb4cb-eb8f-4e58-ac1b-cf1c07f04c9b.webp\",\"sortDesc\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\",\"desc\":\"<p><span style=\\\"color: rgb(0, 0, 0);\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>\",\"createdAt\":\"2022-09-23T11:00:28.000Z\",\"updatedAt\":\"2022-09-23T11:00:28.000Z\",\"SubCategory\":{\"id\":5,\"sub_name\":\"Field crops\",\"category\":{\"id\":2,\"name\":\"Seeds\"}},\"SubChildCategory\":{\"id\":6,\"name\":\"paddy\",\"categoryId\":2,\"subcategoryId\":5,\"createdAt\":\"2022-09-23T09:07:24.000Z\",\"updatedAt\":\"2022-09-23T09:07:24.000Z\",\"products\":[{\"id\":15,\"categoryId\":2,\"subCategoryId\":5,\"childCategoryId\":6,\"name\":\"Paddy Seeds\",\"slug\":\"paddy\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":800,\"price\":600,\"qty\":1,\"discountPer\":6,\"discount\":36,\"total\":600,\"netPrice\":564,\"photo\":\"storage\\\\products\\\\fd7eb4cb-eb8f-4e58-ac1b-cf1c07f04c9b.webp\",\"sortDesc\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\",\"desc\":\"<p><span style=\\\"color: rgb(0, 0, 0);\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>\",\"createdAt\":\"2022-09-23T11:00:28.000Z\",\"updatedAt\":\"2022-09-23T11:00:28.000Z\",\"productphotos\":[]}]},\"count\":3},\"cart_1668069393907\":{\"id\":7,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":3,\"name\":\"Custard apple\",\"slug\":\"custard-apple\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":460,\"qty\":1,\"discountPer\":5,\"discount\":23,\"total\":460,\"netPrice\":437,\"photo\":\"storage\\\\products\\\\67da230b-592b-48fe-bd1d-6d40cf1acb10.png\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T06:55:53.000Z\",\"updatedAt\":\"2022-09-22T06:55:53.000Z\",\"SubCategory\":{\"id\":4,\"sub_name\":\"Horticulture\",\"category\":{\"id\":2,\"name\":\"Seeds\"}},\"SubChildCategory\":{\"id\":3,\"name\":\"Fruit seed\",\"categoryId\":2,\"subcategoryId\":4,\"createdAt\":\"2022-09-22T06:38:27.000Z\",\"updatedAt\":\"2022-09-22T06:38:27.000Z\",\"products\":[{\"id\":6,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":3,\"name\":\"Muskelon   \",\"slug\":\"muskelon   \",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":400,\"qty\":1,\"discountPer\":6,\"discount\":24,\"total\":400,\"netPrice\":376,\"photo\":\"storage\\\\products\\\\8d339d89-3a6f-4242-8e64-496123a53b1d.png\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T06:50:23.000Z\",\"updatedAt\":\"2022-09-22T06:50:23.000Z\",\"productphotos\":[]},{\"id\":7,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":3,\"name\":\"Custard apple\",\"slug\":\"custard-apple\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":460,\"qty\":1,\"discountPer\":5,\"discount\":23,\"total\":460,\"netPrice\":437,\"photo\":\"storage\\\\products\\\\67da230b-592b-48fe-bd1d-6d40cf1acb10.png\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T06:55:53.000Z\",\"updatedAt\":\"2022-09-22T06:55:53.000Z\",\"productphotos\":[]}]},\"count\":2}}', 'awdawd', 'priyanka123@gmail.com', 'no:12/33', '600081', 'Afghanistan', 'Perth GPO', 1),
(20, 1, '', 'card', 'card_1M2WmQSIR2AbPxU0ZHAPNsav', 1104, 'processing', '2022-11-10 09:10:43', '2022-11-10 09:10:43', '2022-11-20 09:10:43', '{\"cart_1668071412821\":{\"id\":13,\"categoryId\":2,\"subCategoryId\":5,\"childCategoryId\":7,\"name\":\"Cotton  Seeds\",\"slug\":\"cotton\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":800,\"price\":600,\"qty\":1,\"discountPer\":8,\"discount\":48,\"total\":600,\"netPrice\":552,\"photo\":\"storage\\\\products\\\\a338cbe1-352f-433f-880a-98f7c81e8fb2.png\",\"sortDesc\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\",\"desc\":\"<p><span style=\\\"color: rgb(0, 0, 0);\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>\",\"createdAt\":\"2022-09-23T10:27:35.000Z\",\"updatedAt\":\"2022-09-23T10:27:35.000Z\",\"SubCategory\":{\"id\":5,\"sub_name\":\"Field crops\",\"category\":{\"id\":2,\"name\":\"Seeds\"}},\"SubChildCategory\":{\"id\":7,\"name\":\"cotton\",\"categoryId\":2,\"subcategoryId\":5,\"createdAt\":\"2022-09-23T09:07:34.000Z\",\"updatedAt\":\"2022-09-23T09:07:34.000Z\",\"products\":[{\"id\":13,\"categoryId\":2,\"subCategoryId\":5,\"childCategoryId\":7,\"name\":\"Cotton  Seeds\",\"slug\":\"cotton\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":800,\"price\":600,\"qty\":1,\"discountPer\":8,\"discount\":48,\"total\":600,\"netPrice\":552,\"photo\":\"storage\\\\products\\\\a338cbe1-352f-433f-880a-98f7c81e8fb2.png\",\"sortDesc\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\",\"desc\":\"<p><span style=\\\"color: rgb(0, 0, 0);\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>\",\"createdAt\":\"2022-09-23T10:27:35.000Z\",\"updatedAt\":\"2022-09-23T10:27:35.000Z\",\"productphotos\":[]}]},\"count\":2}}', 'awdawd', 'priyanka123@gmail.com', 'no:12/33', '600081', 'Afghanistan', 'Perth GPO', 1),
(21, 1, '', 'card', 'card_1M2qETSIR2AbPxU06RFiq5ro', 1560, 'processing', '2022-11-11 05:56:57', '2022-11-11 05:56:57', '2022-11-21 05:56:58', '{\"cart_1667971884597\":{\"id\":15,\"categoryId\":2,\"subCategoryId\":5,\"childCategoryId\":6,\"name\":\"Paddy Seeds\",\"slug\":\"paddy\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":800,\"price\":600,\"qty\":1,\"discountPer\":6,\"discount\":36,\"total\":600,\"netPrice\":564,\"photo\":\"storage\\\\products\\\\fd7eb4cb-eb8f-4e58-ac1b-cf1c07f04c9b.webp\",\"sortDesc\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\",\"desc\":\"<p><span style=\\\"color: rgb(0, 0, 0);\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>\",\"createdAt\":\"2022-09-23T11:00:28.000Z\",\"updatedAt\":\"2022-09-23T11:00:28.000Z\",\"SubCategory\":{\"id\":5,\"sub_name\":\"Field crops\",\"category\":{\"id\":2,\"name\":\"Seeds\"}},\"SubChildCategory\":{\"id\":6,\"name\":\"paddy\",\"categoryId\":2,\"subcategoryId\":5,\"createdAt\":\"2022-09-23T09:07:24.000Z\",\"updatedAt\":\"2022-09-23T09:07:24.000Z\",\"products\":[{\"id\":15,\"categoryId\":2,\"subCategoryId\":5,\"childCategoryId\":6,\"name\":\"Paddy Seeds\",\"slug\":\"paddy\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":800,\"price\":600,\"qty\":1,\"discountPer\":6,\"discount\":36,\"total\":600,\"netPrice\":564,\"photo\":\"storage\\\\products\\\\fd7eb4cb-eb8f-4e58-ac1b-cf1c07f04c9b.webp\",\"sortDesc\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\",\"desc\":\"<p><span style=\\\"color: rgb(0, 0, 0);\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>\",\"createdAt\":\"2022-09-23T11:00:28.000Z\",\"updatedAt\":\"2022-09-23T11:00:28.000Z\",\"productphotos\":[]}]},\"count\":2},\"cart_1667975281085\":{\"id\":9,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":4,\"name\":\"Rose Seed\",\"slug\":\"rose-seed\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":450,\"qty\":1,\"discountPer\":4,\"discount\":18,\"total\":450,\"netPrice\":432,\"photo\":\"storage\\\\products\\\\751285c8-1bad-40cc-a675-5d2de0864424.webp\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T07:08:14.000Z\",\"updatedAt\":\"2022-09-22T07:08:14.000Z\",\"SubCategory\":{\"id\":4,\"sub_name\":\"Horticulture\",\"category\":{\"id\":2,\"name\":\"Seeds\"}},\"SubChildCategory\":{\"id\":4,\"name\":\"Flower seed\",\"categoryId\":2,\"subcategoryId\":4,\"createdAt\":\"2022-09-22T06:38:50.000Z\",\"updatedAt\":\"2022-09-22T06:38:50.000Z\",\"products\":[{\"id\":8,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":4,\"name\":\"Lotus Seed\",\"slug\":\"lotus-seed\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":450,\"qty\":1,\"discountPer\":5,\"discount\":23,\"total\":450,\"netPrice\":427,\"photo\":\"storage\\\\products\\\\663bd9e5-6380-43de-b60a-3c9794818950.webp\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T07:07:07.000Z\",\"updatedAt\":\"2022-09-22T07:07:07.000Z\",\"productphotos\":[]},{\"id\":9,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":4,\"name\":\"Rose Seed\",\"slug\":\"rose-seed\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":450,\"qty\":1,\"discountPer\":4,\"discount\":18,\"total\":450,\"netPrice\":432,\"photo\":\"storage\\\\products\\\\751285c8-1bad-40cc-a675-5d2de0864424.webp\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T07:08:14.000Z\",\"updatedAt\":\"2022-09-22T07:08:14.000Z\",\"productphotos\":[]},{\"id\":10,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":4,\"name\":\"Marigold Seed\",\"slug\":\"marigold-seed\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":450,\"qty\":1,\"discountPer\":3,\"discount\":14,\"total\":450,\"netPrice\":436,\"photo\":\"storage\\\\products\\\\221ab546-376c-4ae9-bca4-f2cea2db093b.webp\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T07:09:08.000Z\",\"updatedAt\":\"2022-09-22T07:09:08.000Z\",\"productphotos\":[]},{\"id\":11,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":4,\"name\":\"Sunflower Seed\",\"slug\":\"sunflower-seed\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":450,\"qty\":1,\"discountPer\":4,\"discount\":18,\"total\":450,\"netPrice\":432,\"photo\":\"storage\\\\products\\\\ad285188-e654-49b2-9866-f980f88c943b.webp\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T07:10:00.000Z\",\"updatedAt\":\"2022-09-22T07:10:00.000Z\",\"productphotos\":[]}]},\"count\":1}}', 'awdawd', 'priyanka123@gmail.com', 'no:12/33', '600081', 'Afghanistan', 'Perth GPO', 1),
(22, 1, '', 'card', 'card_1M2vOASIR2AbPxU02PawV8NN', 5230, 'shipping', '2022-11-11 11:27:17', '2022-11-11 11:29:49', '2022-11-15 00:00:00', '{\"cart_1668165972006\":{\"id\":7,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":3,\"name\":\"Custard apple\",\"slug\":\"custard-apple\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":460,\"qty\":1,\"discountPer\":5,\"discount\":23,\"total\":460,\"netPrice\":437,\"photo\":\"storage\\\\products\\\\67da230b-592b-48fe-bd1d-6d40cf1acb10.png\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T06:55:53.000Z\",\"updatedAt\":\"2022-09-22T06:55:53.000Z\",\"SubCategory\":{\"id\":4,\"sub_name\":\"Horticulture\",\"category\":{\"id\":2,\"name\":\"Seeds\"}},\"SubChildCategory\":{\"id\":3,\"name\":\"Fruit seed\",\"categoryId\":2,\"subcategoryId\":4,\"createdAt\":\"2022-09-22T06:38:27.000Z\",\"updatedAt\":\"2022-09-22T06:38:27.000Z\",\"products\":[{\"id\":6,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":3,\"name\":\"Muskelon   \",\"slug\":\"muskelon   \",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":400,\"qty\":1,\"discountPer\":6,\"discount\":24,\"total\":400,\"netPrice\":376,\"photo\":\"storage\\\\products\\\\8d339d89-3a6f-4242-8e64-496123a53b1d.png\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T06:50:23.000Z\",\"updatedAt\":\"2022-09-22T06:50:23.000Z\",\"productphotos\":[]},{\"id\":7,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":3,\"name\":\"Custard apple\",\"slug\":\"custard-apple\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":460,\"qty\":1,\"discountPer\":5,\"discount\":23,\"total\":460,\"netPrice\":437,\"photo\":\"storage\\\\products\\\\67da230b-592b-48fe-bd1d-6d40cf1acb10.png\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T06:55:53.000Z\",\"updatedAt\":\"2022-09-22T06:55:53.000Z\",\"productphotos\":[]}]},\"count\":2},\"cart_1668165984463\":{\"id\":13,\"categoryId\":2,\"subCategoryId\":5,\"childCategoryId\":7,\"name\":\"Cotton  Seeds\",\"slug\":\"cotton\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":800,\"price\":600,\"qty\":1,\"discountPer\":8,\"discount\":48,\"total\":600,\"netPrice\":552,\"photo\":\"storage\\\\products\\\\a338cbe1-352f-433f-880a-98f7c81e8fb2.png\",\"sortDesc\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\",\"desc\":\"<p><span style=\\\"color: rgb(0, 0, 0);\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>\",\"createdAt\":\"2022-09-23T10:27:35.000Z\",\"updatedAt\":\"2022-09-23T10:27:35.000Z\",\"SubCategory\":{\"id\":5,\"sub_name\":\"Field crops\",\"category\":{\"id\":2,\"name\":\"Seeds\"}},\"SubChildCategory\":{\"id\":7,\"name\":\"cotton\",\"categoryId\":2,\"subcategoryId\":5,\"createdAt\":\"2022-09-23T09:07:34.000Z\",\"updatedAt\":\"2022-09-23T09:07:34.000Z\",\"products\":[{\"id\":13,\"categoryId\":2,\"subCategoryId\":5,\"childCategoryId\":7,\"name\":\"Cotton  Seeds\",\"slug\":\"cotton\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":800,\"price\":600,\"qty\":1,\"discountPer\":8,\"discount\":48,\"total\":600,\"netPrice\":552,\"photo\":\"storage\\\\products\\\\a338cbe1-352f-433f-880a-98f7c81e8fb2.png\",\"sortDesc\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\",\"desc\":\"<p><span style=\\\"color: rgb(0, 0, 0);\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>\",\"createdAt\":\"2022-09-23T10:27:35.000Z\",\"updatedAt\":\"2022-09-23T10:27:35.000Z\",\"productphotos\":[]}]},\"count\":3},\"cart_1668165985125\":{\"id\":12,\"categoryId\":2,\"subCategoryId\":5,\"childCategoryId\":5,\"name\":\"Corn Seeds\",\"slug\":\"corn\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":1500,\"price\":1000,\"qty\":1,\"discountPer\":10,\"discount\":100,\"total\":1000,\"netPrice\":900,\"photo\":\"storage\\\\products\\\\eabb1f90-5079-4276-8ff4-1c5ad6c51f2c.webp\",\"sortDesc\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\",\"desc\":\"<p><span style=\\\"color: rgb(0, 0, 0);\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>\",\"createdAt\":\"2022-09-23T10:17:19.000Z\",\"updatedAt\":\"2022-09-23T10:17:19.000Z\",\"SubCategory\":{\"id\":5,\"sub_name\":\"Field crops\",\"category\":{\"id\":2,\"name\":\"Seeds\"}},\"SubChildCategory\":{\"id\":5,\"name\":\"Corn\",\"categoryId\":2,\"subcategoryId\":5,\"createdAt\":\"2022-09-23T09:07:07.000Z\",\"updatedAt\":\"2022-09-23T09:07:07.000Z\",\"products\":[{\"id\":12,\"categoryId\":2,\"subCategoryId\":5,\"childCategoryId\":5,\"name\":\"Corn Seeds\",\"slug\":\"corn\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":1500,\"price\":1000,\"qty\":1,\"discountPer\":10,\"discount\":100,\"total\":1000,\"netPrice\":900,\"photo\":\"storage\\\\products\\\\eabb1f90-5079-4276-8ff4-1c5ad6c51f2c.webp\",\"sortDesc\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\",\"desc\":\"<p><span style=\\\"color: rgb(0, 0, 0);\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>\",\"createdAt\":\"2022-09-23T10:17:19.000Z\",\"updatedAt\":\"2022-09-23T10:17:19.000Z\",\"productphotos\":[]}]},\"count\":3}}', 'test', 'priyanka123@gmail.com', 'no:12', '600032', 'India', 'Guindy Industrial Estate', 1),
(23, 1, '', 'card', 'card_1M3BQhSIR2AbPxU0KZYRFPux', 1097, 'processing', '2022-11-12 04:34:59', '2022-11-12 04:34:59', '2022-11-22 04:34:59', '{\"cart_1668166376952\":{\"id\":9,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":4,\"name\":\"Rose Seed\",\"slug\":\"rose-seed\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":450,\"qty\":1,\"discountPer\":4,\"discount\":18,\"total\":450,\"netPrice\":432,\"photo\":\"storage\\\\products\\\\751285c8-1bad-40cc-a675-5d2de0864424.webp\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T07:08:14.000Z\",\"updatedAt\":\"2022-09-22T07:08:14.000Z\",\"SubCategory\":{\"id\":4,\"sub_name\":\"Horticulture\",\"category\":{\"id\":2,\"name\":\"Seeds\"}},\"SubChildCategory\":{\"id\":4,\"name\":\"Flower seed\",\"categoryId\":2,\"subcategoryId\":4,\"createdAt\":\"2022-09-22T06:38:50.000Z\",\"updatedAt\":\"2022-09-22T06:38:50.000Z\",\"products\":[{\"id\":8,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":4,\"name\":\"Lotus Seed\",\"slug\":\"lotus-seed\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":450,\"qty\":1,\"discountPer\":5,\"discount\":23,\"total\":450,\"netPrice\":427,\"photo\":\"storage\\\\products\\\\663bd9e5-6380-43de-b60a-3c9794818950.webp\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T07:07:07.000Z\",\"updatedAt\":\"2022-09-22T07:07:07.000Z\",\"productphotos\":[]},{\"id\":9,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":4,\"name\":\"Rose Seed\",\"slug\":\"rose-seed\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":450,\"qty\":1,\"discountPer\":4,\"discount\":18,\"total\":450,\"netPrice\":432,\"photo\":\"storage\\\\products\\\\751285c8-1bad-40cc-a675-5d2de0864424.webp\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T07:08:14.000Z\",\"updatedAt\":\"2022-09-22T07:08:14.000Z\",\"productphotos\":[]},{\"id\":10,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":4,\"name\":\"Marigold Seed\",\"slug\":\"marigold-seed\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":450,\"qty\":1,\"discountPer\":3,\"discount\":14,\"total\":450,\"netPrice\":436,\"photo\":\"storage\\\\products\\\\221ab546-376c-4ae9-bca4-f2cea2db093b.webp\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T07:09:08.000Z\",\"updatedAt\":\"2022-09-22T07:09:08.000Z\",\"productphotos\":[]},{\"id\":11,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":4,\"name\":\"Sunflower Seed\",\"slug\":\"sunflower-seed\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":450,\"qty\":1,\"discountPer\":4,\"discount\":18,\"total\":450,\"netPrice\":432,\"photo\":\"storage\\\\products\\\\ad285188-e654-49b2-9866-f980f88c943b.webp\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T07:10:00.000Z\",\"updatedAt\":\"2022-09-22T07:10:00.000Z\",\"productphotos\":[]}]},\"count\":1},\"cart_1668166543943\":{\"id\":18,\"categoryId\":2,\"subCategoryId\":6,\"childCategoryId\":10,\"name\":\"Papaya\",\"slug\":\"papaya\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":900,\"price\":700,\"qty\":1,\"discountPer\":5,\"discount\":35,\"total\":700,\"netPrice\":665,\"photo\":\"storage\\\\products\\\\6594c22b-93db-4a49-9f9d-a9685d256884.jpeg\",\"sortDesc\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\",\"desc\":\"<p><span style=\\\"color: rgb(0, 0, 0);\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>\",\"createdAt\":\"2022-09-23T12:39:11.000Z\",\"updatedAt\":\"2022-09-23T12:39:11.000Z\",\"productphotos\":[],\"count\":1}}', 'awdawd', 'priyanka123@gmail.com', 'no:12/33', '600081', 'Afghanistan', 'Perth GPO', 1),
(24, 8, '', 'card', 'card_1M4gGySIR2AbPxU0ZBtFiNdE', 1728, 'processing', '2022-11-16 07:43:08', '2022-11-16 07:43:08', '2022-11-26 07:43:08', '{\"cart_1668584524877\":{\"id\":8,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":4,\"name\":\"Lotus Seed\",\"slug\":\"lotus-seed\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":450,\"qty\":1,\"discountPer\":5,\"discount\":23,\"total\":450,\"netPrice\":427,\"photo\":\"storage\\\\products\\\\663bd9e5-6380-43de-b60a-3c9794818950.webp\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T07:07:07.000Z\",\"updatedAt\":\"2022-09-22T07:07:07.000Z\",\"SubCategory\":{\"id\":4,\"sub_name\":\"Horticulture\",\"category\":{\"id\":2,\"name\":\"Seeds\"}},\"SubChildCategory\":{\"id\":4,\"name\":\"Flower seed\",\"categoryId\":2,\"subcategoryId\":4,\"createdAt\":\"2022-09-22T06:38:50.000Z\",\"updatedAt\":\"2022-09-22T06:38:50.000Z\",\"products\":[{\"id\":8,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":4,\"name\":\"Lotus Seed\",\"slug\":\"lotus-seed\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":450,\"qty\":1,\"discountPer\":5,\"discount\":23,\"total\":450,\"netPrice\":427,\"photo\":\"storage\\\\products\\\\663bd9e5-6380-43de-b60a-3c9794818950.webp\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T07:07:07.000Z\",\"updatedAt\":\"2022-09-22T07:07:07.000Z\",\"productphotos\":[]},{\"id\":9,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":4,\"name\":\"Rose Seed\",\"slug\":\"rose-seed\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":450,\"qty\":1,\"discountPer\":4,\"discount\":18,\"total\":450,\"netPrice\":432,\"photo\":\"storage\\\\products\\\\751285c8-1bad-40cc-a675-5d2de0864424.webp\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T07:08:14.000Z\",\"updatedAt\":\"2022-09-22T07:08:14.000Z\",\"productphotos\":[]},{\"id\":10,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":4,\"name\":\"Marigold Seed\",\"slug\":\"marigold-seed\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":450,\"qty\":1,\"discountPer\":3,\"discount\":14,\"total\":450,\"netPrice\":436,\"photo\":\"storage\\\\products\\\\221ab546-376c-4ae9-bca4-f2cea2db093b.webp\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T07:09:08.000Z\",\"updatedAt\":\"2022-09-22T07:09:08.000Z\",\"productphotos\":[]},{\"id\":11,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":4,\"name\":\"Sunflower Seed\",\"slug\":\"sunflower-seed\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":450,\"qty\":1,\"discountPer\":4,\"discount\":18,\"total\":450,\"netPrice\":432,\"photo\":\"storage\\\\products\\\\ad285188-e654-49b2-9866-f980f88c943b.webp\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T07:10:00.000Z\",\"updatedAt\":\"2022-09-22T07:10:00.000Z\",\"productphotos\":[]}]},\"count\":2},\"cart_1668584525726\":{\"id\":7,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":3,\"name\":\"Custard apple\",\"slug\":\"custard-apple\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":460,\"qty\":1,\"discountPer\":5,\"discount\":23,\"total\":460,\"netPrice\":437,\"photo\":\"storage\\\\products\\\\67da230b-592b-48fe-bd1d-6d40cf1acb10.png\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T06:55:53.000Z\",\"updatedAt\":\"2022-09-22T06:55:53.000Z\",\"SubCategory\":{\"id\":4,\"sub_name\":\"Horticulture\",\"category\":{\"id\":2,\"name\":\"Seeds\"}},\"SubChildCategory\":{\"id\":3,\"name\":\"Fruit seed\",\"categoryId\":2,\"subcategoryId\":4,\"createdAt\":\"2022-09-22T06:38:27.000Z\",\"updatedAt\":\"2022-09-22T06:38:27.000Z\",\"products\":[{\"id\":6,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":3,\"name\":\"Muskelon   \",\"slug\":\"muskelon   \",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":400,\"qty\":1,\"discountPer\":6,\"discount\":24,\"total\":400,\"netPrice\":376,\"photo\":\"storage\\\\products\\\\8d339d89-3a6f-4242-8e64-496123a53b1d.png\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T06:50:23.000Z\",\"updatedAt\":\"2022-09-22T06:50:23.000Z\",\"productphotos\":[]},{\"id\":7,\"categoryId\":2,\"subCategoryId\":4,\"childCategoryId\":3,\"name\":\"Custard apple\",\"slug\":\"custard-apple\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":500,\"price\":460,\"qty\":1,\"discountPer\":5,\"discount\":23,\"total\":460,\"netPrice\":437,\"photo\":\"storage\\\\products\\\\67da230b-592b-48fe-bd1d-6d40cf1acb10.png\",\"sortDesc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"desc\":\"<p><span style=\\\"color: rgb(32, 33, 36);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>\",\"createdAt\":\"2022-09-22T06:55:53.000Z\",\"updatedAt\":\"2022-09-22T06:55:53.000Z\",\"productphotos\":[]}]},\"count\":2}}', 'lensi', 'lensi11@gmail.com', 'no:10, lensi street', '603111', 'India', 'Chengalpattu', 1),
(25, 1, '', 'card', 'card_1M6pH2SIR2AbPxU04yXlVZwr', 2417, 'processing', '2022-11-22 05:44:04', '2022-11-22 05:44:04', '2022-12-02 05:44:04', '{\"cart_1669095803927\":{\"id\":14,\"categoryId\":2,\"subCategoryId\":5,\"childCategoryId\":8,\"name\":\"Jowar Seeds\",\"slug\":\"jowar\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":800,\"price\":650,\"qty\":1,\"discountPer\":5,\"discount\":33,\"total\":650,\"netPrice\":617,\"photo\":\"storage\\\\products\\\\607b3946-78f0-46b1-9029-489b5c375ad7.jpeg\",\"sortDesc\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\",\"desc\":\"<p><span style=\\\"color: rgb(0, 0, 0);\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>\",\"createdAt\":\"2022-09-23T10:29:12.000Z\",\"updatedAt\":\"2022-09-23T10:29:12.000Z\",\"SubCategory\":{\"id\":5,\"sub_name\":\"Field crops\",\"category\":{\"id\":2,\"name\":\"Seeds\"}},\"SubChildCategory\":{\"id\":8,\"name\":\"Jowar\",\"categoryId\":2,\"subcategoryId\":5,\"createdAt\":\"2022-09-23T09:07:44.000Z\",\"updatedAt\":\"2022-09-23T09:07:44.000Z\",\"products\":[{\"id\":14,\"categoryId\":2,\"subCategoryId\":5,\"childCategoryId\":8,\"name\":\"Jowar Seeds\",\"slug\":\"jowar\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":800,\"price\":650,\"qty\":1,\"discountPer\":5,\"discount\":33,\"total\":650,\"netPrice\":617,\"photo\":\"storage\\\\products\\\\607b3946-78f0-46b1-9029-489b5c375ad7.jpeg\",\"sortDesc\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\",\"desc\":\"<p><span style=\\\"color: rgb(0, 0, 0);\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>\",\"createdAt\":\"2022-09-23T10:29:12.000Z\",\"updatedAt\":\"2022-09-23T10:29:12.000Z\",\"productphotos\":[]}]},\"count\":1},\"cart_1669095805731\":{\"id\":12,\"categoryId\":2,\"subCategoryId\":5,\"childCategoryId\":5,\"name\":\"Corn Seeds\",\"slug\":\"corn\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":1500,\"price\":1000,\"qty\":1,\"discountPer\":10,\"discount\":100,\"total\":1000,\"netPrice\":900,\"photo\":\"storage\\\\products\\\\eabb1f90-5079-4276-8ff4-1c5ad6c51f2c.webp\",\"sortDesc\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\",\"desc\":\"<p><span style=\\\"color: rgb(0, 0, 0);\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>\",\"createdAt\":\"2022-09-23T10:17:19.000Z\",\"updatedAt\":\"2022-09-23T10:17:19.000Z\",\"SubCategory\":{\"id\":5,\"sub_name\":\"Field crops\",\"category\":{\"id\":2,\"name\":\"Seeds\"}},\"SubChildCategory\":{\"id\":5,\"name\":\"Corn\",\"categoryId\":2,\"subcategoryId\":5,\"createdAt\":\"2022-09-23T09:07:07.000Z\",\"updatedAt\":\"2022-09-23T09:07:07.000Z\",\"products\":[{\"id\":12,\"categoryId\":2,\"subCategoryId\":5,\"childCategoryId\":5,\"name\":\"Corn Seeds\",\"slug\":\"corn\",\"brand\":\"add\",\"unitSize\":\"50 kg\",\"status\":\"active\",\"buyerPrice\":1500,\"price\":1000,\"qty\":1,\"discountPer\":10,\"discount\":100,\"total\":1000,\"netPrice\":900,\"photo\":\"storage\\\\products\\\\eabb1f90-5079-4276-8ff4-1c5ad6c51f2c.webp\",\"sortDesc\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\",\"desc\":\"<p><span style=\\\"color: rgb(0, 0, 0);\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>\",\"createdAt\":\"2022-09-23T10:17:19.000Z\",\"updatedAt\":\"2022-09-23T10:17:19.000Z\",\"productphotos\":[]}]},\"count\":2}}', 'priyanka', 'priyanka123@gmail.com', 'no:12/33', '600081', 'Afghanistan', 'Perth GPO', 1);

--
-- Triggers `orders`
--
DELIMITER $$
CREATE TRIGGER `dateinsert` BEFORE INSERT ON `orders` FOR EACH ROW SET NEW.deliverydate =  DATE_ADD(CURRENT_TIMESTAMP(),INTERVAL 10 DAY)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `orderCreationId` varchar(255) DEFAULT NULL,
  `razorpayPaymentId` varchar(255) DEFAULT NULL,
  `custId` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `razorpayOrderId` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `productoffers`
--

CREATE TABLE `productoffers` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `discount_per` varchar(255) DEFAULT NULL,
  `discount_price` float DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `net_price` float DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `productphotos`
--

CREATE TABLE `productphotos` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `imgUrl` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productphotos`
--

INSERT INTO `productphotos` (`id`, `productId`, `imgUrl`, `createdAt`, `updatedAt`) VALUES
(1, 46, 'storage\\products\\046b193d-6def-49e5-a143-07cb45fb6f85.jpeg', '2022-10-12 12:06:44', '2022-10-12 12:06:44'),
(2, 46, 'storage\\products\\313757e3-8d80-4f35-88f6-0f182d6217cc.jpeg', '2022-10-12 12:06:44', '2022-10-12 12:06:44'),
(3, 44, 'storage\\products\\22f4c8f6-2879-4c97-a758-127da51dd317.jpeg', '2022-10-12 12:20:32', '2022-10-12 12:20:32'),
(4, 44, 'storage\\products\\faff8886-9a14-4140-b17a-70afc93abb98.jpeg', '2022-10-12 12:20:32', '2022-10-12 12:20:32');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `subCategoryId` int(11) DEFAULT NULL,
  `childCategoryId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `unitSize` varchar(255) DEFAULT NULL,
  `buyerPrice` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `discountPer` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `netPrice` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `sortDesc` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `categoryId`, `subCategoryId`, `childCategoryId`, `name`, `brand`, `status`, `unitSize`, `buyerPrice`, `price`, `qty`, `discountPer`, `discount`, `total`, `netPrice`, `photo`, `sortDesc`, `slug`, `desc`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, 1, 'Product 1', 'a', 'active', '12', 1000, 500, 1, 8, 40, 500, 460, 'storage\\products\\c37b095f-70e0-42a8-81e0-964f16049217.jpeg', 'csdvsdv', 'product-1', '<p><span style=\"color: rgb(32, 33, 36);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>', '2022-09-21 12:21:16', '2022-09-22 07:21:41'),
(2, 2, 4, 2, 'Product 1', 'a', 'active', '50 kg', 1000, 500, 1, 5, 25, 500, 475, 'storage\\products\\6c26c835-ac02-4c49-b2f7-5fb5a72c19a7.png', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'product-1', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</p>', '2022-09-22 06:43:25', '2022-09-22 06:45:26'),
(3, 2, 4, 2, 'product 3', 'add', 'active', '50 kg', 1000, 500, 1, 5, 25, 500, 475, 'storage\\products\\e90167ed-04c4-4d75-8341-8af209006d8a.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'product-3', '<p><span style=\"color: rgb(32, 33, 36);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>', '2022-09-22 06:47:01', '2022-09-22 06:47:01'),
(4, 2, 4, 2, 'Product 4', 'add', 'active', '50 kg', 1000, 500, 1, 5, 25, 500, 475, 'storage\\products\\4dbe3608-dc97-4706-983a-ef29028f06b8.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'product-4', '<p><span style=\"color: rgb(32, 33, 36);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>', '2022-09-22 06:47:57', '2022-09-22 06:47:57'),
(5, 2, 4, 2, 'Product 5', 'add', 'active', '50 kg', 1000, 500, 1, 5, 25, 500, 475, 'storage\\products\\69dc3ef2-3ce4-4e83-9d6b-7f00b5f63f6b.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'product-5', '<p><span style=\"color: rgb(32, 33, 36);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>', '2022-09-22 06:48:38', '2022-09-22 06:48:38'),
(6, 2, 4, 3, 'Muskelon   ', 'add', 'active', '50 kg', 500, 400, 1, 6, 24, 400, 376, 'storage\\products\\8d339d89-3a6f-4242-8e64-496123a53b1d.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'muskelon   ', '<p><span style=\"color: rgb(32, 33, 36);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>', '2022-09-22 06:50:23', '2022-09-22 06:50:23'),
(7, 2, 4, 3, 'Custard apple', 'add', 'active', '50 kg', 500, 460, 1, 5, 23, 460, 437, 'storage\\products\\67da230b-592b-48fe-bd1d-6d40cf1acb10.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'custard-apple', '<p><span style=\"color: rgb(32, 33, 36);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>', '2022-09-22 06:55:53', '2022-09-22 06:55:53'),
(8, 2, 4, 4, 'Lotus Seed', 'add', 'active', '50 kg', 500, 450, 1, 5, 23, 450, 427, 'storage\\products\\663bd9e5-6380-43de-b60a-3c9794818950.webp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'lotus-seed', '<p><span style=\"color: rgb(32, 33, 36);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>', '2022-09-22 07:07:07', '2022-09-22 07:07:07'),
(9, 2, 4, 4, 'Rose Seed', 'add', 'active', '50 kg', 500, 450, 1, 4, 18, 450, 432, 'storage\\products\\751285c8-1bad-40cc-a675-5d2de0864424.webp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'rose-seed', '<p><span style=\"color: rgb(32, 33, 36);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>', '2022-09-22 07:08:14', '2022-09-22 07:08:14'),
(10, 2, 4, 4, 'Marigold Seed', 'add', 'active', '50 kg', 500, 450, 1, 3, 14, 450, 436, 'storage\\products\\221ab546-376c-4ae9-bca4-f2cea2db093b.webp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'marigold-seed', '<p><span style=\"color: rgb(32, 33, 36);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>', '2022-09-22 07:09:08', '2022-09-22 07:09:08'),
(11, 2, 4, 4, 'Sunflower Seed', 'add', 'active', '50 kg', 500, 450, 1, 4, 18, 450, 432, 'storage\\products\\ad285188-e654-49b2-9866-f980f88c943b.webp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'sunflower-seed', '<p><span style=\"color: rgb(32, 33, 36);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>', '2022-09-22 07:10:00', '2022-09-22 07:10:00'),
(12, 2, 5, 5, 'Corn Seeds', 'add', 'active', '50 kg', 1500, 1000, 1, 10, 100, 1000, 900, 'storage\\products\\eabb1f90-5079-4276-8ff4-1c5ad6c51f2c.webp', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'corn', '<p><span style=\"color: rgb(0, 0, 0);\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>', '2022-09-23 10:17:19', '2022-09-23 10:17:19'),
(13, 2, 5, 7, 'Cotton  Seeds', 'add', 'active', '50 kg', 800, 600, 1, 8, 48, 600, 552, 'storage\\products\\a338cbe1-352f-433f-880a-98f7c81e8fb2.png', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'cotton', '<p><span style=\"color: rgb(0, 0, 0);\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>', '2022-09-23 10:27:35', '2022-09-23 10:27:35'),
(14, 2, 5, 8, 'Jowar Seeds', 'add', 'active', '50 kg', 800, 650, 1, 5, 33, 650, 617, 'storage\\products\\607b3946-78f0-46b1-9029-489b5c375ad7.jpeg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'jowar', '<p><span style=\"color: rgb(0, 0, 0);\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>', '2022-09-23 10:29:12', '2022-09-23 10:29:12'),
(15, 2, 5, 6, 'Paddy Seeds', 'add', 'active', '50 kg', 800, 600, 1, 6, 36, 600, 564, 'storage\\products\\fd7eb4cb-eb8f-4e58-ac1b-cf1c07f04c9b.webp', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'paddy', '<p><span style=\"color: rgb(0, 0, 0);\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>', '2022-09-23 11:00:28', '2022-09-23 11:00:28'),
(16, 2, 6, 9, 'Coconut ', 'add', 'active', '50', 1500, 1000, 1, 5, 50, 1000, 950, 'storage\\products\\67a71815-d0aa-4f42-861e-fd29e70ad4c4.jpeg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'coconut', '<p><span style=\"color: rgb(0, 0, 0);\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>', '2022-09-23 12:35:40', '2022-09-23 12:35:40'),
(18, 2, 6, 10, 'Papaya', 'add', 'active', '50 kg', 900, 700, 1, 5, 35, 700, 665, 'storage\\products\\6594c22b-93db-4a49-9f9d-a9685d256884.jpeg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'papaya', '<p><span style=\"color: rgb(0, 0, 0);\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>', '2022-09-23 12:39:11', '2022-09-23 12:39:11'),
(19, 1, 1, 14, 'Manure', 'add', 'active', '50 kg', 2500, 2000, 1, 4, 80, 2000, 1920, 'storage\\products\\6e2d3fa4-1969-454d-8f26-782fdaacdfac.jpeg', 'It is made from animal excreta(cow dung & goat droppings). Cattle Manure is a good source of nitrogen and organic carbon while goat manure is rich in nitrogen and potash.', 'manure', '<p>It is made from animal excreta(cow dung &amp; goat droppings). Cattle Manure is a good source of nitrogen and organic carbon while goat manure is rich in nitrogen and potash.</p><p><br></p>', '2022-09-26 08:45:24', '2022-09-26 08:45:24'),
(20, 1, 1, 15, 'Compost', 'add', 'active', '500 kg', 2500, 2000, 1, 5, 100, 2000, 1900, 'storage\\products\\b423d64d-b530-4f56-a5dc-58519fb56d21.jpeg', 'It is organic matter decomposed through composting. The organic matter used here can be vegetable and plant waste, animal excreta.', 'compost', '<p>It is organic matter decomposed through composting. The organic matter used here can be vegetable and plant waste, animal excreta.</p><p><br></p>', '2022-09-26 08:55:14', '2022-09-26 08:55:14'),
(22, 1, 1, 16, 'Chicken Litter', '', 'active', '500 kg', 2000, 1900, 1, 5, 95, 1900, 1805, 'storage\\products\\7cc53fd6-8acb-4bd4-a617-84cd9a2ad07f.jpeg', 'It consists of chicken manure and sawdust. It has high levels of nitrogen and potash. Consider superior for conditioning of soil for harvest than chemical fertilizers', 'chicken-litter', '<p>It consists of chicken manure and sawdust. It has high levels of nitrogen and potash. Consider superior for conditioning of soil for harvest than chemical fertilizers</p><p><br></p>', '2022-09-26 09:03:58', '2022-09-26 09:03:58'),
(23, 1, 1, 17, 'Bone Meal', 'add', 'active', '500 kg', 2000, 1800, 1, 5, 90, 1800, 1710, 'storage\\products\\261837a8-5364-48d7-afbd-cab885cdf552.jpeg', 'It is a mix of ground slaughter house waste products like animal bones. It is a very good source of phosphorous and amino acids. Being organic it is also a slow release fertilizer.', 'bone-meal', '<p>It is a mix of ground slaughter house waste products like animal bones. It is a very good source of phosphorous and amino acids. Being organic it is also a slow release fertilizer.</p><p><br></p>', '2022-09-26 09:20:16', '2022-09-26 09:20:16'),
(24, 1, 1, 18, 'Vermicompost', 'add', 'active', '500 kg', 2500, 2300, 1, 5, 115, 2300, 2185, 'storage\\products\\61ea4a81-aa45-4d24-8da1-84e73b4664e7.jpeg', 'It is a product of organic material degradation using various species of worms, to create a heterogeneous mixture of decomposing food waste.', 'vermicompost', '<p>It is a product of organic material degradation using various species of worms, to create a heterogeneous mixture of decomposing food waste.</p><p><br></p>', '2022-09-26 09:21:16', '2022-09-26 09:21:16'),
(25, 1, 2, 19, 'Nitrogen Fertilizers', 'add', 'active', '500 kg', 2000, 1500, 1, 10, 150, 1500, 1350, 'storage\\products\\a1633f6f-2eff-4e6c-82ae-f06c8a7ebca1.jpeg', 'Inorganic nitrogen fertilizers come in many different forms, such as ammonium nitrate, potassium nitrate, calcium nitrate and urea. These fertilizers contain high levels of nitrogen, one of the most vital nutrients for plant growth. However, these inorganic fertilizers tend to increase the pH of the soil upon application, increasing the chances of burn and damage to seedlings. Others pull moisture from the air, making them difficult to apply and store.', 'nitrogen-fertilizers', '<p><span style=\"color: rgb(34, 34, 34);\">Inorganic nitrogen fertilizers come in many different forms, such as ammonium nitrate, potassium nitrate, calcium nitrate and urea. These fertilizers contain high levels of nitrogen, one of the most vital nutrients for plant growth. However, these inorganic fertilizers tend to increase the pH of the soil upon application, increasing the chances of burn and damage to seedlings. Others pull moisture from the air, making them difficult to apply and store.</span></p>', '2022-09-27 12:24:51', '2022-09-27 12:24:51'),
(26, 1, 2, 20, 'Potassium Fertilizers', 'add', 'active', '500 kg', 2000, 1500, 1, 5, 75, 1500, 1425, 'storage\\products\\13538783-712e-418e-bb42-26d769232393.jpeg', 'Inorganic potassium fertilizers include potassium sulfate and potassium nitrate, as well as muriate of potash, also known as potassium chloride. Muriate of potash is the most commonly used potassium fertilizer. In some cases, plants may be sensitive to chloride. If a plant is sensitive to chloride, potassium sulfate, also known as sulfate of potash, is a better choice, as it does not contain chloride. Potassium nitrate is easy to apply, because it does not pull moisture from the air, but it does slightly increase the pH of the soil upon application.', 'potassium-fertilizers', '<p><span style=\"color: rgb(34, 34, 34);\">Inorganic potassium fertilizers include potassium sulfate and potassium nitrate, as well as muriate of potash, also known as potassium chloride. Muriate of potash is the most commonly used potassium fertilizer. In some cases, plants may be sensitive to chloride. If a plant is sensitive to chloride, potassium sulfate, also known as sulfate of potash, is a better choice, as it does not contain chloride. Potassium nitrate is easy to apply, because it does not pull moisture from the air, but it does slightly increase the pH of the soil upon application.</span></p>', '2022-09-27 12:26:37', '2022-09-27 12:26:37'),
(27, 1, 2, 21, 'Phosphorus Fertilizers', 'add', 'active', '500 kg', 2000, 1700, 1, 10, 170, 1700, 1530, 'storage\\products\\f96c72a7-0c31-4cec-af37-03a1e8bca82f.jpeg', 'Inorganic phosphorus fertilizers such as rock phosphate remain in the soil years after the initial application. Rock phosphate works only in acidic soils, as the nutrients do not break down for plants in neutral or alkaline soils. Superphosphates are other forms of phosphorus fertilizer. These do not affect the pH of the soil upon application, while ammonium phosphates come in water-soluble, granular forms.', 'phosphorus-fertilizers', '<p><span style=\"color: rgb(34, 34, 34);\">Inorganic phosphorus fertilizers such as rock phosphate remain in the soil years after the initial application. Rock phosphate works only in acidic soils, as the nutrients do not break down for plants in neutral or alkaline soils. Superphosphates are other forms of phosphorus fertilizer. These do not affect the pH of the soil upon application, while ammonium phosphates come in water-soluble, granular forms.</span></p>', '2022-09-27 12:27:37', '2022-09-27 12:27:37'),
(28, 1, 3, 22, 'WSF 19-19-19', 'add', 'active', '500 kg', 1500, 1300, 1, 6, 78, 1300, 1222, 'storage\\products\\e9e824dd-cd5e-4653-95a5-54b96ea039e8.jpeg', 'Maintains NPK nutrient balance\r\nInstant uptake of nutrients by plants\r\nPrompts root & shoot development\r\nContains Mg, Zn, Fe, Co, Mn, B, Mo\r\nBeing acidic helps in maintaining drippers free of salts in drip irrigation system.', 'WSF', '<ul><li>Maintains NPK nutrient balance</li><li>Instant uptake of nutrients by plants</li><li>Prompts root &amp; shoot development</li><li>Contains Mg, Zn, Fe, Co, Mn, B, Mo</li><li>Being acidic helps in maintaining drippers free of salts in drip irrigation system.</li></ul><p><br></p>', '2022-09-27 12:38:35', '2022-09-27 12:38:35'),
(29, 1, 3, 22, 'WSF 0-52-34', 'add', 'active', '500 kg', 2000, 1500, 1, 5, 75, 1500, 1425, 'storage\\products\\cf40e85f-e496-4ba7-b7a4-2735a656451b.jpeg', 'Chloride-free, lowest salt index – prevents clogging of drip\r\nImproves fruit size, luster, uniform colour and taste of fruit & yield\r\nImproves resistance to adverse weather and pests\r\nPromote flowering & fruit settings\r\nReduces flower & fruit dropping', 'WSF-0-52-34', '<ul><li>Chloride-free, lowest salt index – prevents clogging of drip</li><li>Improves fruit size, luster, uniform colour and taste of fruit &amp; yield</li><li>Improves resistance to adverse weather and pests</li><li>Promote flowering &amp; fruit settings</li><li>Reduces flower &amp; fruit dropping</li></ul><p><br></p>', '2022-09-27 13:00:18', '2022-09-27 13:00:18'),
(30, 1, 3, 22, 'WSF 17-44-0', 'add', 'active', '500 kg', 2000, 1500, 1, 5, 75, 1500, 1425, 'storage\\products\\dcb28a3d-343f-454a-bcb1-496c9207a1cc.jpeg', 'Best replacement of DAP\r\nEconomic source of ‘P’\r\nReduces ‘N’ volatilisation\r\nGives impressive increase in yield & quality of crop\r\nHelps to un-clog the drippers of MIS\r\nBeing acidic, it neutralises the pH of alkaline soil & enhances efficiency of nutrients applie', 'WSF-17-44-0', '<ul><li>Best replacement of DAP</li><li>Economic source of ‘P’</li><li>Reduces ‘N’ volatilisation</li><li>Gives impressive increase in yield &amp; quality of crop</li><li>Helps to un-clog the drippers of MIS</li><li>Being acidic, it neutralises the pH of alkaline soil &amp; enhances efficiency of nutrients applie</li></ul><p><br></p>', '2022-09-27 13:02:46', '2022-09-27 13:02:46'),
(31, 1, 3, 22, 'WSF 13-0-45', 'add', 'active', '500 kg', 2000, 1500, 1, 5, 75, 1500, 1425, 'storage\\products\\26dec67f-12d2-45f6-b041-3a0e00af1a2a.jpeg', 'N in nitrate form – readily available plus a rich source of potash\r\nHelps in formation of sugar during fruit setting\r\nReduces dropping of immature fruits\r\nImproves shape, size and quality of fruits/seeds\r\nHelps in uptake of Ca, Mg & K by crops\r\nLess hygroscopic', 'WSF-13-0-45', '<ul><li>N in nitrate form – readily available plus a rich source of potash</li><li>Helps in formation of sugar during fruit setting</li><li>Reduces dropping of immature fruits</li><li>Improves shape, size and quality of fruits/seeds</li><li>Helps in uptake of Ca, Mg &amp; K by crops</li><li>Less hygroscopic</li></ul><p><br></p>', '2022-09-27 13:03:45', '2022-09-27 13:03:45'),
(32, 1, 3, 22, 'WSF 12-61-0', 'add', 'active', '500 kg', 2000, 1500, 1, 5, 75, 1500, 1425, 'storage\\products\\63dc2f2c-d28f-4dc7-89e4-324b1fe2b598.jpeg', 'Highly concentrated source of P along with N\r\nHelps in fast and healthy vegetative & root growth\r\nLess hygroscopic and hence can be applied with other fertilizers\r\nLow salt index – free from Na & Cl\r\nImproves uptake of other nutrients', 'WSF-12-61-0', '<ul><li>Highly concentrated source of P along with N</li><li>Helps in fast and healthy vegetative &amp; root growth</li><li>Less hygroscopic and hence can be applied with other fertilizers</li><li>Low salt index – free from Na &amp; Cl</li><li>Improves uptake of other nutrients</li></ul><p><br></p>', '2022-09-27 13:04:41', '2022-09-27 13:04:41'),
(33, 1, 3, 22, 'WSF 0-0-50', 'add', 'active', '500 kg', 2000, 1500, 1, 5, 75, 1500, 1425, 'storage\\products\\628f44b0-0df1-45a4-91ac-4d7a64a2c2ab.jpeg', 'Cheapest source of K (Chloride-free)\r\nAlso contains 18% S\r\nIncreases shelf life of the crop post-harvest\r\nIncreases resistance against pest, diseases and abiotic stress', 'WSF-0-0-50', '<ul><li>Cheapest source of K (Chloride-free)</li><li>Also contains 18% S</li><li>Increases shelf life of the crop post-harvest</li><li>Increases resistance against pest, diseases and abiotic stress</li></ul><p><br></p>', '2022-09-27 13:05:30', '2022-09-27 13:05:30'),
(34, 1, 3, 22, 'WSF 13-40-13', 'add', 'active', '500 kg', 2000, 1500, 1, 5, 75, 1500, 1425, 'storage\\products\\9b2c6107-11ec-4784-b54c-8f940ac7f85a.jpeg', 'Fosters plant rooting and blossoming\r\nHas an acid pH to prevent scale formation in irrigation systems\r\nPromotes crop growth by stimulating new root development\r\nReduces flower drop, increases fruit setting and increases yield and quality of the produce.\r\nUseful at early flowering, early fruit formation and fruit development stages, where the requirement of crops for P is more and less for N and K\r\nEnriched with micronutrients', 'WSF-13-40-13', '<ul><li>Fosters plant rooting and blossoming</li><li>Has an acid pH to prevent scale formation in irrigation systems</li><li>Promotes crop growth by stimulating new root development</li><li>Reduces flower drop, increases fruit setting and increases yield and quality of the produce.</li><li>Useful at early flowering, early fruit formation and fruit development stages, where the requirement of crops for P is more and less&nbsp;for N and K</li><li>Enriched with micronutrients</li></ul><p><br></p>', '2022-09-27 13:06:24', '2022-09-27 13:06:24'),
(35, 1, 3, 22, 'Calcium Nitrate', 'add', 'active', '500 kg', 2000, 1500, 1, 5, 75, 1500, 1425, 'storage\\products\\aca6e3ac-910d-4315-bdbf-1321da68963b.jpeg', 'Contains 100% soluble calcium\r\nN in nitrate form – preferred for fruit & field crops\r\nImproves strength of cell wall – increasing shelf life of marketable produce\r\nCorrects Calcium deficiencies\r\n', 'calcium-nitrate', '<ul><li>Contains 100% soluble calcium</li><li>N in nitrate form – preferred for fruit &amp; field crops</li><li>Improves strength of cell wall – increasing shelf life of marketable produce</li><li>Corrects Calcium deficiencies</li></ul><p><br></p>', '2022-09-27 13:07:57', '2022-09-27 13:07:57'),
(36, 1, 3, 22, 'Boronated Calcium Nitrate', 'add', 'active', '500 kg', 2000, 1500, 1, 5, 75, 1500, 1425, 'storage\\products\\9042c9f6-1c03-49f3-a253-10406ff745b1.png', 'Contains 100% soluble Ca & B\r\nN in nitrate form-preferred for fruit & field crops\r\nBoron helps in cell wall formation, Ca improves the strength of cell wall – increasing strength & quality of produce\r\nCorrects Calcium & Boron deficiency', 'boronated-calcium', '<ul><li>Contains 100% soluble Ca &amp; B</li><li>N in nitrate form-preferred for fruit &amp; field crops</li><li>Boron helps in cell wall formation, Ca improves the strength of cell wall – increasing strength &amp; quality of produce</li><li>Corrects Calcium &amp; Boron deficiency</li></ul><p><br></p>', '2022-09-27 13:10:18', '2022-09-27 13:10:18'),
(37, 1, 3, 22, 'Boronated Calcium Nitrate Liquid', 'add', 'active', '500 kg', 2000, 1500, 1, 5, 75, 1500, 1425, 'storage\\products\\f5bf974e-64bf-4951-844a-a0b1fc26decf.png', 'Contains 100% soluble Calcium and Boron\r\nNitrogen in nitrate form-preferred for fruit & field crops\r\nBoron helps in cell wall formation\r\nCalcium improves the strength of cell wall – increasing strength & quality of produce\r\nCorrects Calcium & Boron deficiency', 'BCNL', '<ul><li>Contains 100% soluble Calcium and Boron</li><li>Nitrogen in nitrate form-preferred for fruit &amp; field crops</li><li>Boron helps in cell wall formation</li><li>Calcium improves the strength of cell wall – increasing strength &amp; quality of produce</li><li>Corrects Calcium &amp; Boron deficiency</li></ul>', '2022-09-27 13:13:19', '2022-09-27 13:13:19'),
(41, 3, 10, 27, 'Macrophominaphaseolina', 'add', 'active', '50', 500, 450, 1, 5, 23, 450, 427, 'storage\\products\\04effbc3-a680-4a5e-9f69-5e01acaed0f9.png', 'Sclerotia, is a compact mass of hardened fungal mycelium containing food reserves. One role of sclerotia is to survive environmental extremes. In some higher fungi such as ergot, sclerotia become detached and remain dormant until favorable growth conditions return.', 'macrophominaphaseolina', '<p>Macrophomina phaseolina is a generalist soil-borne fungus present all over the world. It cause diseases such as stem and root rot, charcoal rot and seedling blight. Under high temperatures and low soil moisture, this fungus can cause substantial yield losses in crops such as soybean, sorghum and groundnut.</p>', '2022-10-07 06:30:26', '2022-10-07 06:32:11'),
(42, 3, 10, 27, 'Colletotrichum corchorii', 'add', 'active', '50 kg', 500, 450, 1, 5, 23, 450, 427, 'storage\\products\\ed1f4a6b-69c2-4ba6-9cf1-69bcb2ad172e.png', 'Colletotrichum capsici is a species of fungus and plant pathogen which causes leaf blight on Chlorophytum borivilianum, basil, chickpea and pepper as well as dieback in pigeonpea and anthracnose in poinsettia.Soluta mollit praese.', 'colletotrichum', '<p>Colletotrichum capsici is a species of fungus and plant pathogen which causes leaf blight on Chlorophytum borivilianum, basil, chickpea and pepper as well as dieback in pigeonpea and anthracnose in poinsettia.Soluta mollit praese.</p>', '2022-10-07 06:34:11', '2022-10-07 06:34:11'),
(43, 3, 10, 27, 'Jute Sclerotium rolfsii', 'add', 'active', '50 kg', 500, 450, 1, 5, 23, 450, 427, 'storage\\products\\1f4b2178-5e44-4e30-9a77-74211a19de16.png', 'Sclerotia, is a compact mass of hardened fungal mycelium containing food reserves. One role of sclerotia is to survive environmental extremes. In some higher fungi such as ergot, sclerotia become detached and remain dormant until favorable growth conditions return.', 'sclerotium', '<p>Sclerotia, is a compact mass of hardened fungal mycelium containing food reserves. One role of sclerotia is to survive environmental extremes. In some higher fungi such as ergot, sclerotia become detached and remain dormant until favorable growth conditions return.</p>', '2022-10-07 06:35:09', '2022-10-07 06:35:09'),
(44, 3, 11, 28, 'Fodder cholam', 'add', 'active', '50 kg', 800, 750, 1, 5, 38, 750, 712, 'storage\\products\\d1ebe882-8e9c-4012-80db-a42a44dd911a.png', 'Fodder Cholam can be intercropped with CO 5 and COFC 8 Cowpea at 1:1 ratio and harvested together to provide nutritious fodder.', 'fodder-cholam', '<p>Fodder Cholam can be intercropped with CO 5 and COFC 8 Cowpea at 1:1 ratio and harvested together to provide nutritious fodder.</p>', '2022-10-07 06:41:01', '2022-10-07 06:41:01'),
(45, 3, 11, 28, 'Fodder Maize', 'add', 'active', '50 kg', 800, 650, 1, 5, 33, 650, 617, 'storage\\products\\95b09126-4a37-41c9-8b6e-76527bc16754.png', 'Maize is one of the most important  kharif crop of Asian countries, including India. Maize is also one of the best cereal fodder crop grown during summer, rainy and/or early winter  season. It requires warm and temperate climate and grows well on alluvial soils. ', 'fodder-maize  ', '<p>Maize is one of the most important&nbsp;kharif crop of Asian countries, including India. Maize is also one of the best cereal fodder crop grown during summer, rainy and/or early winter&nbsp;season. It requires warm and temperate climate and grows well on alluvial soils.&nbsp;</p>', '2022-10-07 08:57:14', '2022-10-07 08:57:14'),
(46, 3, 12, 29, 'Banana', 'add', 'active', '50 kg', 800, 750, 1, 4, 30, 750, 720, 'storage\\products\\c808c99b-8133-4ccb-bad2-1a6379398870.png', 'The banana plant, Musa paradisiaca, is the world\'s largest herbaceous perennial plant and belongs to the family Musaceae. It is grown for it\'s fleshy, curved banana fruit. The plant is tall, tropical and tree-like with a sturdy main pseudostem (not a true stem as it is made of rolled leaf bases) with the leaves arranged spirally at the top. The leaves are large blades with a pronounced central midrib and obvious veins.', 'banana', '<p>The banana plant, Musa paradisiaca, is the world\'s largest herbaceous perennial plant and belongs to the family Musaceae. It is grown for it\'s fleshy, curved banana fruit. The plant is tall, tropical and tree-like with a sturdy main pseudostem (not a true stem as it is made of rolled leaf bases) with the leaves arranged spirally at the top. The leaves are large blades with a pronounced central midrib and obvious veins.</p>', '2022-10-07 09:48:49', '2022-10-07 09:48:49'),
(47, 7, 17, 30, 'spray  Fluopyram', 'add', 'active', '50', 500, 450, 1, 5, 23, 450, 427, 'storage\\products\\38c77174-7730-4008-b188-06baa84800d5.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 'spray-fluopyram', '<p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.</span></p>', '2022-10-13 05:55:52', '2022-10-13 05:55:52'),
(48, 3, 17, 31, 'spray  Propiconazole', 'add', 'active', '50', 500, 450, 1, 5, 23, 450, 427, 'storage\\products\\b7f23470-f6ca-4a9e-bf88-3294fa5333d7.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', 'diseases', '<p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span></p>', '2022-10-13 09:59:57', '2022-10-13 09:59:57'),
(49, 3, 17, 32, 'spray  flusilazole', '', 'active', '50', 500, 450, 1, 5, 23, 450, 427, 'storage\\products\\b1430b44-0d0e-4961-8580-4831a50a6f5d.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', 'diseases', '<p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span></p>', '2022-10-13 10:04:06', '2022-10-13 10:04:06'),
(50, 3, 17, 33, 'spray copper oxychloride', 'add', 'active', '50', 500, 450, 1, 4, 18, 450, 432, 'storage\\products\\62a52896-76da-4b12-8917-3372a8d05fda.png', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 'diseases', '<p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.</span></p>', '2022-10-14 12:07:51', '2022-10-14 12:07:51'),
(51, 3, 18, 35, 'Mancozeb', 'add', 'active', '50', 500, 450, 1, 4, 18, 450, 432, 'storage\\products\\c1f69804-2826-4de7-b112-e243af9916c7.png', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 'diseases', '<p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.</span></p>', '2022-10-14 12:12:15', '2022-10-14 12:12:15'),
(52, 3, 18, 35, 'Spray Carbenda ', 'add', 'active', '50', 550, 450, 1, 4, 18, 450, 432, 'storage\\products\\6f7afe9e-7317-41d7-bcb3-28ae26ce7080.png', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 'diseases', '<p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.</span></p>', '2022-10-14 12:13:48', '2022-10-14 12:13:48'),
(53, 3, 18, 35, 'profenophos', 'add', 'active', '50', 500, 450, 1, 5, 23, 450, 427, 'storage\\products\\6951cd8c-a556-42b7-ae50-2b8d6b371af5.png', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 'diseases', '<p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.</span></p>', '2022-10-14 12:15:03', '2022-10-14 12:15:03'),
(54, 3, 18, 34, ' spray cloneem ', 'add', 'active', '50', 500, 450, 1, 4, 18, 450, 432, 'storage\\products\\f143bf24-1b2d-435b-89e4-0aa7199a25cc.png', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 'diseases', '<p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.</span></p>', '2022-10-14 12:16:08', '2022-10-14 12:16:08'),
(55, 3, 31, 77, 'Ethylene dibromide ', 'nn0', 'active', '5 kg', 600, 500, 1, 2, 10, 500, 490, 'storage\\products\\d3ba9dcf-b806-41c2-bb54-b3f7f6ce7863.png', 'null', 'ethylene-dibromide ', '', '2022-11-07 08:43:55', '2022-11-07 08:43:55'),
(56, 3, 31, 78, 'Bordeaux mixture ', 'bb1', 'active', '5 lit', 600, 500, 1, 1, 5, 500, 495, 'storage\\products\\0f5adcbc-12d7-43e6-8260-e6e76f4bcc00.png', 'null', 'bordeaux-mixture ', '', '2022-11-07 08:45:11', '2022-11-07 08:45:11'),
(57, 3, 9, 0, 'carbofuran ', 'test', 'active', '5 kg', 600, 650, 1, 2, 13, 650, 637, 'storage\\products\\f8fb7bd1-3273-4612-aa4f-1f2b2e166023.png', 'null', 'carbofuran', '', '2022-11-07 08:47:04', '2022-11-07 08:47:04'),
(58, 3, 29, 68, 'Carbendazim ', 'nn1', 'active', '5 kg', 500, 300, 1, 0, 0, 300, 300, 'storage\\products\\a3eed8c3-ebee-4e5a-acc5-18486d78559a.png', 'null', 'carbendazim', '', '2022-11-07 08:51:13', '2022-11-07 08:51:13'),
(59, 3, 28, 63, 'Copper oxychloride ', 'n2', 'active', '5 kg', 300, 400, 1, 2, 8, 400, 392, 'storage\\products\\e310fa30-5376-49f8-97fd-f3ab678f5623.png', 'null', 'copper-oxychloride ', '', '2022-11-07 09:04:34', '2022-11-07 09:04:34'),
(60, 3, 28, 65, 'spray Mancozeb at 2.5g/lit', 'test', 'active', '5 kg', 800, 750, 1, 2, 15, 750, 735, 'storage\\products\\19862cf0-0ae2-4fab-abd6-46a75f7b1724.png', 'dfghjk', 'spray-mancozeb ', '<p>derfgh</p>', '2022-11-07 09:28:14', '2022-11-07 09:28:14'),
(61, 3, 28, 64, 'Spray Carbendazim @ 2g/ kg ', 'test', 'active', '5 kg', 600, 500, 1, 1, 5, 500, 495, 'storage\\products\\46ff9422-db55-48ad-ae75-5f331febfbf0.png', 'gfnv', 'Spray Carbendazim @ 2g/ kg ', '<p>hghjg</p>', '2022-11-07 09:30:00', '2022-11-07 09:30:00'),
(62, 3, 28, 64, '4g Trichoderma viride ', 'test', 'active', '4 kg', 800, 700, 1, 2, 14, 700, 686, 'storage\\products\\b3ca0a15-62b5-4f73-b1a4-45ec9037a092.png', 'bkhkj', '4g Trichoderma viride ', '<p>jkhkj</p>', '2022-11-07 09:31:30', '2022-11-07 09:31:30'),
(63, 3, 28, 66, 'Spray 1ml Hexaconazole of water', 'test', 'active', '5 kg', 600, 700, 1, 3, 21, 700, 679, 'storage\\products\\819c2897-083e-4afc-8dc8-9bdb448471fa.png', 'null', 'Spray 1ml Hexaconazole of water', '', '2022-11-07 09:33:09', '2022-11-07 09:33:09'),
(64, 3, 28, 67, 'Spray with Mancozeb 0.25% ', 'test', 'active', '5 kg', 600, 650, 1, 1, 7, 650, 643, 'storage\\products\\77678f90-73bd-4193-87bb-d4bebdc82380.png', 'null', 'Spray with Mancozeb 0.25% ', '', '2022-11-07 09:35:38', '2022-11-07 09:35:38'),
(65, 3, 28, 66, 'Spray sulphur and chlorothalonil', 'test', 'active', '5 kg', 500, 450, 1, 2, 9, 450, 441, 'storage\\products\\a08772c5-a0d4-4717-9238-92f0d017c6cc.png', 'null', 'Spray sulphur and chlorothalonil', '', '2022-11-08 16:24:47', '2022-11-08 16:24:47'),
(66, 3, 28, 67, 'Spray monocroptophos and acephat 75%', 'test', 'active', '5 kg', 600, 550, 1, 2, 11, 550, 539, 'storage\\products\\7e677b67-5d15-463c-90f4-cbb475ba2c98.png', 'null', 'Spray monocroptophos and acephat 75%', '', '2022-11-08 16:25:56', '2022-11-08 16:25:56'),
(67, 3, 27, 60, 'Spray Carbendazim 250 g + Mancozeb 1000g/ha', 'test', 'active', '5 kg', 700, 700, 1, 1, 7, 700, 693, 'storage\\products\\6e573860-27e8-4a9e-ad3b-919804a82b2e.png', 'null', 'Spray Carbendazim 250 g + Mancozeb 1000g/ha', '', '2022-11-08 16:46:25', '2022-11-08 16:46:25'),
(68, 3, 27, 61, 'Spray Chlorothalonil 1000g /ha', 'test', 'active', '5 kg', 600, 600, 1, 1, 6, 600, 594, 'storage\\products\\eb3cd936-04a8-488d-80f1-70c05cbd783b.png', 'null', 'Spray Chlorothalonil 1000g /ha', '', '2022-11-08 16:48:43', '2022-11-08 16:48:43'),
(69, 3, 27, 61, 'spray Trichoderma viride @ 4 g/kg', 'test', 'active', '5 kg', 800, 800, 1, 1, 8, 800, 792, 'storage\\products\\d7e61144-0cd5-41eb-bbc1-fcd9f7df968f.png', 'null', 'spray Trichoderma viride @ 4 g/kg', '', '2022-11-08 16:50:11', '2022-11-08 16:50:11'),
(70, 3, 27, 62, 'spray Monocrotophos 36 WSC 500 ml/ha', 'test', 'active', '5 kg', 800, 800, 1, 1, 8, 800, 792, 'storage\\products\\f98c032b-ea41-4c73-9153-6b918b1561a0.png', 'null', 'spray Monocrotophos 36 WSC 500 ml/ha', '', '2022-11-08 16:51:32', '2022-11-08 16:51:32'),
(71, 3, 31, 77, 'soil application of Ethylene dibromide (EDB) @ 2-5 ml/m and DBCP @ 2 g/m', 'test', 'active', '5 kg', 800, 800, 1, 1, 8, 800, 792, 'storage\\products\\cdd3c4f5-f215-4bd0-bcf0-19ee29969d2e.png', 'null', 'soil application of Ethylene dibromide (EDB) @ 2-5 ml/m and DBCP @ 2 g/m', '', '2022-11-08 16:57:07', '2022-11-08 16:57:07'),
(72, 3, 31, 78, 'sprays with Bordeaux mixture 0.4% (4g/lit)', 'test', 'active', '5 kg', 800, 800, 1, 1, 8, 800, 792, 'storage\\products\\4891c823-bec2-49f6-b9ba-7089955551a0.png', 'null', 'sprays with Bordeaux mixture 0.4% (4g/lit)', '', '2022-11-08 16:58:49', '2022-11-08 16:58:49'),
(73, 3, 29, 68, 'Spray Carbendazim 1kg', 'test', 'active', '5 kg', 800, 800, 1, 1, 8, 800, 792, 'storage\\products\\19b0c6a1-2371-4c9b-8f4d-fe9e43f438f0.png', 'null', 'Spray Carbendazim 1kg', '', '2022-11-08 17:00:44', '2022-11-08 17:00:44'),
(74, 3, 29, 69, 'Spray Carbendazim at 4 g/kg.', 'test', 'active', '5 kg', 900, 850, 1, 3, 26, 850, 824, 'storage\\products\\edeef199-8521-49d1-944d-d8e6cc4b948e.png', 'null', 'Spray Carbendazim at 4 g/kg.', '', '2022-11-08 17:02:04', '2022-11-08 17:02:04'),
(75, 3, 29, 70, ' Carboxin or Oxycarboxin at 2 g/kg', 'test', 'active', '5 kg', 600, 600, 1, 2, 12, 600, 588, 'storage\\products\\64d708b3-773b-4181-ba30-ca80a485dc54.png', 'null', ' Carboxin or Oxycarboxin at 2 g/kg', '', '2022-11-08 17:03:04', '2022-11-08 17:03:04'),
(76, 3, 29, 71, 'Spray Mancozeb ', 'Spray Mancozeb ', 'active', '5 kg', 500, 600, 1, 1, 6, 600, 594, 'storage\\products\\ed043e78-cecf-4b08-b730-ecf695afd2c6.png', 'null', 'Spray Mancozeb ', '', '2022-11-08 17:04:29', '2022-11-08 17:04:29'),
(77, 3, 29, 72, 'Spray 0.1 % Carbendazim.', 'test', 'active', '5 kg', 600, 670, 1, 2, 13, 670, 657, 'storage\\products\\48207a13-f939-42b7-90c8-4a3fb11f8762.png', 'null', 'Spray 0.1 % Carbendazim.', '', '2022-11-08 17:05:53', '2022-11-08 17:05:53'),
(78, 3, 26, 57, 'spray Mancozeb 3%', 'test', 'active', '5 kg', 700, 800, 1, 2, 16, 800, 784, 'storage\\products\\e6f1d0b7-9cb9-4ebc-8964-6e60ef001cf9.png', 'null', 'spray Mancozeb 3%', '', '2022-11-08 17:08:00', '2022-11-08 17:08:00'),
(79, 3, 26, 58, 'Spray Mancozeb 1000 g/ha', 'test', 'active', '5 kg', 700, 700, 1, 1, 7, 700, 693, 'storage\\products\\bd2fee08-9435-4caf-acb0-aae70bb942ba.png', 'null', 'Spray Mancozeb 1000 g/ha', '', '2022-11-08 17:09:26', '2022-11-08 17:09:26'),
(80, 3, 26, 59, 'Spray  enviro 50ml in water', 'test', 'active', '5 kg', 900, 900, 1, 2, 18, 900, 882, 'storage\\products\\bc42f65d-7bf8-45fa-ab01-761a092f0980.png', 'null', 'Spray  enviro 50ml in water', '', '2022-11-08 17:11:33', '2022-11-08 17:11:33'),
(81, 3, 25, 53, 'Spray Mancozeb 2.5g/l ', 'test', 'active', '5 kg', 800, 800, 1, 1, 8, 800, 792, 'storage\\products\\1a25eadf-4753-4464-9e1a-b079be5e2a44.png', 'null', 'Spray Mancozeb 2.5g/l ', '', '2022-11-08 17:16:52', '2022-11-08 17:16:52'),
(82, 3, 25, 54, 'Spray Mancozeb or copper oxychloride at 2.5g/l', 'test', 'active', '5 kg', 800, 800, 1, 1, 8, 800, 792, 'storage\\products\\f4f519de-c47e-40d5-a27d-cc6eb3ab188d.png', 'null', 'Spray Mancozeb or copper oxychloride at 2.5g/l', '', '2022-11-08 17:18:33', '2022-11-08 17:18:33'),
(83, 3, 25, 55, 'Spray thiamethoxam 25% in water', 'test', 'active', '5 kg', 600, 600, 1, 2, 12, 600, 588, 'storage\\products\\c85da609-6f13-48ce-a951-fc7fdbaf307a.png', 'null', 'Spray thiamethoxam 25% in water', '', '2022-11-08 17:21:07', '2022-11-08 17:21:07'),
(84, 3, 25, 56, 'Spray Carbendazim 1g/lit  with T. viride 2.5 kg/ha', 'test', 'active', '5 kg', 900, 900, 1, 1, 9, 900, 891, 'storage\\products\\527ccbe6-15f2-44bd-9095-b5775b784ab4.png', 'null', 'Spray Carbendazim 1g/lit  with T. viride 2.5 kg/ha', '', '2022-11-08 17:23:33', '2022-11-08 17:23:33'),
(85, 3, 24, 51, 'chlorothalonil', 'test', 'active', '5 kg', 600, 600, 1, 1, 6, 600, 594, 'storage\\products\\c6c7c454-1a7c-474d-a3b8-008a7216ad00.png', 'null', 'chlorothalonil', '', '2022-11-08 17:29:02', '2022-11-08 17:29:02'),
(86, 3, 24, 52, ' Spray Metasystox 500 ml/ha ', 'test', 'active', '5 kg', 800, 800, 1, 1, 8, 800, 792, 'storage\\products\\bc64b2f7-cad1-4d5a-8b44-a5251b18d681.png', 'null', ' Spray Metasystox 500 ml/ha ', '', '2022-11-08 17:30:19', '2022-11-08 17:30:19'),
(87, 3, 23, 49, 'Soil drenching for copperoxychloride + chlorpyrifos', 'test', 'active', '5 kg', 900, 800, 1, 7, 56, 800, 744, 'storage\\products\\9c2e727d-b949-4243-bc94-59abc266942f.png', 'null', 'Soil drenching for copperoxychloride + chlorpyrifos', '', '2022-11-08 17:32:17', '2022-11-08 17:32:17'),
(88, 3, 23, 50, 'Spray Carbendazim 1 g/ litre in water', 'test', 'active', '5 kg', 900, 800, 1, 1, 8, 800, 792, 'storage\\products\\45f92c02-58b8-46cf-b660-5801e871d941.png', 'null', 'Spray Carbendazim 1 g/ litre in water', '', '2022-11-08 17:35:30', '2022-11-08 17:35:30'),
(89, 3, 22, 46, 'Spray Mancozeb 2g/lit', 'test', 'active', '5 kg', 600, 700, 1, 1, 7, 700, 693, 'storage\\products\\23a1914a-b296-4f35-8b81-ae3215906726.png', 'null', 'Spray Mancozeb 2g/lit', '', '2022-11-08 17:36:53', '2022-11-08 17:36:53'),
(90, 3, 22, 47, 'Spray Carbendazim 500 g/ha', 'test', 'active', '5 kg', 900, 900, 1, 2, 18, 900, 882, 'storage\\products\\0fe42f50-28a0-4269-811a-80d1d438d3b4.png', 'null', 'Spray Carbendazim 500 g/ha', '', '2022-11-08 17:38:18', '2022-11-08 17:38:18'),
(91, 3, 22, 48, 'Spray Vitavax @ 2g/kg ', 'test', 'active', '5 kg', 800, 900, 1, 0, 0, 900, 900, 'storage\\products\\b80d68df-f651-4fbe-93b4-246d7e6230da.png', 'null', 'Spray Vitavax @ 2g/kg ', '', '2022-11-08 17:39:34', '2022-11-08 17:39:34'),
(92, 3, 30, 73, 'Soil application of carbofuran @2.0 kg./ha', 'test', 'active', '5 kg', 800, 800, 1, 3, 24, 800, 776, 'storage\\products\\750471d5-ceb6-4ad9-bc46-86959a2dd21d.png', 'null', 'Soil application of carbofuran @2.0 kg./ha', '', '2022-11-09 08:19:52', '2022-11-09 08:19:52'),
(93, 3, 30, 74, 'Spray Carbendazim 1gm in 1 litre of water', 'test', 'active', '5 kg', 900, 900, 1, 2, 18, 900, 882, 'storage\\products\\7e9c164b-df7a-4d74-9779-3a8a97fe86a7.png', 'null', 'Spray Carbendazim 1gm in 1 litre of water', '', '2022-11-09 08:21:46', '2022-11-09 08:21:46'),
(94, 3, 30, 75, 'Apply carbendazim @ 2gm/lit of water at the root zone area', 'test', 'active', '5 kg', 600, 600, 1, 2, 12, 600, 588, 'storage\\products\\156db065-a2ca-4f8d-9a99-128dddae7aa3.png', 'null', 'Apply carbendazim @ 2gm/lit of water at the root zone area', '', '2022-11-09 08:22:51', '2022-11-09 08:22:51'),
(95, 3, 30, 76, 'Spray dimethoate @ 1ml in 1 litre of water', 'test', 'active', '5 kg', 700, 700, 1, 2, 14, 700, 686, 'storage\\products\\f6a7aa09-7618-4695-b0ce-9b924e059a74.png', 'null', 'Spray dimethoate @ 1ml in 1 litre of water', '', '2022-11-09 08:23:59', '2022-11-09 08:23:59');

-- --------------------------------------------------------

--
-- Table structure for table `products_old`
--

CREATE TABLE `products_old` (
  `id` int(11) NOT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `subCategoryId` int(11) DEFAULT NULL,
  `childCategoryId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `unitSize` varchar(255) DEFAULT NULL,
  `buyerPrice` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `discountPer` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `netPrice` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `sortDesc` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_old`
--

INSERT INTO `products_old` (`id`, `categoryId`, `subCategoryId`, `childCategoryId`, `name`, `brand`, `status`, `unitSize`, `buyerPrice`, `price`, `qty`, `discountPer`, `discount`, `total`, `netPrice`, `photo`, `sortDesc`, `slug`, `desc`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, 1, 'Product 1', 'a', 'active', '12', 1000, 500, 1, 8, 40, 500, 460, 'storage\\products\\c37b095f-70e0-42a8-81e0-964f16049217.jpeg', 'csdvsdv', 'product-1', '<p><span style=\"color: rgb(32, 33, 36);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>', '2022-09-21 12:21:16', '2022-09-22 07:21:41'),
(2, 2, 4, 2, 'Product 1', 'a', 'active', '50 kg', 1000, 500, 1, 5, 25, 500, 475, 'storage\\products\\6c26c835-ac02-4c49-b2f7-5fb5a72c19a7.png', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'product-1', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</p>', '2022-09-22 06:43:25', '2022-09-22 06:45:26'),
(3, 2, 4, 2, 'product 3', 'add', 'active', '50 kg', 1000, 500, 1, 5, 25, 500, 475, 'storage\\products\\e90167ed-04c4-4d75-8341-8af209006d8a.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'product-3', '<p><span style=\"color: rgb(32, 33, 36);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>', '2022-09-22 06:47:01', '2022-09-22 06:47:01'),
(4, 2, 4, 2, 'Product 4', 'add', 'active', '50 kg', 1000, 500, 1, 5, 25, 500, 475, 'storage\\products\\4dbe3608-dc97-4706-983a-ef29028f06b8.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'product-4', '<p><span style=\"color: rgb(32, 33, 36);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>', '2022-09-22 06:47:57', '2022-09-22 06:47:57'),
(5, 2, 4, 2, 'Product 5', 'add', 'active', '50 kg', 1000, 500, 1, 5, 25, 500, 475, 'storage\\products\\69dc3ef2-3ce4-4e83-9d6b-7f00b5f63f6b.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'product-5', '<p><span style=\"color: rgb(32, 33, 36);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>', '2022-09-22 06:48:38', '2022-09-22 06:48:38'),
(6, 2, 4, 3, 'Muskelon   ', 'add', 'active', '50 kg', 500, 400, 1, 6, 24, 400, 376, 'storage\\products\\8d339d89-3a6f-4242-8e64-496123a53b1d.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'muskelon   ', '<p><span style=\"color: rgb(32, 33, 36);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>', '2022-09-22 06:50:23', '2022-09-22 06:50:23'),
(7, 2, 4, 3, 'Custard apple', 'add', 'active', '50 kg', 500, 460, 1, 5, 23, 460, 437, 'storage\\products\\67da230b-592b-48fe-bd1d-6d40cf1acb10.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'custard-apple', '<p><span style=\"color: rgb(32, 33, 36);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>', '2022-09-22 06:55:53', '2022-09-22 06:55:53'),
(8, 2, 4, 4, 'Lotus Seed', 'add', 'active', '50 kg', 500, 450, 1, 5, 23, 450, 427, 'storage\\products\\663bd9e5-6380-43de-b60a-3c9794818950.webp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'lotus-seed', '<p><span style=\"color: rgb(32, 33, 36);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>', '2022-09-22 07:07:07', '2022-09-22 07:07:07'),
(9, 2, 4, 4, 'Rose Seed', 'add', 'active', '50 kg', 500, 450, 1, 4, 18, 450, 432, 'storage\\products\\751285c8-1bad-40cc-a675-5d2de0864424.webp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'rose-seed', '<p><span style=\"color: rgb(32, 33, 36);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>', '2022-09-22 07:08:14', '2022-09-22 07:08:14'),
(10, 2, 4, 4, 'Marigold Seed', 'add', 'active', '50 kg', 500, 450, 1, 3, 14, 450, 436, 'storage\\products\\221ab546-376c-4ae9-bca4-f2cea2db093b.webp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'marigold-seed', '<p><span style=\"color: rgb(32, 33, 36);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>', '2022-09-22 07:09:08', '2022-09-22 07:09:08'),
(11, 2, 4, 4, 'Sunflower Seed', 'add', 'active', '50 kg', 500, 450, 1, 4, 18, 450, 432, 'storage\\products\\ad285188-e654-49b2-9866-f980f88c943b.webp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'sunflower-seed', '<p><span style=\"color: rgb(32, 33, 36);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>', '2022-09-22 07:10:00', '2022-09-22 07:10:00'),
(12, 2, 5, 5, 'Corn Seeds', 'add', 'active', '50 kg', 1500, 1000, 1, 10, 100, 1000, 900, 'storage\\products\\eabb1f90-5079-4276-8ff4-1c5ad6c51f2c.webp', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'corn', '<p><span style=\"color: rgb(0, 0, 0);\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>', '2022-09-23 10:17:19', '2022-09-23 10:17:19'),
(13, 2, 5, 7, 'Cotton  Seeds', 'add', 'active', '50 kg', 800, 600, 1, 8, 48, 600, 552, 'storage\\products\\a338cbe1-352f-433f-880a-98f7c81e8fb2.png', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'cotton', '<p><span style=\"color: rgb(0, 0, 0);\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>', '2022-09-23 10:27:35', '2022-09-23 10:27:35'),
(14, 2, 5, 8, 'Jowar Seeds', 'add', 'active', '50 kg', 800, 650, 1, 5, 33, 650, 617, 'storage\\products\\607b3946-78f0-46b1-9029-489b5c375ad7.jpeg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'jowar', '<p><span style=\"color: rgb(0, 0, 0);\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>', '2022-09-23 10:29:12', '2022-09-23 10:29:12'),
(15, 2, 5, 6, 'Paddy Seeds', 'add', 'active', '50 kg', 800, 600, 1, 6, 36, 600, 564, 'storage\\products\\fd7eb4cb-eb8f-4e58-ac1b-cf1c07f04c9b.webp', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'paddy', '<p><span style=\"color: rgb(0, 0, 0);\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>', '2022-09-23 11:00:28', '2022-09-23 11:00:28'),
(16, 2, 6, 9, 'Coconut ', 'add', 'active', '50', 1500, 1000, 1, 5, 50, 1000, 950, 'storage\\products\\67a71815-d0aa-4f42-861e-fd29e70ad4c4.jpeg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'coconut', '<p><span style=\"color: rgb(0, 0, 0);\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>', '2022-09-23 12:35:40', '2022-09-23 12:35:40'),
(18, 2, 6, 10, 'Papaya', 'add', 'active', '50 kg', 900, 700, 1, 5, 35, 700, 665, 'storage\\products\\6594c22b-93db-4a49-9f9d-a9685d256884.jpeg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'papaya', '<p><span style=\"color: rgb(0, 0, 0);\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span></p>', '2022-09-23 12:39:11', '2022-09-23 12:39:11'),
(19, 1, 1, 14, 'Manure', 'add', 'active', '50 kg', 2500, 2000, 1, 4, 80, 2000, 1920, 'storage\\products\\6e2d3fa4-1969-454d-8f26-782fdaacdfac.jpeg', 'It is made from animal excreta(cow dung & goat droppings). Cattle Manure is a good source of nitrogen and organic carbon while goat manure is rich in nitrogen and potash.', 'manure', '<p>It is made from animal excreta(cow dung &amp; goat droppings). Cattle Manure is a good source of nitrogen and organic carbon while goat manure is rich in nitrogen and potash.</p><p><br></p>', '2022-09-26 08:45:24', '2022-09-26 08:45:24'),
(20, 1, 1, 15, 'Compost', 'add', 'active', '500 kg', 2500, 2000, 1, 5, 100, 2000, 1900, 'storage\\products\\b423d64d-b530-4f56-a5dc-58519fb56d21.jpeg', 'It is organic matter decomposed through composting. The organic matter used here can be vegetable and plant waste, animal excreta.', 'compost', '<p>It is organic matter decomposed through composting. The organic matter used here can be vegetable and plant waste, animal excreta.</p><p><br></p>', '2022-09-26 08:55:14', '2022-09-26 08:55:14'),
(22, 1, 1, 16, 'Chicken Litter', '', 'active', '500 kg', 2000, 1900, 1, 5, 95, 1900, 1805, 'storage\\products\\7cc53fd6-8acb-4bd4-a617-84cd9a2ad07f.jpeg', 'It consists of chicken manure and sawdust. It has high levels of nitrogen and potash. Consider superior for conditioning of soil for harvest than chemical fertilizers', 'chicken-litter', '<p>It consists of chicken manure and sawdust. It has high levels of nitrogen and potash. Consider superior for conditioning of soil for harvest than chemical fertilizers</p><p><br></p>', '2022-09-26 09:03:58', '2022-09-26 09:03:58'),
(23, 1, 1, 17, 'Bone Meal', 'add', 'active', '500 kg', 2000, 1800, 1, 5, 90, 1800, 1710, 'storage\\products\\261837a8-5364-48d7-afbd-cab885cdf552.jpeg', 'It is a mix of ground slaughter house waste products like animal bones. It is a very good source of phosphorous and amino acids. Being organic it is also a slow release fertilizer.', 'bone-meal', '<p>It is a mix of ground slaughter house waste products like animal bones. It is a very good source of phosphorous and amino acids. Being organic it is also a slow release fertilizer.</p><p><br></p>', '2022-09-26 09:20:16', '2022-09-26 09:20:16'),
(24, 1, 1, 18, 'Vermicompost', 'add', 'active', '500 kg', 2500, 2300, 1, 5, 115, 2300, 2185, 'storage\\products\\61ea4a81-aa45-4d24-8da1-84e73b4664e7.jpeg', 'It is a product of organic material degradation using various species of worms, to create a heterogeneous mixture of decomposing food waste.', 'vermicompost', '<p>It is a product of organic material degradation using various species of worms, to create a heterogeneous mixture of decomposing food waste.</p><p><br></p>', '2022-09-26 09:21:16', '2022-09-26 09:21:16'),
(25, 1, 2, 19, 'Nitrogen Fertilizers', 'add', 'active', '500 kg', 2000, 1500, 1, 10, 150, 1500, 1350, 'storage\\products\\a1633f6f-2eff-4e6c-82ae-f06c8a7ebca1.jpeg', 'Inorganic nitrogen fertilizers come in many different forms, such as ammonium nitrate, potassium nitrate, calcium nitrate and urea. These fertilizers contain high levels of nitrogen, one of the most vital nutrients for plant growth. However, these inorganic fertilizers tend to increase the pH of the soil upon application, increasing the chances of burn and damage to seedlings. Others pull moisture from the air, making them difficult to apply and store.', 'nitrogen-fertilizers', '<p><span style=\"color: rgb(34, 34, 34);\">Inorganic nitrogen fertilizers come in many different forms, such as ammonium nitrate, potassium nitrate, calcium nitrate and urea. These fertilizers contain high levels of nitrogen, one of the most vital nutrients for plant growth. However, these inorganic fertilizers tend to increase the pH of the soil upon application, increasing the chances of burn and damage to seedlings. Others pull moisture from the air, making them difficult to apply and store.</span></p>', '2022-09-27 12:24:51', '2022-09-27 12:24:51'),
(26, 1, 2, 20, 'Potassium Fertilizers', 'add', 'active', '500 kg', 2000, 1500, 1, 5, 75, 1500, 1425, 'storage\\products\\13538783-712e-418e-bb42-26d769232393.jpeg', 'Inorganic potassium fertilizers include potassium sulfate and potassium nitrate, as well as muriate of potash, also known as potassium chloride. Muriate of potash is the most commonly used potassium fertilizer. In some cases, plants may be sensitive to chloride. If a plant is sensitive to chloride, potassium sulfate, also known as sulfate of potash, is a better choice, as it does not contain chloride. Potassium nitrate is easy to apply, because it does not pull moisture from the air, but it does slightly increase the pH of the soil upon application.', 'potassium-fertilizers', '<p><span style=\"color: rgb(34, 34, 34);\">Inorganic potassium fertilizers include potassium sulfate and potassium nitrate, as well as muriate of potash, also known as potassium chloride. Muriate of potash is the most commonly used potassium fertilizer. In some cases, plants may be sensitive to chloride. If a plant is sensitive to chloride, potassium sulfate, also known as sulfate of potash, is a better choice, as it does not contain chloride. Potassium nitrate is easy to apply, because it does not pull moisture from the air, but it does slightly increase the pH of the soil upon application.</span></p>', '2022-09-27 12:26:37', '2022-09-27 12:26:37'),
(27, 1, 2, 21, 'Phosphorus Fertilizers', 'add', 'active', '500 kg', 2000, 1700, 1, 10, 170, 1700, 1530, 'storage\\products\\f96c72a7-0c31-4cec-af37-03a1e8bca82f.jpeg', 'Inorganic phosphorus fertilizers such as rock phosphate remain in the soil years after the initial application. Rock phosphate works only in acidic soils, as the nutrients do not break down for plants in neutral or alkaline soils. Superphosphates are other forms of phosphorus fertilizer. These do not affect the pH of the soil upon application, while ammonium phosphates come in water-soluble, granular forms.', 'phosphorus-fertilizers', '<p><span style=\"color: rgb(34, 34, 34);\">Inorganic phosphorus fertilizers such as rock phosphate remain in the soil years after the initial application. Rock phosphate works only in acidic soils, as the nutrients do not break down for plants in neutral or alkaline soils. Superphosphates are other forms of phosphorus fertilizer. These do not affect the pH of the soil upon application, while ammonium phosphates come in water-soluble, granular forms.</span></p>', '2022-09-27 12:27:37', '2022-09-27 12:27:37'),
(28, 1, 3, 22, 'WSF 19-19-19', 'add', 'active', '500 kg', 1500, 1300, 1, 6, 78, 1300, 1222, 'storage\\products\\e9e824dd-cd5e-4653-95a5-54b96ea039e8.jpeg', 'Maintains NPK nutrient balance\r\nInstant uptake of nutrients by plants\r\nPrompts root & shoot development\r\nContains Mg, Zn, Fe, Co, Mn, B, Mo\r\nBeing acidic helps in maintaining drippers free of salts in drip irrigation system.', 'WSF', '<ul><li>Maintains NPK nutrient balance</li><li>Instant uptake of nutrients by plants</li><li>Prompts root &amp; shoot development</li><li>Contains Mg, Zn, Fe, Co, Mn, B, Mo</li><li>Being acidic helps in maintaining drippers free of salts in drip irrigation system.</li></ul><p><br></p>', '2022-09-27 12:38:35', '2022-09-27 12:38:35'),
(29, 1, 3, 22, 'WSF 0-52-34', 'add', 'active', '500 kg', 2000, 1500, 1, 5, 75, 1500, 1425, 'storage\\products\\cf40e85f-e496-4ba7-b7a4-2735a656451b.jpeg', 'Chloride-free, lowest salt index – prevents clogging of drip\r\nImproves fruit size, luster, uniform colour and taste of fruit & yield\r\nImproves resistance to adverse weather and pests\r\nPromote flowering & fruit settings\r\nReduces flower & fruit dropping', 'WSF-0-52-34', '<ul><li>Chloride-free, lowest salt index – prevents clogging of drip</li><li>Improves fruit size, luster, uniform colour and taste of fruit &amp; yield</li><li>Improves resistance to adverse weather and pests</li><li>Promote flowering &amp; fruit settings</li><li>Reduces flower &amp; fruit dropping</li></ul><p><br></p>', '2022-09-27 13:00:18', '2022-09-27 13:00:18'),
(30, 1, 3, 22, 'WSF 17-44-0', 'add', 'active', '500 kg', 2000, 1500, 1, 5, 75, 1500, 1425, 'storage\\products\\dcb28a3d-343f-454a-bcb1-496c9207a1cc.jpeg', 'Best replacement of DAP\r\nEconomic source of ‘P’\r\nReduces ‘N’ volatilisation\r\nGives impressive increase in yield & quality of crop\r\nHelps to un-clog the drippers of MIS\r\nBeing acidic, it neutralises the pH of alkaline soil & enhances efficiency of nutrients applie', 'WSF-17-44-0', '<ul><li>Best replacement of DAP</li><li>Economic source of ‘P’</li><li>Reduces ‘N’ volatilisation</li><li>Gives impressive increase in yield &amp; quality of crop</li><li>Helps to un-clog the drippers of MIS</li><li>Being acidic, it neutralises the pH of alkaline soil &amp; enhances efficiency of nutrients applie</li></ul><p><br></p>', '2022-09-27 13:02:46', '2022-09-27 13:02:46'),
(31, 1, 3, 22, 'WSF 13-0-45', 'add', 'active', '500 kg', 2000, 1500, 1, 5, 75, 1500, 1425, 'storage\\products\\26dec67f-12d2-45f6-b041-3a0e00af1a2a.jpeg', 'N in nitrate form – readily available plus a rich source of potash\r\nHelps in formation of sugar during fruit setting\r\nReduces dropping of immature fruits\r\nImproves shape, size and quality of fruits/seeds\r\nHelps in uptake of Ca, Mg & K by crops\r\nLess hygroscopic', 'WSF-13-0-45', '<ul><li>N in nitrate form – readily available plus a rich source of potash</li><li>Helps in formation of sugar during fruit setting</li><li>Reduces dropping of immature fruits</li><li>Improves shape, size and quality of fruits/seeds</li><li>Helps in uptake of Ca, Mg &amp; K by crops</li><li>Less hygroscopic</li></ul><p><br></p>', '2022-09-27 13:03:45', '2022-09-27 13:03:45'),
(32, 1, 3, 22, 'WSF 12-61-0', 'add', 'active', '500 kg', 2000, 1500, 1, 5, 75, 1500, 1425, 'storage\\products\\63dc2f2c-d28f-4dc7-89e4-324b1fe2b598.jpeg', 'Highly concentrated source of P along with N\r\nHelps in fast and healthy vegetative & root growth\r\nLess hygroscopic and hence can be applied with other fertilizers\r\nLow salt index – free from Na & Cl\r\nImproves uptake of other nutrients', 'WSF-12-61-0', '<ul><li>Highly concentrated source of P along with N</li><li>Helps in fast and healthy vegetative &amp; root growth</li><li>Less hygroscopic and hence can be applied with other fertilizers</li><li>Low salt index – free from Na &amp; Cl</li><li>Improves uptake of other nutrients</li></ul><p><br></p>', '2022-09-27 13:04:41', '2022-09-27 13:04:41'),
(33, 1, 3, 22, 'WSF 0-0-50', 'add', 'active', '500 kg', 2000, 1500, 1, 5, 75, 1500, 1425, 'storage\\products\\628f44b0-0df1-45a4-91ac-4d7a64a2c2ab.jpeg', 'Cheapest source of K (Chloride-free)\r\nAlso contains 18% S\r\nIncreases shelf life of the crop post-harvest\r\nIncreases resistance against pest, diseases and abiotic stress', 'WSF-0-0-50', '<ul><li>Cheapest source of K (Chloride-free)</li><li>Also contains 18% S</li><li>Increases shelf life of the crop post-harvest</li><li>Increases resistance against pest, diseases and abiotic stress</li></ul><p><br></p>', '2022-09-27 13:05:30', '2022-09-27 13:05:30'),
(34, 1, 3, 22, 'WSF 13-40-13', 'add', 'active', '500 kg', 2000, 1500, 1, 5, 75, 1500, 1425, 'storage\\products\\9b2c6107-11ec-4784-b54c-8f940ac7f85a.jpeg', 'Fosters plant rooting and blossoming\r\nHas an acid pH to prevent scale formation in irrigation systems\r\nPromotes crop growth by stimulating new root development\r\nReduces flower drop, increases fruit setting and increases yield and quality of the produce.\r\nUseful at early flowering, early fruit formation and fruit development stages, where the requirement of crops for P is more and less for N and K\r\nEnriched with micronutrients', 'WSF-13-40-13', '<ul><li>Fosters plant rooting and blossoming</li><li>Has an acid pH to prevent scale formation in irrigation systems</li><li>Promotes crop growth by stimulating new root development</li><li>Reduces flower drop, increases fruit setting and increases yield and quality of the produce.</li><li>Useful at early flowering, early fruit formation and fruit development stages, where the requirement of crops for P is more and less&nbsp;for N and K</li><li>Enriched with micronutrients</li></ul><p><br></p>', '2022-09-27 13:06:24', '2022-09-27 13:06:24'),
(35, 1, 3, 22, 'Calcium Nitrate', 'add', 'active', '500 kg', 2000, 1500, 1, 5, 75, 1500, 1425, 'storage\\products\\aca6e3ac-910d-4315-bdbf-1321da68963b.jpeg', 'Contains 100% soluble calcium\r\nN in nitrate form – preferred for fruit & field crops\r\nImproves strength of cell wall – increasing shelf life of marketable produce\r\nCorrects Calcium deficiencies\r\n', 'calcium-nitrate', '<ul><li>Contains 100% soluble calcium</li><li>N in nitrate form – preferred for fruit &amp; field crops</li><li>Improves strength of cell wall – increasing shelf life of marketable produce</li><li>Corrects Calcium deficiencies</li></ul><p><br></p>', '2022-09-27 13:07:57', '2022-09-27 13:07:57'),
(36, 1, 3, 22, 'Boronated Calcium Nitrate', 'add', 'active', '500 kg', 2000, 1500, 1, 5, 75, 1500, 1425, 'storage\\products\\9042c9f6-1c03-49f3-a253-10406ff745b1.png', 'Contains 100% soluble Ca & B\r\nN in nitrate form-preferred for fruit & field crops\r\nBoron helps in cell wall formation, Ca improves the strength of cell wall – increasing strength & quality of produce\r\nCorrects Calcium & Boron deficiency', 'boronated-calcium', '<ul><li>Contains 100% soluble Ca &amp; B</li><li>N in nitrate form-preferred for fruit &amp; field crops</li><li>Boron helps in cell wall formation, Ca improves the strength of cell wall – increasing strength &amp; quality of produce</li><li>Corrects Calcium &amp; Boron deficiency</li></ul><p><br></p>', '2022-09-27 13:10:18', '2022-09-27 13:10:18'),
(37, 1, 3, 22, 'Boronated Calcium Nitrate Liquid', 'add', 'active', '500 kg', 2000, 1500, 1, 5, 75, 1500, 1425, 'storage\\products\\f5bf974e-64bf-4951-844a-a0b1fc26decf.png', 'Contains 100% soluble Calcium and Boron\r\nNitrogen in nitrate form-preferred for fruit & field crops\r\nBoron helps in cell wall formation\r\nCalcium improves the strength of cell wall – increasing strength & quality of produce\r\nCorrects Calcium & Boron deficiency', 'BCNL', '<ul><li>Contains 100% soluble Calcium and Boron</li><li>Nitrogen in nitrate form-preferred for fruit &amp; field crops</li><li>Boron helps in cell wall formation</li><li>Calcium improves the strength of cell wall – increasing strength &amp; quality of produce</li><li>Corrects Calcium &amp; Boron deficiency</li></ul>', '2022-09-27 13:13:19', '2022-09-27 13:13:19'),
(41, 3, 10, 27, 'Macrophominaphaseolina', 'add', 'active', '50', 500, 450, 1, 5, 23, 450, 427, 'storage\\products\\04effbc3-a680-4a5e-9f69-5e01acaed0f9.png', 'Sclerotia, is a compact mass of hardened fungal mycelium containing food reserves. One role of sclerotia is to survive environmental extremes. In some higher fungi such as ergot, sclerotia become detached and remain dormant until favorable growth conditions return.', 'macrophominaphaseolina', '<p>Macrophomina phaseolina is a generalist soil-borne fungus present all over the world. It cause diseases such as stem and root rot, charcoal rot and seedling blight. Under high temperatures and low soil moisture, this fungus can cause substantial yield losses in crops such as soybean, sorghum and groundnut.</p>', '2022-10-07 06:30:26', '2022-10-07 06:32:11'),
(42, 3, 10, 27, 'Colletotrichum corchorii', 'add', 'active', '50 kg', 500, 450, 1, 5, 23, 450, 427, 'storage\\products\\ed1f4a6b-69c2-4ba6-9cf1-69bcb2ad172e.png', 'Colletotrichum capsici is a species of fungus and plant pathogen which causes leaf blight on Chlorophytum borivilianum, basil, chickpea and pepper as well as dieback in pigeonpea and anthracnose in poinsettia.Soluta mollit praese.', 'colletotrichum', '<p>Colletotrichum capsici is a species of fungus and plant pathogen which causes leaf blight on Chlorophytum borivilianum, basil, chickpea and pepper as well as dieback in pigeonpea and anthracnose in poinsettia.Soluta mollit praese.</p>', '2022-10-07 06:34:11', '2022-10-07 06:34:11'),
(43, 3, 10, 27, 'Jute Sclerotium rolfsii', 'add', 'active', '50 kg', 500, 450, 1, 5, 23, 450, 427, 'storage\\products\\1f4b2178-5e44-4e30-9a77-74211a19de16.png', 'Sclerotia, is a compact mass of hardened fungal mycelium containing food reserves. One role of sclerotia is to survive environmental extremes. In some higher fungi such as ergot, sclerotia become detached and remain dormant until favorable growth conditions return.', 'sclerotium', '<p>Sclerotia, is a compact mass of hardened fungal mycelium containing food reserves. One role of sclerotia is to survive environmental extremes. In some higher fungi such as ergot, sclerotia become detached and remain dormant until favorable growth conditions return.</p>', '2022-10-07 06:35:09', '2022-10-07 06:35:09'),
(44, 3, 11, 28, 'Fodder cholam', 'add', 'active', '50 kg', 800, 750, 1, 5, 38, 750, 712, 'storage\\products\\d1ebe882-8e9c-4012-80db-a42a44dd911a.png', 'Fodder Cholam can be intercropped with CO 5 and COFC 8 Cowpea at 1:1 ratio and harvested together to provide nutritious fodder.', 'fodder-cholam', '<p>Fodder Cholam can be intercropped with CO 5 and COFC 8 Cowpea at 1:1 ratio and harvested together to provide nutritious fodder.</p>', '2022-10-07 06:41:01', '2022-10-07 06:41:01'),
(45, 3, 11, 28, 'Fodder Maize', 'add', 'active', '50 kg', 800, 650, 1, 5, 33, 650, 617, 'storage\\products\\95b09126-4a37-41c9-8b6e-76527bc16754.png', 'Maize is one of the most important  kharif crop of Asian countries, including India. Maize is also one of the best cereal fodder crop grown during summer, rainy and/or early winter  season. It requires warm and temperate climate and grows well on alluvial soils. ', 'fodder-maize  ', '<p>Maize is one of the most important&nbsp;kharif crop of Asian countries, including India. Maize is also one of the best cereal fodder crop grown during summer, rainy and/or early winter&nbsp;season. It requires warm and temperate climate and grows well on alluvial soils.&nbsp;</p>', '2022-10-07 08:57:14', '2022-10-07 08:57:14'),
(46, 3, 12, 29, 'Banana', 'add', 'active', '50 kg', 800, 750, 1, 4, 30, 750, 720, 'storage\\products\\c808c99b-8133-4ccb-bad2-1a6379398870.png', 'The banana plant, Musa paradisiaca, is the world\'s largest herbaceous perennial plant and belongs to the family Musaceae. It is grown for it\'s fleshy, curved banana fruit. The plant is tall, tropical and tree-like with a sturdy main pseudostem (not a true stem as it is made of rolled leaf bases) with the leaves arranged spirally at the top. The leaves are large blades with a pronounced central midrib and obvious veins.', 'banana', '<p>The banana plant, Musa paradisiaca, is the world\'s largest herbaceous perennial plant and belongs to the family Musaceae. It is grown for it\'s fleshy, curved banana fruit. The plant is tall, tropical and tree-like with a sturdy main pseudostem (not a true stem as it is made of rolled leaf bases) with the leaves arranged spirally at the top. The leaves are large blades with a pronounced central midrib and obvious veins.</p>', '2022-10-07 09:48:49', '2022-10-07 09:48:49'),
(47, 7, 17, 30, 'spray  Fluopyram', 'add', 'active', '50', 500, 450, 1, 5, 23, 450, 427, 'storage\\products\\38c77174-7730-4008-b188-06baa84800d5.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 'spray-fluopyram', '<p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.</span></p>', '2022-10-13 05:55:52', '2022-10-13 05:55:52'),
(48, 3, 17, 31, 'spray  Propiconazole', 'add', 'active', '50', 500, 450, 1, 5, 23, 450, 427, 'storage\\products\\b7f23470-f6ca-4a9e-bf88-3294fa5333d7.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', 'diseases', '<p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span></p>', '2022-10-13 09:59:57', '2022-10-13 09:59:57'),
(49, 3, 17, 32, 'spray  flusilazole', '', 'active', '50', 500, 450, 1, 5, 23, 450, 427, 'storage\\products\\b1430b44-0d0e-4961-8580-4831a50a6f5d.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', 'diseases', '<p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span></p>', '2022-10-13 10:04:06', '2022-10-13 10:04:06'),
(50, 3, 17, 33, 'spray copper oxychloride', 'add', 'active', '50', 500, 450, 1, 4, 18, 450, 432, 'storage\\products\\62a52896-76da-4b12-8917-3372a8d05fda.png', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 'diseases', '<p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.</span></p>', '2022-10-14 12:07:51', '2022-10-14 12:07:51'),
(51, 3, 18, 35, 'Mancozeb', 'add', 'active', '50', 500, 450, 1, 4, 18, 450, 432, 'storage\\products\\c1f69804-2826-4de7-b112-e243af9916c7.png', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 'diseases', '<p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.</span></p>', '2022-10-14 12:12:15', '2022-10-14 12:12:15'),
(52, 3, 18, 35, 'Spray Carbenda ', 'add', 'active', '50', 550, 450, 1, 4, 18, 450, 432, 'storage\\products\\6f7afe9e-7317-41d7-bcb3-28ae26ce7080.png', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 'diseases', '<p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.</span></p>', '2022-10-14 12:13:48', '2022-10-14 12:13:48'),
(53, 3, 18, 35, 'profenophos', 'add', 'active', '50', 500, 450, 1, 5, 23, 450, 427, 'storage\\products\\6951cd8c-a556-42b7-ae50-2b8d6b371af5.png', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 'diseases', '<p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.</span></p>', '2022-10-14 12:15:03', '2022-10-14 12:15:03'),
(54, 3, 18, 34, ' spray cloneem ', 'add', 'active', '50', 500, 450, 1, 4, 18, 450, 432, 'storage\\products\\f143bf24-1b2d-435b-89e4-0aa7199a25cc.png', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 'diseases', '<p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.</span></p>', '2022-10-14 12:16:08', '2022-10-14 12:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20200613173828-create-user.js'),
('20200621141549-create-category.js'),
('20200622174557-add-column-user.js'),
('20200708120626-create-product-offer.js'),
('20200713195253-create-sub-category.js'),
('20200717174011-create-sub-child-category.js'),
('20200730084936-add-column-category.js'),
('20200730184103-create-productphoto.js'),
('20200804102505-create-location.js'),
('20200804102730-create-area.js'),
('20200809045756-create-product.js'),
('20200903150938-create-address.js'),
('20200903161901-create-cart.js'),
('20200904052351-create-order.js'),
('20200906050310-add-column-address.js'),
('20200906064257-create-customer.js'),
('20200908052854-add-column-order.js'),
('20201225083703-create-payment.js'),
('20210109223021-create-vendor.js'),
('20210109223242-create-vendor-product.js'),
('20210111184629-add-column-location.js'),
('20210111184635-add-column-area.js'),
('20210111200003-create-vendor-area.js');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `sub_name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `categoryId`, `sub_name`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Organic fertilizer', '2022-09-19 13:28:34', '2022-09-22 04:46:03'),
(2, 1, 'Inorganic fertilizer', '2022-09-22 04:46:18', '2022-09-22 04:46:18'),
(3, 1, 'Water soluble fertilizer', '2022-09-22 04:46:30', '2022-09-22 04:46:30'),
(4, 2, 'Horticulture', '2022-09-22 04:48:10', '2022-09-22 04:48:10'),
(5, 2, 'Field crops', '2022-09-22 04:48:21', '2022-09-22 04:48:21'),
(6, 2, 'Saplings', '2022-09-22 04:48:27', '2022-09-22 04:48:27'),
(7, 3, 'Cereals and millets', '2022-09-22 04:48:41', '2022-09-22 04:48:41'),
(8, 3, 'Pulses', '2022-09-22 04:48:49', '2022-09-22 04:48:49'),
(9, 3, 'Sugar crops', '2022-09-22 04:48:59', '2022-09-22 04:48:59'),
(10, 3, 'Fibre crops', '2022-09-22 04:49:08', '2022-09-22 04:49:08'),
(11, 3, 'Forage crops', '2022-09-22 04:49:21', '2022-09-22 04:49:21'),
(12, 3, 'Fruit', '2022-09-22 04:49:28', '2022-09-22 04:49:28'),
(13, 5, 'Pathogen', '2022-09-29 07:42:38', '2022-09-29 07:42:38'),
(14, 4, 'Integrated organic farming', '2022-09-29 12:28:24', '2022-09-29 12:28:24'),
(15, 4, 'Pure organic farming', '2022-09-29 12:28:43', '2022-09-29 12:28:43'),
(17, 3, 'Paddy', '2022-10-12 10:54:45', '2022-10-12 10:54:45'),
(18, 3, 'Sorghum', '2022-10-12 10:55:34', '2022-10-12 10:55:34'),
(19, 3, 'Maize', '2022-10-12 10:55:49', '2022-10-12 10:55:49'),
(20, 3, 'Cumbu', '2022-10-12 10:56:14', '2022-10-12 10:56:14'),
(21, 3, 'Raggi', '2022-10-12 10:56:29', '2022-10-12 10:56:29'),
(22, 3, 'Wheat', '2022-10-12 10:56:40', '2022-10-12 10:56:40'),
(23, 3, 'Redgram', '2022-10-12 10:56:53', '2022-10-12 10:56:53'),
(24, 3, 'Blackgram', '2022-10-12 10:57:10', '2022-10-12 10:57:10'),
(25, 3, 'Soybean', '2022-10-12 10:57:20', '2022-10-12 10:57:20'),
(26, 3, 'Sunflower', '2022-10-12 10:57:32', '2022-10-12 10:57:32'),
(27, 3, 'Groundnut', '2022-10-12 10:58:06', '2022-10-12 10:58:06'),
(28, 3, 'Castor', '2022-10-12 10:58:16', '2022-10-12 10:58:16'),
(29, 3, 'Cotton', '2022-10-12 10:58:28', '2022-10-12 10:58:28'),
(30, 3, 'Sugarcane', '2022-10-12 10:58:46', '2022-10-12 10:58:46'),
(31, 3, 'Tobacco', '2022-10-12 10:58:58', '2022-10-12 10:58:58');

-- --------------------------------------------------------

--
-- Table structure for table `subchildcategories`
--

CREATE TABLE `subchildcategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `subcategoryId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subchildcategories`
--

INSERT INTO `subchildcategories` (`id`, `name`, `categoryId`, `subcategoryId`, `createdAt`, `updatedAt`) VALUES
(2, 'Vegetable seeds', 2, 4, '2022-09-22 06:38:02', '2022-09-22 06:38:02'),
(3, 'Fruit seed', 2, 4, '2022-09-22 06:38:27', '2022-09-22 06:38:27'),
(4, 'Flower seed', 2, 4, '2022-09-22 06:38:50', '2022-09-22 06:38:50'),
(5, 'Corn', 2, 5, '2022-09-23 09:07:07', '2022-09-23 09:07:07'),
(6, 'paddy', 2, 5, '2022-09-23 09:07:24', '2022-09-23 09:07:24'),
(7, 'cotton', 2, 5, '2022-09-23 09:07:34', '2022-09-23 09:07:34'),
(8, 'Jowar', 2, 5, '2022-09-23 09:07:44', '2022-09-23 09:07:44'),
(9, 'Coconut', 2, 6, '2022-09-23 12:28:23', '2022-09-23 12:28:23'),
(10, 'Papaya', 2, 6, '2022-09-23 12:28:41', '2022-09-23 12:28:41'),
(11, 'Cereals', 3, 7, '2022-09-26 07:27:54', '2022-09-26 07:27:54'),
(12, 'Millets', 3, 7, '2022-09-26 07:29:07', '2022-09-26 07:29:07'),
(13, 'Pulses', 3, 8, '2022-09-26 07:29:46', '2022-09-26 07:29:46'),
(14, 'Manure', 1, 1, '2022-09-26 07:48:07', '2022-09-26 07:48:07'),
(15, 'Compost', 1, 1, '2022-09-26 07:48:20', '2022-09-26 07:48:20'),
(16, 'Chicken Litter', 1, 1, '2022-09-26 07:48:35', '2022-09-26 07:48:35'),
(17, 'Bone Meal', 1, 1, '2022-09-26 07:48:48', '2022-09-26 07:48:48'),
(18, 'Vermicompost', 1, 1, '2022-09-26 07:48:56', '2022-09-26 07:48:56'),
(19, 'Nitrogen Fertilizers', 1, 2, '2022-09-27 12:22:44', '2022-09-27 12:22:44'),
(20, 'Potassium Fertilizers', 1, 2, '2022-09-27 12:22:59', '2022-09-27 12:22:59'),
(21, 'Phosphorus Fertilizers', 1, 2, '2022-09-27 12:23:15', '2022-09-27 12:23:15'),
(22, 'Water Soluble Fertilizers', 1, 3, '2022-09-27 12:33:27', '2022-09-27 12:33:27'),
(27, 'Jute', 3, 10, '2022-10-07 06:17:38', '2022-10-07 06:17:38'),
(28, 'Plant Diseases', 3, 11, '2022-10-07 06:38:20', '2022-10-07 06:38:20'),
(29, 'Fruit Diseases', 3, 12, '2022-10-07 09:45:39', '2022-10-07 09:45:39'),
(30, 'Leaf blast', 3, 17, '2022-10-12 10:59:50', '2022-10-12 10:59:50'),
(31, 'Nodal Blast', 3, 17, '2022-10-12 11:00:16', '2022-10-12 11:00:16'),
(32, 'Collar Blast', 3, 17, '2022-10-12 11:00:43', '2022-10-12 11:00:43'),
(33, 'Infected Field', 3, 17, '2022-10-12 11:01:56', '2022-10-12 11:01:56'),
(34, 'Smut', 3, 18, '2022-10-12 11:30:05', '2022-10-12 11:30:05'),
(35, 'Rust', 3, 18, '2022-10-12 11:30:19', '2022-10-12 11:30:19'),
(36, 'Leaf  Blight', 3, 19, '2022-10-12 11:31:40', '2022-10-12 11:31:40'),
(37, 'Downy mildew / Crazy top', 3, 19, '2022-10-12 11:31:53', '2022-10-12 11:31:53'),
(38, 'Charcoal rot', 3, 19, '2022-10-12 11:32:12', '2022-10-12 11:32:12'),
(40, 'Ergot', 3, 20, '2022-10-12 11:33:12', '2022-10-12 11:33:12'),
(41, 'Downy Mildew', 3, 20, '2022-10-12 11:33:16', '2022-10-12 11:33:16'),
(43, 'Blast', 3, 21, '2022-11-03 07:29:11', '2022-11-03 07:29:11'),
(44, 'Foot Rot/Wilt', 3, 21, '2022-11-03 07:30:25', '2022-11-03 07:30:25'),
(45, 'Mosaic', 3, 21, '2022-11-03 07:31:29', '2022-11-03 07:31:29'),
(46, 'Stem Rust', 3, 22, '2022-11-03 07:31:51', '2022-11-03 07:31:51'),
(47, 'Powdery mildew', 3, 22, '2022-11-03 07:32:09', '2022-11-03 07:32:09'),
(48, 'Loose Smut', 3, 22, '2022-11-03 07:32:38', '2022-11-03 07:32:38'),
(49, 'Dry root Rot', 3, 23, '2022-11-03 07:33:11', '2022-11-03 07:33:11'),
(50, 'Mungbean yellow mosaic virus', 3, 23, '2022-11-03 07:34:24', '2022-11-03 07:34:24'),
(51, 'Leaf Crinkle', 3, 24, '2022-11-03 07:35:50', '2022-11-03 07:35:50'),
(52, 'Yellow Mosaic', 3, 24, '2022-11-03 07:36:11', '2022-11-03 07:36:11'),
(53, 'Anthracnose/Pod Blight', 3, 25, '2022-11-03 07:36:57', '2022-11-03 07:36:57'),
(54, 'Cercospora Leaf Blight', 3, 25, '2022-11-03 08:25:53', '2022-11-03 08:25:53'),
(55, 'Soybean Mosaic', 3, 25, '2022-11-03 08:26:26', '2022-11-03 08:26:26'),
(56, 'Collar Rot / Sclerotial Blight', 3, 25, '2022-11-03 08:28:18', '2022-11-03 08:28:18'),
(57, 'Alternaria blight', 3, 26, '2022-11-03 08:36:30', '2022-11-03 08:36:30'),
(58, 'Rhizopus head rot', 3, 26, '2022-11-03 08:36:55', '2022-11-03 08:36:55'),
(59, 'Sunflower mosaic virus', 3, 26, '2022-11-03 08:37:04', '2022-11-03 08:37:04'),
(60, 'Early Leaf Spot', 3, 27, '2022-11-03 08:38:04', '2022-11-03 08:38:04'),
(61, 'Stem Rot', 3, 27, '2022-11-03 08:38:27', '2022-11-03 08:38:27'),
(62, 'Bud Necrosis', 3, 27, '2022-11-03 08:38:38', '2022-11-03 08:38:38'),
(63, 'Seedling Blight', 3, 28, '2022-11-03 08:39:00', '2022-11-03 08:39:00'),
(64, 'Wilt', 3, 28, '2022-11-03 08:48:33', '2022-11-03 08:48:33'),
(65, 'Alternaria Blight - Castor', 3, 28, '2022-11-03 08:57:00', '2022-11-03 08:57:00'),
(66, 'Powdery Mildew - Castor', 3, 28, '2022-11-03 08:57:25', '2022-11-03 08:57:25'),
(67, 'Cercospora Leaf Spot', 3, 28, '2022-11-03 08:57:51', '2022-11-03 08:57:51'),
(68, 'Boll rot', 3, 29, '2022-11-03 08:58:17', '2022-11-03 08:58:17'),
(69, 'Fusarium  Wilt', 3, 29, '2022-11-03 08:58:47', '2022-11-03 08:58:47'),
(70, 'Bacterial blight', 3, 29, '2022-11-03 08:59:09', '2022-11-03 08:59:09'),
(71, 'Alternaria leaf blight', 3, 29, '2022-11-03 08:59:28', '2022-11-03 08:59:28'),
(72, 'Verticillium wilt', 3, 29, '2022-11-03 08:59:59', '2022-11-03 08:59:59'),
(73, 'YELLOW LEAF DISEASE', 3, 30, '2022-11-03 09:00:27', '2022-11-03 09:00:27'),
(74, 'RED ROT', 3, 30, '2022-11-03 09:00:44', '2022-11-03 09:00:44'),
(75, 'WILT - Sugarcane', 3, 30, '2022-11-03 09:01:23', '2022-11-03 09:01:23'),
(76, 'GRASSY SHOOT DISEASE', 3, 30, '2022-11-03 09:01:51', '2022-11-03 09:01:51'),
(77, 'Orobanche', 3, 31, '2022-11-03 09:02:10', '2022-11-03 09:02:10'),
(78, 'Frog Eye Leaf Spot', 3, 31, '2022-11-03 09:02:32', '2022-11-03 09:02:32'),
(79, 'Rust-sunflower', 3, 26, '2022-11-07 08:45:18', '2022-11-07 08:45:18'),
(80, 'Rust-groundnut', 3, 27, '2022-11-07 08:49:40', '2022-11-07 08:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `userenquiries`
--

CREATE TABLE `userenquiries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userenquiries`
--

INSERT INTO `userenquiries` (`id`, `name`, `email`, `image_path`, `description`, `createdAt`, `updatedAt`) VALUES
(1, 'Roji', 'roji123@gmail.com', 'storage\\userenquiry\\8fb7d4de-46e7-450a-9ebc-e02dcdf8f9c3.jpeg', 'dsfuacbgusfgbnh', '2022-11-09 04:41:36', '2022-11-09 04:41:36'),
(2, 'lens', 'lensi@gmail.com', 'storage\\userenquiry\\b45015be-040b-495e-9723-aeac0c6d2dba.jpeg', 'daycgfyugsdn', '2022-11-09 04:43:11', '2022-11-09 04:43:11'),
(3, 'lens', 'lensi@gmail.com', 'storage\\userenquiry\\fa73ca08-1044-48f1-a10e-0ba98de9f6a6.jpeg', 'daycgfyugsdn', '2022-11-09 04:44:44', '2022-11-09 04:44:44'),
(4, 'lens', 'lensi@gmail.com', 'storage\\userenquiry\\836729ac-6d2d-4825-9e3d-8ef82dbe0ece.jpeg', 'daycgfyugsdn', '2022-11-09 04:48:16', '2022-11-09 04:48:16'),
(5, 'Priyanka', 'Priyanka@gmail.com', 'storage\\userenquiry\\2d304343-d281-4712-9231-eb47a23cf479.jpeg', 'hiiiii', '2022-11-09 12:21:47', '2022-11-09 12:21:47'),
(6, 'test', 'priyanka123@gmail.com', 'storage\\userenquiry\\606e25b5-e95e-40c6-85bf-79cb54e18598.jpeg', 'dsggafdsgv', '2022-11-11 05:35:15', '2022-11-11 05:35:15'),
(7, 'sg dfgdcfsdfh', 'priyanka@gmail.com', 'storage\\userenquiry\\fab1a35f-d0d3-4035-814f-1ae5fe8f2718.jpeg', 'dfhs vdhjgd', '2022-11-11 05:40:50', '2022-11-11 05:40:50'),
(8, 'acfs', 'priyanka@gmail.com', 'storage\\userenquiry\\2981c651-52a9-4272-8b45-76025b05abd8.jpeg', 'scafdssdf', '2022-11-11 05:42:28', '2022-11-11 05:42:28'),
(9, 'ftghjk', 'priyanka@gmail.com', 'storage\\userenquiry\\108ccbe1-14fe-4b6d-8778-9bd4d84caf62.jpeg', 'sdvagvvfdh', '2022-11-11 06:14:24', '2022-11-11 06:14:24'),
(10, 'test', 'test@gmail.com', 'storage\\userenquiry\\75ec0b84-4eb2-439e-8d82-3999bb299abd.jpeg', 'esdrtfgyhujikl', '2022-11-11 06:16:56', '2022-11-11 06:16:56'),
(11, 'dbfygvwds', 'priyanka@gmail.com', 'storage\\userenquiry\\4502ea99-0ee3-4105-a6e7-3761069e236a.jpeg', 'dsacgfsgdf', '2022-11-11 10:26:49', '2022-11-11 10:26:49'),
(12, 'edtrfghjkl', 'srmadmin@gmail.com', 'storage\\userenquiry\\1f62f582-6acd-474e-88f8-06965581e7c3.jpeg', 'zesxdrtfgyhujkl', '2022-11-11 10:29:02', '2022-11-11 10:29:02'),
(13, 'esdrftgyhujik', 'priyanka@gmail.com', 'storage\\userenquiry\\2197fa56-41cc-42ed-9a8b-c6b725f43f0b.jpeg', 'wasedrftgyhjk', '2022-11-11 10:31:11', '2022-11-11 10:31:11'),
(14, 'esdrftgyhujik', 'priyanka@gmail.com', 'storage\\userenquiry\\444bc18e-f700-4789-9a88-23bd6f7f360e.jpeg', 'wasedrftgyhjk', '2022-11-11 10:31:14', '2022-11-11 10:31:14'),
(15, 'esdrftgyhujik', 'priyanka@gmail.com', 'storage\\userenquiry\\b99446c6-dcf5-497f-8d8b-145598a8b9b3.jpeg', 'wasedrftgyhjk', '2022-11-11 10:31:14', '2022-11-11 10:31:14'),
(16, 'retvrete', 'priyanka123@gmail.com', 'storage\\userenquiry\\c356d5b1-0c65-4f67-886e-15dec53951d6.jpeg', 'ecrey', '2022-11-11 10:32:31', '2022-11-11 10:32:31'),
(17, 'test', 'test@gmail.com', 'storage\\userenquiry\\6baa384a-a517-4012-b187-1145de12cf69.jpeg', 'sugdvgfy hbuhfvbdsuygvfudsbnavjhgfdsjh', '2022-11-11 10:48:12', '2022-11-11 10:48:12'),
(18, 'test', 'test@gmail.com', 'storage\\userenquiry\\f3ff32af-a732-49fa-a56a-998fd5d057f6.jpeg', 'sugdvgfy hbuhfvbdsuygvfudsbnavjhgfdsjh', '2022-11-11 10:48:18', '2022-11-11 10:48:18'),
(19, 'hvaduhsvhcjvasjkvckjhvd', 'sgavasc@gmail.com', 'storage\\userenquiry\\2fa83c56-8004-4cc6-abd6-d09be2360c24.jpeg', 'WAZesxdrcfvgbhnjmkladpfkj bntfi7crweihm dcas', '2022-11-11 10:51:08', '2022-11-11 10:51:08'),
(20, 'edfvgbhn', 'sedfcgvbhjnmk@gmail.com', 'storage\\userenquiry\\0edb40a2-ac9c-4044-8918-28b7cec22528.jpeg', 'fvdtaybuycgfash', '2022-11-11 10:55:25', '2022-11-11 10:55:25'),
(21, 'wwwww', 'wwww@gmail.com', 'storage\\userenquiry\\498da5ed-e28c-4bbf-8c5a-94ffb60ccf7f.jpeg', 'fwerqewcfdfd', '2022-11-11 10:56:38', '2022-11-11 10:56:38'),
(22, 'qedAS', 'priyanka123@gmail.com', 'storage\\userenquiry\\dcbad571-222e-4c25-b42a-c65c5d1cf038.jpeg', 'DQXAS', '2022-11-11 10:57:42', '2022-11-11 10:57:42'),
(23, 'test', 'test@gmail.com', 'storage\\userenquiry\\43443584-0dc2-44c5-b8b0-7d9c427aabc5.png', 'hiiiiii', '2022-11-11 11:24:55', '2022-11-11 11:24:55'),
(24, 'priya', 'priyanka.zigainfotech@gmail.com', 'storage\\userenquiry\\7c379010-dcfc-43c4-b75a-522d2be9b8f9.png', 'dtfghjnkml,ftgyushyuduvhsimgf', '2022-11-16 07:29:33', '2022-11-16 07:29:33'),
(25, 'hiii', 'priyanka123@gmail.com', 'storage\\userenquiry\\0b4f8d94-9d70-4f4c-b315-90ff4f21b243.png', 'jhgvfcdx', '2022-11-16 07:38:51', '2022-11-16 07:38:51'),
(26, 'zsxdcfvgbhj', 'priyanka123@gmail.com', 'storage\\userenquiry\\729cb14e-b21a-4488-b1e8-3395c6b16ebf.png', 'aZSxdcfvgbhnjk', '2022-11-17 05:15:05', '2022-11-17 05:15:05'),
(27, 'sxdcfvgbhjk', 'priyanka@gmail.com', 'storage\\userenquiry\\1d4e0b8b-91ba-4ddb-a48a-ac09f2e4cb2b.png', 'wsdfgvbhnj', '2022-11-17 06:06:07', '2022-11-17 06:06:07'),
(28, 'awsdfghjk', 'priyanka@gmail.com', 'storage\\userenquiry\\6db36fa5-0b24-46f7-ad7b-9fac9a610842.png', 'rxaerscvybhnikjo,', '2022-11-17 07:13:23', '2022-11-17 07:13:23'),
(29, 'testtt', 'priyanka123@gmail.com', 'storage\\userenquiry\\6d33228e-b5e2-430e-add0-6e3fc89bcf0e.png', 'awsdfghjk', '2022-11-17 07:15:49', '2022-11-17 07:15:49'),
(30, 'ewtavrewtsede', 'lensiya.zigainfotech@gmail.com', 'storage\\userenquiry\\8fd9cbd2-bb7e-4c60-a494-f8d2f8684c41.png', 'wzsxdcfvgbhnj', '2022-11-17 09:21:39', '2022-11-17 09:21:39'),
(31, 'acfs', 'roji@gmail.com', 'storage\\userenquiry\\783a0f4e-e111-4f03-a410-4fd419f2e50d.png', 'awdawda', '2022-11-17 09:29:07', '2022-11-17 09:29:07'),
(32, 'priyanka', 'priyanka123@gmail.com', 'storage\\userenquiry\\35823493-84c3-48a9-a505-7acfb5d4860a.jpeg', 'hiiiiii', '2022-11-17 09:32:16', '2022-11-17 09:32:16'),
(33, 'priyanka', 'priyanka123@gmail.com', 'storage\\userenquiry\\ef95c63e-f449-4ae6-8872-234b7f18f3ee.jpeg', 'asdfghjkl', '2022-11-17 10:42:05', '2022-11-17 10:42:05'),
(34, 'Priya', 'priya00@gmail.com', 'storage\\userenquiry\\4c08a9b3-b965-4f41-97c2-fa9fa439a0fa.jpeg', 'testing mail', '2022-11-17 11:06:38', '2022-11-17 11:06:38'),
(35, 'priyanka', 'priyanka@gmail.com', 'storage\\userenquiry\\a1b946c7-7939-468a-bce5-447929bc7074.jpeg', 'azsdfghj', '2022-11-17 11:08:18', '2022-11-17 11:08:18'),
(36, 'priya', 'priya00@gmail.com', 'storage\\userenquiry\\8f7e6480-d990-4bb2-8c9a-15d50b5d2ee2.jpeg', 'Alternaria-blight', '2022-11-17 11:53:32', '2022-11-17 11:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `verify` tinyint(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `address`, `email`, `phone`, `verify`, `password`, `createdAt`, `updatedAt`, `role`) VALUES
(1, 'keerthi', 'sesdvsd', 'Kingston,', 'priya@gmail.com', NULL, NULL, '$2a$10$EtAlUjOrxCgncyVUT83H1.U./L/3AqzxmSUZvOvvvtbDjWDu/YEPe', '2022-09-19 13:24:03', '2022-09-19 13:24:03', NULL),
(2, 'Priyanka', 'M', 'kjuyhtgvfcdxs', 'priyanka@gmail.com', NULL, NULL, '$2a$10$JTaGDkRGdPBxlty2VaF5meTzc7BHGsJD6FYlaIuYTuuDubxzniYNu', '2022-09-20 05:37:48', '2022-09-20 05:37:48', NULL),
(3, 'rojith', 'p', 'priyanka@gmail.com', 'roji1234@gmail.com', NULL, 1, '$2a$10$hLRwqLNz1Ycw47BqJVcoyOiRzKtGsartGmeKPiGWzaL8ZX37/pxiW', '2022-11-09 13:05:09', '2022-11-09 13:05:09', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `storename` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `shopaddress` text DEFAULT NULL,
  `shopdesc` text DEFAULT NULL,
  `ownername` varchar(255) DEFAULT NULL,
  `owneraddress` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `areaId` int(11) DEFAULT NULL,
  `accountNo` varchar(255) DEFAULT NULL,
  `accountHolderName` varchar(255) DEFAULT NULL,
  `IFSC` varchar(255) DEFAULT NULL,
  `bankName` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `adharCardNo` varchar(255) DEFAULT NULL,
  `panCardNo` varchar(255) DEFAULT NULL,
  `GSTNo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_areas`
--

CREATE TABLE `vendor_areas` (
  `id` int(11) NOT NULL,
  `vendorId` int(11) DEFAULT NULL,
  `areaId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_products`
--

CREATE TABLE `vendor_products` (
  `id` int(11) NOT NULL,
  `supplierId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `unitSize` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_review`
--
ALTER TABLE `customer_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productoffers`
--
ALTER TABLE `productoffers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productphotos`
--
ALTER TABLE `productphotos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_old`
--
ALTER TABLE `products_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subchildcategories`
--
ALTER TABLE `subchildcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userenquiries`
--
ALTER TABLE `userenquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_areas`
--
ALTER TABLE `vendor_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_products`
--
ALTER TABLE `vendor_products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer_review`
--
ALTER TABLE `customer_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productoffers`
--
ALTER TABLE `productoffers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productphotos`
--
ALTER TABLE `productphotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `products_old`
--
ALTER TABLE `products_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `subchildcategories`
--
ALTER TABLE `subchildcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `userenquiries`
--
ALTER TABLE `userenquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_areas`
--
ALTER TABLE `vendor_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_products`
--
ALTER TABLE `vendor_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
