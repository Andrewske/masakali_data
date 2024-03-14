-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: aws.connect.psdb.cloud    Database: masakali
-- ------------------------------------------------------
-- Server version	8.0.34-PlanetScale

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!50503 SET NAMES utf8mb4 */
;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;
/*!40103 SET TIME_ZONE='+00:00' */
;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */
;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;

--
-- Table structure for table `Account`
--

DROP TABLE IF EXISTS `Account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `Account` (
    `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL, `userId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL, `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL, `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL, `providerAccountId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL, `refresh_token` text COLLATE utf8mb4_unicode_ci, `access_token` text COLLATE utf8mb4_unicode_ci, `expires_at` int DEFAULT NULL, `token_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL, `scope` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL, `id_token` text COLLATE utf8mb4_unicode_ci, `session_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL, PRIMARY KEY (`id`), UNIQUE KEY `Account_provider_providerAccountId_key` (
        `provider`, `providerAccountId`
    ), KEY `Account_userId_idx` (`userId`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `Account`
--

LOCK TABLES `Account` WRITE;
/*!40000 ALTER TABLE `Account` DISABLE KEYS */
;
/*!40000 ALTER TABLE `Account` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `Image`
--

DROP TABLE IF EXISTS `Image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `Image` (
    `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL, `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL, `position` int NOT NULL, `villaId` int NOT NULL, `active` tinyint(1) NOT NULL DEFAULT '1', PRIMARY KEY (`id`), KEY `Image_villaId_idx` (`villaId`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `Image`
--

LOCK TABLES `Image` WRITE;
/*!40000 ALTER TABLE `Image` DISABLE KEYS */
;
/*!40000 ALTER TABLE `Image` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `Reservation`
--

DROP TABLE IF EXISTS `Reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `Reservation` (
    `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL, `smoobuId` int NOT NULL, `referenceId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL, `villaId` int NOT NULL, `channelId` int DEFAULT NULL, `userId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL, `arrival` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL, `departure` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL, `createdAt` datetime(3) NOT NULL, `guestName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL, `firstName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL, `lastName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL, `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL, `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL, `adults` int DEFAULT '1', `children` int DEFAULT '0', `note` text COLLATE utf8mb4_unicode_ci, `extraNote` text COLLATE utf8mb4_unicode_ci, `amount` double DEFAULT '0', `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'IDR', `commission` double DEFAULT '0', `cancelled` tinyint(1) DEFAULT '0', PRIMARY KEY (`id`), UNIQUE KEY `Reservation_smoobuId_key` (`smoobuId`), KEY `Reservation_villaId_idx` (`villaId`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `Reservation`
--

LOCK TABLES `Reservation` WRITE;
/*!40000 ALTER TABLE `Reservation` DISABLE KEYS */
;

INSERT INTO
    `Reservation`
VALUES (
        'cligw5s7w00002zxghd1g5332', 38288002, '2762696670', 1115671, 1466473, NULL, '2023-05-30 00:00:00.000', '2023-06-04 00:00:00.000', '2023-04-20 19:49:00.000', 'Alexander Hergert', 'Alexander', 'Hergert', 'aherge.463659@guest.booking.com', '+49 4917656721721', 2, 0, 'Booking Number: 2762696670\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 244950 You have a booker that would like free parking. (based on availability)\n\nFurther information: booker_is_genius\nPrepayment: 10650000IDR', '', 10650000, 'IDR', 1597500, 0
    ),
    (
        'cligw5sbr00022zxgfmpsrvq4', 37136728, 'HMXMCTQE4R', 1115674, 1466470, NULL, '2023-06-01 00:00:00.000', '2023-06-05 00:00:00.000', '2023-03-29 11:34:00.000', 'Sheeraz Baig', 'Sheeraz', 'Baig', NULL, '+12247350427', 2, 0, 'Booking Number: HMXMCTQE4R\nGuest language: en', 'Request honeymoon packages no wine Halal food', 12584115.07, 'IDR', 1560000, 0
    ),
    (
        'cligw5se300042zxgk7g8uxnx', 33635469, 'HM92EXDR2Y', 1115668, 1466470, NULL, '2023-06-02 00:00:00.000', '2023-06-06 00:00:00.000', '2023-01-22 01:40:00.000', 'Alexander Foitzik', 'Alexander', 'Foitzik', NULL, '+491714581810', 2, 0, 'Booking Number: HM92EXDR2Y\nGuest language: de', 'Request honeymoon packages', 10400000, 'IDR', 1560000, 0
    ),
    (
        'cligw5sgl00062zxgsunqm9vq', 36918481, '2430224663', 1115674, 1466473, NULL, '2023-06-04 00:00:00.000', '2023-06-10 00:00:00.000', '2023-03-25 11:55:00.000', 'Marius De Bortoli', 'Marius', 'De Bortoli', 'mborto.842241@guest.booking.com', '+1 720 3729238', 2, 0, 'Booking Number: 2430224663\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 354200\n\nFurther information: booker_is_genius\nPrepayment: 15400000IDR', '', 15400000, 'IDR', 2310000, 1
    ),
    (
        'cligw5siy00082zxg89j811jq', 40554806, '974938953', 1115674, 1556329, NULL, '2023-06-05 00:00:00.000', '2023-06-07 00:00:00.000', '2023-06-03 23:58:00.000', 'Auji Dasbee', 'Auji', 'Dasbee', NULL, '+60 0173903153', 2, 0, '', '', 4001000, 'IDR', NULL, 0
    ),
    (
        'cligw5sl7000a2zxgbbhr21wx', 39182029, '3561721276', 1115671, 1466473, NULL, '2023-06-05 00:00:00.000', '2023-06-11 00:00:00.000', '2023-05-08 05:21:00.000', 'Tudor Rad', 'Tudor', 'Rad', 'trad.608776@guest.booking.com', '+40 746011735', 2, 0, 'Booking Number: 3561721276\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 292100 Approximate time of arrival: between 20:00 and 21:00\n\nFurther information: booker_is_genius\nPrepayment: 12700000IDR', '', 12700000, 'IDR', 1905000, 0
    ),
    (
        'cligw5snf000c2zxggxpzsho8', 34274270, '', 1574678, 1466458, NULL, '2023-06-05 00:00:00.000', '2023-08-23 00:00:00.000', '2023-02-03 06:30:00.000', NULL, '', '', NULL, NULL, 0, 0, '', '', 0, 'IDR', NULL, 0
    ),
    (
        'cligw5spx000e2zxgh8ceam19', 37334347, 'HMMCTABQ2J', 1115668, 1466470, NULL, '2023-06-07 00:00:00.000', '2023-06-11 00:00:00.000', '2023-04-02 04:54:00.000', 'Marcus Horak', 'Marcus', 'Horak', NULL, '+17403340169', 2, 0, 'Booking Number: HMMCTABQ2J\nGuest language: en', 'Pool decorations \nHappy honeymoon Mr and Mrs Hofer\n\n\nCandlelight dinner\nSayur urab\nPumpkin soup\nSpring rolls\nNasi campur\nBalinese cake', 12583979.39, 'IDR', 1560000, 0
    ),
    (
        'cligw5ss6000g2zxgtxlyh32b', 37314412, 'HM42ZRCBEB', 1115674, 1466470, NULL, '2023-06-07 00:00:00.000', '2023-06-11 00:00:00.000', '2023-04-01 21:40:00.000', 'Maria Zammit', 'Maria', 'Zammit', NULL, '+35699685719', 2, 0, 'Booking Number: HM42ZRCBEB\nGuest language: en', 'Pick up 7 am\nPrice 900 k', 12583980.94, 'IDR', 1560000, 0
    ),
    (
        'cligw5suk000i2zxgnfo2qxbr', 38723311, 'HMK48SPQYZ', 1115668, 1466470, NULL, '2023-06-11 00:00:00.000', '2023-06-13 00:00:00.000', '2023-04-29 03:08:00.000', 'Adriano Torrigiani', 'Adriano', 'Torrigiani', NULL, '+41797140152', 2, 0, 'Booking Number: HMK48SPQYZ\nGuest language: en-GB', '', 6534358.45, 'IDR', 810000, 0
    ),
    (
        'cligwatbm000k2z54lbmq46os', 21976123, '', 1115674, 1466467, NULL, '2023-06-12 00:00:00.000', '2023-06-20 00:00:00.000', '2022-04-22 10:12:00.000', 'Test 123', 'Test', '123', 'andrewskevin92@gmail.com', NULL, 1, 0, '', '', 2200000, 'IDR', NULL, 1
    ),
    (
        'cligwatfw000m2z54o6gew372', 31438150, '', 1115674, 1466467, NULL, '2023-06-12 00:00:00.000', '2023-06-13 00:00:00.000', '2022-12-01 02:04:00.000', 'Kevin Andrews', 'Kevin', 'Andrews', 'kevinbigfoot13@gmail.com', NULL, 2, NULL, '', '', 1.07, 'IDR', NULL, 1
    ),
    (
        'cligwatif000o2z54tyd92cca', 21406282, '', 1115674, 1466467, NULL, '2023-06-12 00:00:00.000', '2023-06-20 00:00:00.000', '2022-04-08 02:42:00.000', 'Test 123', 'Test', '123', 'andrewskevin92@gmail.com', NULL, 1, 0, '', '', 2200000, 'IDR', NULL, 1
    ),
    (
        'cligwatkr000q2z54akhb8z8y', 31668823, '', 1115674, 1466467, NULL, '2023-06-12 00:00:00.000', '2023-06-13 00:00:00.000', '2022-12-07 07:45:00.000', 'Kevin Andrews', 'Kevin', 'Andrews', 'kevinbigfoot13@gmail.com', NULL, 2, NULL, '', '', 0, 'IDR', NULL, 1
    ),
    (
        'cligwatnf000s2z54c3dgrfim', 31669105, '', 1115674, 1466467, NULL, '2023-06-12 00:00:00.000', '2023-06-13 00:00:00.000', '2022-12-07 07:58:00.000', 'Kevin Andrews', 'Kevin', 'Andrews', 'kevinbigfoot13@gmail.com', NULL, 2, NULL, '', '', 0, 'IDR', NULL, 1
    ),
    (
        'cligwatpn000u2z54v3gnh81y', 36210838, '910910045', 1115671, 1556329, NULL, '2023-06-12 00:00:00.000', '2023-06-15 00:00:00.000', '2023-03-12 11:25:00.000', 'Uttra Maharaj', 'Uttra', 'Maharaj', NULL, '+61 432977381', 2, 0, '', '', 5043000, 'IDR', NULL, 0
    ),
    (
        'cligwats0000w2z54rt5byf2r', 21975985, '', 1115674, 1466467, NULL, '2023-06-12 00:00:00.000', '2023-06-20 00:00:00.000', '2022-04-22 09:56:00.000', 'Test 123', 'Test', '123', 'andrewskevin92@gmail.com', NULL, 1, 0, '', '', 2200000, 'IDR', NULL, 1
    ),
    (
        'cligwatua000y2z54ok63slnw', 39052741, '365831259', 1115674, 1556329, NULL, '2023-06-12 00:00:00.000', '2023-06-14 00:00:00.000', '2023-05-05 15:32:00.000', 'Yousef Essa', 'Yousef', 'Essa', NULL, NULL, 2, 0, '', '', 4001000, 'IDR', NULL, 0
    ),
    (
        'cligwatwx00102z54w1jvianl', 21406672, '', 1115674, 1466467, NULL, '2023-06-12 00:00:00.000', '2023-06-20 00:00:00.000', '2022-04-08 02:53:00.000', 'Test 123', 'Test', '123', 'andrewskevin92@gmail.com', NULL, 1, 0, '', '', 2200000, 'IDR', NULL, 1
    ),
    (
        'cligwatzc00122z548ubpsd5o', 40553987, 'HM3QYDP3J9', 1587920, 1466470, NULL, '2023-06-13 00:00:00.000', '2023-06-16 00:00:00.000', '2023-06-03 23:39:00.000', 'Esra Bakhit', 'Esra', 'Bakhit', NULL, '+13366864416', 2, 0, 'Booking Number: HM3QYDP3J9\nGuest language: en', '', 15911525.69, 'IDR', 1972500, 0
    ),
    (
        'cligwau1k00142z545f25w1m6', 38263894, '363265927', 1115668, 1556329, NULL, '2023-06-13 00:00:00.000', '2023-06-14 00:00:00.000', '2023-04-20 05:20:00.000', 'sebastien michard', 'sebastien', 'michard', NULL, '33 0618624167', 2, 0, '', '', 2050000, 'IDR', NULL, 0
    ),
    (
        'cligwau4200162z545xifzlna', 30534403, '', 1115668, 1466467, NULL, '2023-06-14 00:00:00.000', '2023-06-18 00:00:00.000', '2022-11-08 03:04:00.000', 'Marcus Grazette', 'Marcus', 'Grazette', 'marcus.grazette@gmail.com', NULL, 2, NULL, '', '', 2280.96, 'IDR', NULL, 0
    ),
    (
        'cligwau8600182z54igumnhgo', 30816595, '3083963028', 1115674, 1466473, NULL, '2023-06-14 00:00:00.000', '2023-06-18 00:00:00.000', '2022-11-15 00:06:00.000', 'Alice Kam Ying Chan', 'Alice', 'Kam Ying Chan', 'achan.284820@guest.booking.com', '+85298669230', 1, 0, 'Booking Number: 3083963028\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID **\n\nBOOKING NOTE : Payment charge is IDR 230000\n\nFurther information: booker_is_genius\nPrepayment: 10000000IDR', '', 10000000, 'IDR', 1500000, 0
    ),
    (
        'cligwauau001a2z54zr20vddh', 32558473, 'HMS4D54FAH', 1115671, 1466470, NULL, '2023-06-15 00:00:00.000', '2023-06-18 00:00:00.000', '2023-01-02 15:18:00.000', 'Lloyd Falter', 'Lloyd', 'Falter', NULL, '+6596158365', 1, 0, 'Booking Number: HMS4D54FAH\nGuest language: en', '', 6550000, 'IDR', 1090596.18, 0
    ),
    (
        'cligwaud2001c2z54wd3mjgr7', 39947366, '3125669291', 1115671, 1466473, NULL, '2023-06-18 00:00:00.000', '2023-06-20 00:00:00.000', '2023-05-23 02:12:00.000', 'Chan King hong', 'Chan', 'King hong', 'kchan.306899@guest.booking.com', '+85265417514', 2, 0, 'Booking Number: 3125669291\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 103500 This is a Smart Flex reservation. Upgraded policy: Free cancellation until 4 days before check-in. Find more info here https://admin.booking.com/hotel/hoteladmin/extranet_ng/manage/booking.html?hotel_id=7951067&res_id=3125669291 I want to eat floating breakfast in the pool and please provide good view room to us.\n\nFurther information: booker_is_genius\nPrepayment: 4500000IDR', '', 4500000, 'IDR', 675000, 0
    ),
    (
        'clihtx6v1000c2zao0zc2ox3n', 40578797, 'HMTEWN8DPP', 1587920, 1466470, NULL, '2023-06-05 00:00:00.000', '2023-06-11 00:00:00.000', '2023-06-04 17:03:00.000', 'Marius Negroiu', 'Marius', 'Negroiu', NULL, '+40720623503', 4, 0, 'Booking Number: HMTEWN8DPP\nGuest language: en', '', 27996353.51, 'IDR', 3470625, 0
    ),
    (
        'clihtx73u001e2zao5r5631y7', 36061114, 'HMKMFKYXAD', 1115668, 1466470, NULL, '2023-06-20 00:00:00.000', '2023-06-23 00:00:00.000', '2023-03-09 07:00:00.000', 'Logan Cornett', 'Logan', 'Cornett', NULL, '+31643854574', 2, 0, 'Booking Number: HMKMFKYXAD\nGuest language: en', '', 9558995.62, 'IDR', 1185000, 0
    ),
    (
        'clihtx73v001g2zaowrycl2it', 38892661, '602401122', 1115671, 1556329, NULL, '2023-06-20 00:00:00.000', '2023-06-23 00:00:00.000', '2023-05-02 19:37:00.000', 'Duy Ta', 'Duy', 'Ta', NULL, NULL, 2, 0, '', '', 4921230, 'IDR', NULL, 1
    ),
    (
        'clihtx744001i2zaoenm0s099', 37728997, '', 1115668, 1466467, NULL, '2023-06-23 00:00:00.000', '2023-06-27 00:00:00.000', '2023-04-10 16:00:00.000', 'Chelsea Kessler', 'Chelsea', 'Kessler', 'cfkessler14@gmail.com', NULL, 2, NULL, '', '', 663.83, 'IDR', NULL, 0
    ),
    (
        'clihtx74z001k2zaocyux00vi', 38428165, '2460622348', 1115671, 1466473, NULL, '2023-06-24 00:00:00.000', '2023-06-27 00:00:00.000', '2023-04-23 20:58:00.000', 'Silvia Besana', 'Silvia', 'Besana', 'sbesan.368941@guest.booking.com', '+971 52 279 1741', 2, 0, 'Booking Number: 2460622348\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 150650\n\nFurther information: booker_is_genius\nPrepayment: 6550000IDR', '', 6550000, 'IDR', 982500, 0
    ),
    (
        'clihtx751001m2zaout07oggy', 38946490, '949587413', 1115671, 1556329, NULL, '2023-06-22 00:00:00.000', '2023-06-23 00:00:00.000', '2023-05-03 17:58:00.000', 'Lisa Bellois', 'Lisa', 'Bellois', NULL, '+61 486030400', 2, 0, '', '', 1640410, 'IDR', NULL, 0
    ),
    (
        'clihtx769001o2zaotogns2bs', 39793310, '923352540', 1115671, 1556329, NULL, '2023-06-27 00:00:00.000', '2023-06-28 00:00:00.000', '2023-05-19 22:46:00.000', 'HUANG WANCHEN', 'HUANG', 'WANCHEN', NULL, NULL, 2, 0, '', '', 1640410, 'IDR', NULL, 0
    ),
    (
        'clihtx769001p2zaos038zr6l', 27500867, 'HMPTABFX5T', 1115674, 1466470, NULL, '2023-06-27 00:00:00.000', '2023-07-02 00:00:00.000', '2022-08-25 12:23:00.000', 'Rob Mason', 'Rob', 'Mason', NULL, '+18284793892', 2, 0, 'Booking Number: HMPTABFX5T\nGuest language: en', 'Pick up airport price 420\nMalaysia air 851 arrive Bali 3.30pm\n\n\nRequest all packages on 28jun\nMassage 28 jun 11 am', 12500000, 'IDR', 1875000, 0
    ),
    (
        'clihtx769001q2zaoknc70xge', 39783191, '923204820', 1115671, 1556329, NULL, '2023-06-28 00:00:00.000', '2023-06-30 00:00:00.000', '2023-05-19 19:13:00.000', 'ezgi kaya', 'ezgi', 'kaya', NULL, NULL, 2, 0, '', '', 3280820, 'IDR', NULL, 0
    ),
    (
        'clihtx769001r2zaobqzd2kt7', 40555949, 'HMFSQ2KKTK', 1587920, 1466470, NULL, '2023-06-23 00:00:00.000', '2023-06-26 00:00:00.000', '2023-06-04 00:27:00.000', 'Shilpi Johar', 'Shilpi', 'Johar', NULL, '+918126232060', 4, 0, 'Booking Number: HMFSQ2KKTK\nGuest language: en', '', 15911499.39, 'IDR', 1972500, 0
    ),
    (
        'clihtx769001s2zaoz6awfh0c', 39648200, '367719799', 1115671, 1556329, NULL, '2023-06-30 00:00:00.000', '2023-07-03 00:00:00.000', '2023-05-17 01:08:00.000', 'Petra Bohn', 'Petra', 'Bohn', NULL, NULL, 2, 0, '', '', 4921230, 'IDR', NULL, 0
    ),
    (
        'clihtx76n001y2zao8321ciu1', 37604800, '890448544', 1115671, 1556329, NULL, '2023-06-27 00:00:00.000', '2023-06-28 00:00:00.000', '2023-04-07 09:35:00.000', 'WANCHEN HUANG', 'WANCHEN', 'HUANG', NULL, '+886 917777415', 2, 0, '', '***Needs airport pickup***', 1681000, 'IDR', NULL, 1
    ),
    (
        'clihtx77r00222zaorpqey5es', 39081985, '951523421', 1115671, 1556329, NULL, '2023-07-03 00:00:00.000', '2023-07-05 00:00:00.000', '2023-05-06 01:35:00.000', 'Nalluri Venkatesh', 'Nalluri', 'Venkatesh', NULL, NULL, 2, 0, '', '', 3280820, 'IDR', NULL, 1
    ),
    (
        'clihtx78100242zaoe6j3h64r', 37715530, 'HMSA8BNXB4', 1115668, 1466470, NULL, '2023-07-02 00:00:00.000', '2023-07-05 00:00:00.000', '2023-04-10 04:01:00.000', 'Archana Kunasegaram', 'Archana', 'Kunasegaram', NULL, '+14168398815', 2, 0, 'Booking Number: HMSA8BNXB4\nGuest language: en-CA', '', 9558990.83, 'IDR', 1185000, 0
    ),
    (
        'clihtx78h00262zaootiyfb90', 37331047, '2206829219', 1115674, 1466473, NULL, '2023-07-03 00:00:00.000', '2023-07-06 00:00:00.000', '2023-04-02 03:33:00.000', 'Emre Imece', 'Emre', 'Imece', 'eimece.838540@guest.booking.com', '+90 53440659', 2, 0, 'Booking Number: 2206829219\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 195500\n\nPrepayment: 8500000IDR', '', 8500000, 'IDR', 1275000, 0
    ),
    (
        'clihtx78l00282zaoqcd05krc', 40396865, 'HMR2ZJQ8FK', 1587920, 1466470, NULL, '2023-06-27 00:00:00.000', '2023-06-30 00:00:00.000', '2023-05-31 22:22:00.000', 'Jasem Abdulwahab', 'Jasem', 'Abdulwahab', NULL, '+96597977757', 2, 0, 'Booking Number: HMR2ZJQ8FK\nGuest language: en', '', 15911459.82, 'IDR', 1972500, 0
    ),
    (
        'clihtx792002a2zaopsgaial5', 38214124, '3944361845', 1115668, 1466473, NULL, '2023-06-28 00:00:00.000', '2023-07-02 00:00:00.000', '2023-04-19 08:04:00.000', 'Julianne Bell', 'Julianne', 'Bell', 'jbell.327552@guest.booking.com', '+61497658773', 2, 0, 'Booking Number: 3944361845\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 239200 Booking for our Honeymoon holiday 🥰\n\nFurther information: booker_is_genius\nPrepayment: 10400000IDR', '', 10400000, 'IDR', 1560000, 0
    ),
    (
        'clihtx796002c2zao8g7ejqki', 38411263, '940858329', 1115674, 1556329, NULL, '2023-06-19 00:00:00.000', '2023-06-25 00:00:00.000', '2023-04-23 09:44:00.000', 'Ahmed Bashaykh', 'Ahmed', 'Bashaykh', NULL, '966 966 501711315', 2, 0, '', '', 12300000, 'IDR', NULL, 0
    ),
    (
        'clihtx797002e2zaove9a6jid', 36946273, '359466819', 1115671, 1556329, NULL, '2023-07-05 00:00:00.000', '2023-07-09 00:00:00.000', '2023-03-26 01:25:00.000', 'JESPER LARSEN', 'JESPER', 'LARSEN', NULL, '45 +4530380704', 2, 0, '', '', 6724000, 'IDR', NULL, 0
    ),
    (
        'clihtx797002f2zao2pywi1d7', 38833768, '3326942149', 1115668, 1466473, NULL, '2023-07-06 00:00:00.000', '2023-07-09 00:00:00.000', '2023-05-01 19:36:00.000', 'Belinda Besley', 'Belinda', 'Besley', 'bbesle.640215@guest.booking.com', '+61 408 222 474', 1, 0, 'Booking Number: 3326942149\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 181700\n\nFurther information: booker_is_genius\nPrepayment: 7900000IDR', '', 7900000, 'IDR', 1185000, 0
    ),
    (
        'clihtx79e002i2zaou1cwgktc', 40358162, '3100006969', 1115671, 1466473, NULL, '2023-07-09 00:00:00.000', '2023-07-11 00:00:00.000', '2023-05-31 04:16:00.000', 'Toonika Guha', 'Toonika', 'Guha', 'tguha.631174@guest.booking.com', '+91 96743 31298', 2, 0, 'Booking Number: 3100006969\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** I’ll be visiting for my 30th birthday. Would it be possible to please arrange for number balloons of 30? BOOKING NOTE : Payment charge is IDR 103500\n\nAddress: A85 Ridgewood Estate\n122002\nGurgaon\nIN\nFurther information: booker_is_genius\nPrepayment: 4500000IDR', '', 4500000, 'IDR', 675000, 1
    ),
    (
        'clihtx7aa002k2zaoyhfsu908', 34156844, 'HMFAMA3RT9', 1115674, 1466470, NULL, '2023-07-11 00:00:00.000', '2023-07-17 00:00:00.000', '2023-02-01 04:10:00.000', 'Albert Smidt', 'Albert', 'Smidt', NULL, '+4915165078351', 2, 0, 'Booking Number: HMFAMA3RT9\nGuest language: de', '', 15400000, 'IDR', 2310000, 0
    ),
    (
        'clihtx7at002m2zaoctp91miy', 37932715, '895749876', 1115668, 1556329, NULL, '2023-07-11 00:00:00.000', '2023-07-12 00:00:00.000', '2023-04-14 02:38:00.000', 'Minako Aoyama', 'Minako', 'Aoyama', NULL, NULL, 2, 0, '', '', 2050000, 'IDR', NULL, 0
    ),
    (
        'clihtx7au002o2zaowuif92ie', 36439330, '', 1115671, 1466467, NULL, '2023-07-12 00:00:00.000', '2023-07-13 00:00:00.000', '2023-03-16 05:34:00.000', 'Kevin Andrews', 'Kevin', 'Andrews', 'kevinbigfoot13@gmail.com', NULL, 1, NULL, '', '', 1.19, 'IDR', NULL, 1
    ),
    (
        'clihtx7b1002q2zaos1rdf6gr', 36587179, 'HMZSCAJABS', 1115674, 1466470, NULL, '2023-07-07 00:00:00.000', '2023-07-08 00:00:00.000', '2023-03-19 06:27:00.000', 'Angel Reinoso Salas', 'Angel', 'Reinoso Salas', NULL, '+34666397713', 2, 0, 'Booking Number: HMZSCAJABS\nGuest language: es', '', 3508960.62, 'IDR', 435000, 0
    ),
    (
        'clihtx7be002s2zao05sxptpq', 38263318, '363263747', 1115671, 1556329, NULL, '2023-07-12 00:00:00.000', '2023-07-17 00:00:00.000', '2023-04-20 05:08:00.000', 'Kevin Shannon', 'Kevin', 'Shannon', NULL, NULL, 2, 0, '', '', 8405000, 'IDR', NULL, 0
    ),
    (
        'clihtx7bh002u2zaooyr375mh', 37388905, '3169187731', 1115668, 1466473, NULL, '2023-07-13 00:00:00.000', '2023-07-18 00:00:00.000', '2023-04-03 05:12:00.000', 'Roberta Carriero', 'Roberta', 'Carriero', 'rcarri.192986@guest.booking.com', '+39 377 085 7223', 2, 0, 'Booking Number: 3169187731\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 296700 Good evening, We will arrive in Bali Denpasar in the morning of the 13th July. It\'s possible to do check-in around 10 a.m./11 a.m.? Is it available the airport shuttle service from the airport to the structure? Is it included in the reservation? Thank you very much, looking forward to be there\n\nFurther information: booker_is_genius\nPrepayment: 12900000IDR', '', 12900000, 'IDR', 1935000, 0
    ),
    (
        'clihtx7bi002w2zao5wh568j7', 39747980, 'HMSCJMQDMP', 1587920, 1466470, NULL, '2023-07-16 00:00:00.000', '2023-07-22 00:00:00.000', '2023-05-18 23:30:00.000', 'Arun Asokan', 'Arun', 'Asokan', NULL, '+17028247221', 3, 1, 'Booking Number: HMSCJMQDMP\nGuest language: en', '', 36058160.08, 'IDR', 4470000, 0
    ),
    (
        'clihtx7bj002x2zaocpymc5d6', 37140880, '883945644', 1115674, 1556329, NULL, '2023-07-18 00:00:00.000', '2023-07-20 00:00:00.000', '2023-03-29 15:57:00.000', 'Mehmet Erhan Erköseoğlu', 'Mehmet', 'Erhan Erköseoğlu', NULL, '90 00905392306232', 2, 0, '', '', 4100000, 'IDR', NULL, 0
    ),
    (
        'clihtx7bj002y2zaoxvt10g5t', 37007704, '882099780', 1115671, 1556329, NULL, '2023-07-18 00:00:00.000', '2023-07-22 00:00:00.000', '2023-03-27 04:55:00.000', 'Mehmet Erhan Erköseoğlu', 'Mehmet', 'Erhan Erköseoğlu', NULL, NULL, 2, 0, '', '', 6724000, 'IDR', NULL, 1
    ),
    (
        'clihtx7ct00322zaoj6fjt93w', 37141267, '', 1115668, 1466467, NULL, '2023-07-20 00:00:00.000', '2023-07-22 00:00:00.000', '2023-03-29 16:06:00.000', 'Mehmet Erhan Erkoseoglu', 'Mehmet', 'Erhan Erkoseoglu', 'mehmet.erkoseoglu@gmail.com', NULL, 2, NULL, '', '', 222.94, 'IDR', NULL, 0
    ),
    (
        'clihtx7d300342zaogugte33i', 35630248, 'HM2TMDP88E', 1115674, 1466470, NULL, '2023-07-21 00:00:00.000', '2023-07-23 00:00:00.000', '2023-03-01 17:10:00.000', 'Lea Bachmann', 'Lea', 'Bachmann', NULL, '+41793086604', 3, 0, 'Booking Number: HM2TMDP88E\nGuest language: de', '', 6775849.59, 'IDR', 840000, 0
    ),
    (
        'clihtx7d600362zaozypy4vf8', 37994758, '896520788', 1115668, 1556329, NULL, '2023-07-22 00:00:00.000', '2023-07-23 00:00:00.000', '2023-04-15 06:15:00.000', 'Mehmet Erhan Erköseoğlu', 'Mehmet', 'Erhan Erköseoğlu', NULL, NULL, 2, 0, '', '', 2050000, 'IDR', NULL, 0
    ),
    (
        'clihtx7dd00382zaos7gfwev2', 37621204, '3562026326', 1115671, 1466473, NULL, '2023-07-20 00:00:00.000', '2023-07-26 00:00:00.000', '2023-04-07 20:55:00.000', 'Fogarassy Marton Benjamin', 'Fogarassy', 'Marton Benjamin', 'mfogar.351183@guest.booking.com', '+36 20 554 0877', 2, 0, 'Booking Number: 3562026326\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 292100\n\nAddress: Rómer Flóris utca\nVeszprém\nHU\nFurther information: booker_is_genius\nPrepayment: 12700000IDR', '', 12700000, 'IDR', 1905000, 1
    ),
    (
        'clihtx7dw003a2zaofk5f1102', 37630054, '2231933780', 1115674, 1466473, NULL, '2023-07-25 00:00:00.000', '2023-08-01 00:00:00.000', '2023-04-08 00:19:00.000', 'Bernadette Maria Grant and Vincent Coué', 'Bernadette', 'Maria Grant and Vincent Coué', 'bgrant.512062@guest.booking.com', '+45 61 60 86 38', 2, 0, 'Booking Number: 2231933780\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** This is a honeymoon. BOOKING NOTE : Payment charge is IDR 411700\n\nFurther information: booker_is_genius\nPrepayment: 17900000IDR', '', 17900000, 'IDR', 2685000, 1
    ),
    (
        'clihtx7dw003b2zaoooyjbmub', 34274279, NULL, 1574678, 1466458, NULL, '2023-07-24', '2023-10-29', '2023-02-03 06:30:00.000', NULL, '', '', NULL, NULL, NULL, NULL, '', '', NULL, 'IDR', NULL, 1
    ),
    (
        'clihtx7dw003c2zao38rzbmok', 40323518, 'HMHBKE8C29', 1115671, 1466470, NULL, '2023-07-25 00:00:00.000', '2023-07-29 00:00:00.000', '2023-05-30 17:39:00.000', 'Danielle Wieczorek', 'Danielle', 'Wieczorek', NULL, '+16126004744', 2, 0, 'Booking Number: HMHBKE8C29\nGuest language: en', '', 10405964.44, 'IDR', 1290000, 0
    ),
    (
        'clihtx7dw003g2zaoqqgbzpqd', 37122253, '3686934812', 1115668, 1466473, NULL, '2023-07-25 00:00:00.000', '2023-07-28 00:00:00.000', '2023-03-29 03:33:00.000', 'Muñoz de Hoyos Celia', 'Muñoz', 'de Hoyos Celia', 'mcelia.139600@guest.booking.com', '+34 601 17 81 40', 2, 0, 'Booking Number: 3686934812\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 181700 Just married and we would like white sheets\n\nPrepayment: 7900000IDR', '', 7900000, 'IDR', 1185000, 0
    ),
    (
        'clihtx7e0003i2zaomabpi3jj', 40527245, '3176189412', 1115674, 1466473, NULL, '2023-07-26 00:00:00.000', '2023-07-30 00:00:00.000', '2023-06-03 05:32:00.000', 'Rachel Bennett', 'Rachel', 'Bennett', 'rbenne.973074@guest.booking.com', '+44 7446 251175', 2, 1, 'Booking Number: 3176189412\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** Approximate time of arrival: between 14:00 and 15:00 It is our wedding anniversary on 29th July, we would appreciate if there is anything you can do to make this special. Thank you BOOKING NOTE : Payment charge is IDR 257600\n\nFurther information: booker_is_genius\nPrepayment: 11200000IDR', '', 11200000, 'IDR', 1680000, 0
    ),
    (
        'clihtx7fb003k2zaoyxnp3mb9', 39097852, '', 1115668, 1466467, NULL, '2023-07-28 00:00:00.000', '2023-07-31 00:00:00.000', '2023-05-06 10:16:00.000', 'Akhil Khan', 'Akhil', 'Khan', 'akhilkhan7@gmail.com', NULL, 2, NULL, '', '', 505.97, 'IDR', NULL, 0
    ),
    (
        'clihtx7fi003m2zaosk3ifkx4', 35857669, '3357813893', 1115674, 1466473, NULL, '2023-08-01 00:00:00.000', '2023-08-05 00:00:00.000', '2023-03-05 22:52:00.000', 'valerio sito', 'valerio', 'sito', 'vsito.782816@guest.booking.com', '+39 338 528 9495', 2, 1, 'Booking Number: 3357813893\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 195500\n\nFurther information: booker_is_genius\nPrepayment: 8500000IDR', '', 11200000, 'IDR', 1680000, 0
    ),
    (
        'clihtx7fk003o2zaoso4vu5yh', 39580391, '2312588114', 1115671, 1466473, NULL, '2023-07-30 00:00:00.000', '2023-08-02 00:00:00.000', '2023-05-15 21:49:00.000', 'Patrick Eilers', 'Patrick', 'Eilers', 'peiler.167204@guest.booking.com', '+49 160 5051430', 2, 0, 'Booking Number: 2312588114\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** Approximate time of arrival: between 21:00 and 22:00 Hello, our flight will arrive at 18:40. Can you organize a shuttle from the airport to the hotel? Is it also possible to book a scooter for the 31.07. and the 01.08.. Thank you an d best wishes Patrick Eilers BOOKING NOTE : Payment charge is IDR 150650\n\nFurther information: booker_is_genius\nPrepayment: 6550000IDR', '', 6550000, 'IDR', 982500, 0
    ),
    (
        'clihtx7fq003q2zaof3yq41nd', 38639329, '3554388565', 1115671, 1466473, NULL, '2023-08-01 00:00:00.000', '2023-08-04 00:00:00.000', '2023-04-27 15:08:00.000', 'Sophie Berry', 'Sophie', 'Berry', 'sberry.939240@guest.booking.com', '+64 27 229 3514', 2, 0, 'Booking Number: 3554388565\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 150650 Approximate time of arrival: between 11:00 and 12:00\n\nPrepayment: 6550000IDR', '', 6550000, 'IDR', 982500, 1
    ),
    (
        'clihtx7fz003s2zao7fyvwil1', 38720806, '3442382997', 1115671, 1466473, NULL, '2023-08-04 00:00:00.000', '2023-08-08 00:00:00.000', '2023-04-29 02:06:00.000', 'Geraldine DELTEL', 'Geraldine', 'DELTEL', 'gdelte.907269@guest.booking.com', '+262693006861', 2, 0, 'Booking Number: 3442382997\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 197800 You have a booker that would like free parking. (based on availability)\n\nFurther information: booker_is_genius\nPrepayment: 8600000IDR', '', 8600000, 'IDR', 1290000, 0
    ),
    (
        'clihtx7g1003u2zaogh20xem6', 33390127, 'HMMKMSJY3Q', 1115668, 1466470, NULL, '2023-08-04 00:00:00.000', '2023-08-08 00:00:00.000', '2023-01-17 07:36:00.000', 'Elia Pignataro', 'Elia', 'Pignataro', NULL, '+393274660034', 2, 0, 'Booking Number: HMMKMSJY3Q\nGuest language: it', '', 10400000, 'IDR', 1560000, 0
    ),
    (
        'clihtx7g8003w2zao0dahdjd5', 39303724, 'HMB2FWFN9M', 1587920, 1466470, NULL, '2023-08-08 00:00:00.000', '2023-08-13 00:00:00.000', '2023-05-10 06:09:00.000', 'Alexandre Teng', 'Alexandre', 'Teng', NULL, '+33770076961', 4, 0, 'Booking Number: HMB2FWFN9M\nGuest language: fr', '', 30128872.92, 'IDR', 3735000, 0
    ),
    (
        'clihtx7g9003y2zaomx0y9zhw', 36996694, '3295994586', 1115671, 1466473, NULL, '2023-08-08 00:00:00.000', '2023-08-13 00:00:00.000', '2023-03-27 02:03:00.000', 'Matteo Brazzelli', 'Matteo', 'Brazzelli', 'mbrazz.973753@guest.booking.com', '+39 392 930 4171', 2, 0, 'Booking Number: 3295994586\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 244950 Approximate time of arrival: between 17:00 and 18:00 Buongiorno, volevo comunicare che io non posso mangiare glutine e la mia fidanzata è vegetariana. Speriamo di non crearvi troppi problemi. Grazie mille\n\nFurther information: booker_is_genius\nPrepayment: 10650000IDR', '', 10650000, 'IDR', 1597500, 1
    ),
    (
        'clihtx7gn00402zaok4tfryly', 36936373, 'HMZMBH333Q', 1115674, 1466470, NULL, '2023-08-09 00:00:00.000', '2023-08-11 00:00:00.000', '2023-03-25 21:46:00.000', 'Donghyun Seo', 'Donghyun', 'Seo', NULL, '+821059537401', 2, 1, 'Booking Number: HMZMBH333Q\nGuest language: ko', '', 6775993.09, 'IDR', 840000, 1
    ),
    (
        'clihtx7hj00422zao79ffaxq1', 38674672, '2782786658', 1115668, 1466473, NULL, '2023-07-31 00:00:00.000', '2023-08-02 00:00:00.000', '2023-04-28 03:26:00.000', 'Azmira Alam', 'Azmira', 'Alam', 'aalam.613667@guest.booking.com', '+393885885025', 2, 0, 'Booking Number: 2782786658\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** Approximate time of arrival: between 12:00 and 13:00 I want to add a floating breakfast for one day please. BOOKING NOTE : Payment charge is IDR 124200\n\nPrepayment: 5400000IDR', '', 5400000, 'IDR', 810000, 0
    ),
    (
        'clihtx7hs00442zaof60f00x1', 37148149, 'HM9XTRSEXP', 1115674, 1466470, NULL, '2023-08-09 00:00:00.000', '2023-08-11 00:00:00.000', '2023-03-29 18:24:00.000', 'Stephan Leiter-Hölzl', 'Stephan', 'Leiter-Hölzl', NULL, '+436766770220', 3, 0, 'Booking Number: HM9XTRSEXP\nGuest language: de', 'Pick up kalapa boutique resort and yoga cangu at 10.30 price 450k\n\n\nExtra bed', 6776022.96, 'IDR', 840000, 0
    ),
    (
        'clihtx7hy00462zaoyt9yz1n0', 35678221, 'HMDR4Y22A5', 1115668, 1466470, NULL, '2023-08-10 00:00:00.000', '2023-08-13 00:00:00.000', '2023-03-02 06:51:00.000', 'Louis Loschetter', 'Louis', 'Loschetter', NULL, '+352661548911', 2, 0, 'Booking Number: HMDR4Y22A5\nGuest language: de', 'Pick up airport QZ 507\n19:55', 9558995.86, 'IDR', 1185000, 0
    ),
    (
        'clihtx7i100482zaojw0t10h4', 39002425, '3602230226', 1115671, 1466473, NULL, '2023-08-14', '2023-08-16', '2023-05-04 16:47:00.000', 'Adriane Sato', 'Adriane', 'Sato', 'asato.806477@guest.booking.com', '+81 90 3816 5648', 2, 0, 'Booking Number: 3602230226\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 103500\n\nFurther information: booker_is_genius\nPrepayment: 4500000IDR', '', 4500000, 'IDR', 675000, 1
    ),
    (
        'clihtx7i2004a2zaonsaxiejp', 35355706, NULL, 1115674, 1466467, NULL, '2023-08-12', '2023-08-15', '2023-02-24 05:55:00.000', 'Elke Barbier', 'Elke', 'Barbier', 'elke.barbier@hotmail.com', NULL, 2, NULL, '', '', 0, 'IDR', NULL, 0
    ),
    (
        'clihtx7i3004c2zaoy19kscvb', 39929663, '964451629', 1115671, 1556329, NULL, '2023-08-13', '2023-08-16', '2023-05-22 21:23:00.000', 'Aaron Stafford', 'Aaron', 'Stafford', NULL, NULL, 2, 0, '', '', 4921230, 'IDR', NULL, 1
    ),
    (
        'clihtx7id004e2zaosnpezsrr', 37349596, '3016488112', 1115668, 1466473, NULL, '2023-08-14', '2023-08-18', '2023-04-02 18:20:00.000', 'Elliot Duff', 'Elliot', 'Duff', 'eduff.109111@guest.booking.com', '+61 419 772 208', 2, 0, 'Booking Number: 3016488112\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 239200 Approximate time of arrival: between 11:00 and 12:00\n\nFurther information: booker_is_genius\nPrepayment: 10400000IDR', '', 10400000, 'IDR', 1560000, 0
    ),
    (
        'clihtx7ie004g2zao1fivkvte', 35811364, 'HMBAZQJBQR', 1115674, 1466470, NULL, '2023-08-16', '2023-08-19', '2023-03-04 23:13:00.000', 'Sally Avis', 'Sally', 'Avis', NULL, '+41792448323', 2, 0, 'Booking Number: HMBAZQJBQR\nGuest language: de', 'August 16th at 1pm in the hotel \"wapa di ume\" in ubud transfer', 9558567.01, 'IDR', 1185000, 0
    ),
    (
        'clihtx7j2004i2zaobpzx4kfk', 39308911, 'HMXPENNWBZ', 1115674, 1466470, NULL, '2023-08-05 00:00:00.000', '2023-08-08 00:00:00.000', '2023-05-10 10:54:00.000', 'Casey Timorason', 'Casey', 'Timorason', NULL, '+19732487034', 2, 0, 'Booking Number: HMXPENNWBZ\nGuest language: en', '', 9558989.04, 'IDR', 1185000, 0
    ),
    (
        'clihtx7jv004k2zaofbnmpdxk', 37391956, NULL, 1115668, 1466467, NULL, '2023-08-18', '2023-08-19', '2023-04-03 06:15:00.000', 'Damien Dumas', 'Damien', 'Dumas', 'dumas1308@gmail.com', NULL, 2, NULL, '', '', 165.35, 'IDR', NULL, 0
    ),
    (
        'clihtx7kg004m2zaohuelzm5w', 37066021, '3508172440', 1115674, 1466473, NULL, '2023-08-19', '2023-08-21', '2023-03-28 04:09:00.000', 'Darya Goncharova', 'Darya', 'Goncharova', 'dgonch.390753@guest.booking.com', '+39 348 329 7522', 3, 0, 'Booking Number: 3508172440\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 133400 Approximate time of arrival: between 14:00 and 15:00 Dear all we have visited your site and we found villa Surya fantastic. Is it available in the dates from 19 to 21 of August?\n\nFurther information: booker_is_genius\nPrepayment: 5800000IDR', '', 5800000, 'IDR', 870000, 0
    ),
    (
        'clihtx7ko004o2zaoqix963xb', 40392779, 'HMWJACJZHQ', 1587920, 1466470, NULL, '2023-08-20', '2023-08-26', '2023-05-31 21:02:00.000', 'Paul Brunini', 'Paul', 'Brunini', NULL, '+61419906746', 2, 0, 'Booking Number: HMWJACJZHQ\nGuest language: en-AU', '', 31339022.84, 'IDR', 3885000, 0
    ),
    (
        'clihtx7ku004q2zaoyzr2rlil', 35563009, 'HM5AJHBM84', 1115668, 1466470, NULL, '2023-08-20', '2023-08-23', '2023-02-28 06:18:00.000', 'Dennis Schaefer', 'Dennis', 'Schaefer', NULL, '+4915772920619', 2, 0, 'Booking Number: HM5AJHBM84\nGuest language: de', '', 9558981.47, 'IDR', 1185000, 0
    ),
    (
        'clihtx7kw004s2zaod94bpk86', 29362130, '790183477', 1115674, 1556329, NULL, '2023-08-22', '2023-08-26', '2022-10-07 16:52:00.000', 'Saurav Mazumder', 'Saurav', 'Mazumder', NULL, NULL, 2, 0, '', '', 8200000, 'IDR', NULL, 1
    ),
    (
        'clihtx7ky004u2zaobw6ksmoc', 39610910, '367603635', 1115668, 1556329, NULL, '2023-08-23', '2023-08-26', '2023-05-16 06:37:00.000', 'safouane ben mansour', 'safouane', 'ben mansour', NULL, NULL, 2, 0, '', '', 6001500, 'IDR', NULL, 1
    ),
    (
        'clihtx7l0004w2zao36l0ay5g', 37392007, NULL, 1115671, 1466467, NULL, '2023-08-16', '2023-08-18', '2023-04-03 06:16:00.000', 'Damien Dumas', 'Damien', 'Dumas', 'dumas1308@gmail.com', NULL, 2, NULL, '', '', 271.17, 'IDR', NULL, 0
    ),
    (
        'clihtx7l2004y2zaorl4wf6e2', 40481477, '3176169596', 1115668, 1466473, NULL, '2023-08-23', '2023-08-26', '2023-06-02 08:17:00.000', 'Audrey Loubère-Claverie', 'Audrey', 'Loubère-Claverie', 'aloube.567884@guest.booking.com', '+33 7 62 80 89 19', 2, 0, 'Booking Number: 3176169596\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 181700\n\nAddress: 40 rue du dragon\n75006\nParis\nFR\nFurther information: booker_is_genius\nPrepayment: 7900000IDR', '', 7900000, 'IDR', 1185000, 1
    ),
    (
        'clihtx7li00502zaor8sfurwv', 40290917, '3258791703', 1115674, 1466473, NULL, '2023-08-26', '2023-08-30', '2023-05-30 01:17:00.000', 'Audrey Loubère-Claverie', 'Audrey', 'Loubère-Claverie', 'aloube.800655@guest.booking.com', '+33 7 62 80 89 19', 2, 0, 'Booking Number: 3258791703\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 239200\n\nAddress: 40 rue du dragon\n75006\nParis\nFR\nFurther information: booker_is_genius\nPrepayment: 10400000IDR', '', 10400000, 'IDR', 1560000, 1
    ),
    (
        'clihtx7m400522zaoif1fmuxr', 38872045, '3629555753', 1115674, 1466473, NULL, '2023-08-23', '2023-08-25', '2023-05-02 06:50:00.000', 'Oğulcan Girgin', 'Oğulcan', 'Girgin', 'ogirgi.521651@guest.booking.com', '+90 546 570 68 14', 1, 0, 'Booking Number: 3629555753\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 124200\n\nAddress: 2. Cihan Sk. 6B, 34303 İstanbul, Küçükçekmece\nİstanbul\nTR\nFurther information: booker_is_genius\nPrepayment: 5400000IDR', '', 5400000, 'IDR', 810000, 1
    ),
    (
        'clihtx7n400542zaodfg4xkou', 39612023, '367607079', 1115668, 1556329, NULL, '2023-08-26', '2023-08-29', '2023-05-16 07:10:00.000', 'BEN MANSOUR SAFOUANE', 'BEN', 'MANSOUR SAFOUANE', NULL, '33 0781960195', 2, 0, '', '', 6001500, 'IDR', NULL, 0
    ),
    (
        'clihtx7nb00562zao4c4zcvd5', 36554872, '915660841', 1115674, 1556329, NULL, '2023-08-27', '2023-08-29', '2023-03-18 17:31:00.000', 'Fritz Ho', 'Fritz', 'Ho', NULL, '65 +6581189698', 2, 0, '', '', 4100000, 'IDR', NULL, 1
    ),
    (
        'clihtx7nz00582zaoe9ot4lho', 37389013, '2159203951', 1115671, 1466473, NULL, '2023-08-26', '2023-09-01', '2023-04-03 05:14:00.000', 'Stefano Cogliati', 'Stefano', 'Cogliati', 'scogli.917353@guest.booking.com', '+39 331 307 1802', 2, 0, 'Booking Number: 2159203951\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** Approximate time of arrival: between 18:00 and 19:00 BOOKING NOTE : Payment charge is IDR 292100\n\nFurther information: booker_is_genius\nPrepayment: 12700000IDR', '', 12700000, 'IDR', 1905000, 0
    ),
    (
        'clihtx7oa005a2zaobqozx69x', 38093995, '2192425768', 1115668, 1466473, NULL, '2023-08-28', '2023-08-30', '2023-04-17 06:01:00.000', 'Rachel Meyer', 'Rachel', 'Meyer', 'rmeyer.374335@guest.booking.com', '+1 520 979 2015', 2, 0, 'Booking Number: 2192425768\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 124200\n\nPrepayment: 5400000IDR', '', 5400000, 'IDR', 810000, 1
    ),
    (
        'clihtx7ob005c2zao7k5gvg65', 37246474, '3219434107', 1115668, 1466473, NULL, '2023-09-01', '2023-09-04', '2023-03-31 10:07:00.000', 'Itzel Sanchez', 'Itzel', 'Sanchez', 'isanch.996297@guest.booking.com', '+1 214 622 0310', 2, 0, 'Booking Number: 3219434107\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** Approximate time of arrival: between 16:00 and 17:00 BOOKING NOTE : Payment charge is IDR 181700\n\nPrepayment: 7900000IDR', '', 7900000, 'IDR', 1185000, 0
    ),
    (
        'clihtx7ob005d2zaoi05bshp5', 37649245, '2245084041', 1115671, 1466473, NULL, '2023-09-02', '2023-09-05', '2023-04-08 12:59:00.000', 'eric estrada', 'eric', 'estrada', 'eestra.168071@guest.booking.com', '+1 900 55050971', 2, 0, 'Booking Number: 2245084041\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 150650 Approximate time of arrival: between 14:00 and 15:00\n\nFurther information: booker_is_genius\nPrepayment: 6550000IDR', '', 6550000, 'IDR', 982500, 1
    ),
    (
        'clihtx7ob005e2zaozohts9yj', 39883757, '368491347', 1115668, 1556329, NULL, '2023-09-07', '2023-09-09', '2023-05-22 01:14:00.000', 'Maykel Onsy', 'Maykel', 'Onsy', NULL, NULL, 2, 0, '', '', 4001000, 'IDR', NULL, 1
    ),
    (
        'clihtx7px005i2zaoqvt965it', 39881324, '368486447', 1115668, 1556329, NULL, '2023-09-07', '2023-09-09', '2023-05-22 00:35:00.000', 'Maykel Onsy', 'Maykel', 'Onsy', NULL, '+20 1282012361', 2, 0, '', '', 4001000, 'IDR', NULL, 1
    ),
    (
        'clihtx7q1005k2zaojkgphimi', 37705951, '2445664922', 1115671, 1466473, NULL, '2023-09-05', '2023-09-11', '2023-04-10 00:12:00.000', 'Sebastiaan Knoops', 'Sebastiaan', 'Knoops', 'sknoop.888830@guest.booking.com', '+44 347 622 7509', 2, 0, 'Booking Number: 2445664922\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 292100 Approximate time of arrival: between 13:00 and 14:00\n\nFurther information: booker_is_genius\nPrepayment: 12700000IDR', '', 12700000, 'IDR', 1905000, 0
    ),
    (
        'clihtx7qe005m2zao3brdjrgh', 37632361, '2659497486', 1115674, 1466473, NULL, '2023-08-30', '2023-09-04', '2023-04-08 01:08:00.000', 'Amparo Herrera', 'Amparo', 'Herrera', 'aherre.644861@guest.booking.com', '+491785462360', 2, 0, 'Booking Number: 2659497486\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 296700\n\nAddress: Juan F Quiroga 343\nAimogasta\nAR\nFurther information: booker_is_genius\nPrepayment: 12900000IDR', '', 12900000, 'IDR', 1935000, 0
    ),
    (
        'clihtx7qs005o2zaofs8mdzn2', 36742777, 'HMDXDTQP29', 1115668, 1466470, NULL, '2023-09-09', '2023-09-11', '2023-03-22 01:37:00.000', 'Krista O&#39;Donnell', 'Krista', 'O&#39;Donnell', NULL, '+17146146031', 2, 0, 'Booking Number: HMDXDTQP29\nGuest language: en', '', 6533983.99, 'IDR', 810000, 0
    ),
    (
        'clihtx7ra005q2zaoslp4scv6', 35184865, '354218059', 1115668, 1556329, NULL, '2023-09-19', '2023-09-21', '2023-02-21 02:49:00.000', 'Pauline Denis', 'Pauline', 'Denis', NULL, NULL, 2, 0, '', '', 4100000, 'IDR', NULL, 0
    ),
    (
        'clihtx7rb005s2zaof79dysjo', 31918429, '344092159', 1115671, 1556329, NULL, '2023-09-12', '2023-09-18', '2022-12-14 06:49:00.000', 'Katrin Pasternak', 'Katrin', 'Pasternak', NULL, NULL, 2, 0, '', '', 10086000, 'IDR', NULL, 0
    ),
    (
        'clihtx7rb005t2zaocudvpepm', 40547729, '370403723', 1115674, 1556329, NULL, '2023-09-22', '2023-09-26', '2023-06-03 20:55:00.000', 'Anett Gleichner', 'Anett', 'Gleichner', NULL, '+49 17634318363', 2, 0, '', '', 8002000, 'IDR', NULL, 0
    ),
    (
        'clihtx7rc005w2zao3o9q4vlx', 35549545, NULL, 1115674, 1466464, NULL, '2023-09-24', '2023-09-26', '2023-02-28 02:43:00.000', 'Test Alexis Coates', 'Test', 'Alexis Coates', 'lexincl@hotmail.com', NULL, 1, 0, '', '', 5000000, 'IDR', NULL, 1
    ),
    (
        'clihtx7rf005y2zaor9cduuij', 35571226, '3067851789', 1115674, 1466473, NULL, '2023-09-10', '2023-09-16', '2023-02-28 14:26:00.000', 'Kristen Bischoff', 'Kristen', 'Bischoff', 'kbisch.445016@guest.booking.com', '+1 505 870 0219', 1, 0, 'Booking Number: 3067851789\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 354200 Approximate time of arrival: between 23:00 and 00:00 This guest is interested in your airport shuttle service and would like to get more information from you.\n\nFurther information: booker_is_genius\nPrepayment: 15400000IDR', '', 15400000, 'IDR', 2310000, 0
    ),
    (
        'clihtx7s700602zaol5edc1yw', 37392688, '2786526831', 1115668, 1466473, NULL, '2023-09-12', '2023-09-16', '2023-04-03 06:36:00.000', 'Julian Teichter', 'Julian', 'Teichter', 'jteich.981799@guest.booking.com', '+49 173 6719547', 2, 0, 'Booking Number: 2786526831\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 239200\n\nFurther information: booker_is_genius\nPrepayment: 10400000IDR', '', 10400000, 'IDR', 1560000, 0
    ),
    (
        'clihtx7sl00622zaog7yub6eg', 36434632, NULL, 1115671, 1466467, NULL, '2023-09-27', '2023-09-28', '2023-03-16 04:18:00.000', 'Kevin Andrews', 'Kevin', 'Andrews', 'kevinbigfoot13@gmail.com', NULL, 1, NULL, '', '', 1.19, 'IDR', NULL, 1
    ),
    (
        'clihtx7sn00642zao9brikg1t', 40216898, NULL, 1587920, 1466458, NULL, '2023-10-06', '2024-01-10', '2023-05-28 08:58:00.000', 'Masakali Blocked', 'Masakali', 'Blocked', 'admin@masakaliretreat.com', NULL, NULL, NULL, 'Akasha Booked', '', NULL, 'IDR', NULL, 1
    ),
    (
        'clihtx7t400662zaogelj4u1p', 37686280, '930569165', 1115671, 1556329, NULL, '2023-10-25', '2023-10-26', '2023-04-09 09:26:00.000', 'Michael Connolly', 'Michael', 'Connolly', NULL, '61 0409324331', 2, 0, '', '', 1681000, 'IDR', NULL, 1
    ),
    (
        'clihtx7tk00682zaofkx823np', 33387280, '348940227', 1115668, 1556329, NULL, '2023-10-22', '2023-10-25', '2023-01-17 06:37:00.000', 'Hugo Paganelli', 'Hugo', 'Paganelli', NULL, '+33 0607304988', 2, 0, '', '', 6150000, 'IDR', NULL, 0
    ),
    (
        'clihtx7tm006a2zaow47ou9dp', 40217492, NULL, 1574678, 1466458, NULL, '2023-10-12', '2023-12-16', '2023-05-28 09:46:00.000', NULL, '', '', NULL, NULL, 0, 0, '', '', 0, 'IDR', NULL, 0
    ),
    (
        'clihtx7to006c2zaolk0acjr8', 23783222, NULL, 1115668, 1466467, NULL, '2023-11-01', '2023-11-02', '2022-06-01 06:24:00.000', 'Alexis Coates', 'Alexis', 'Coates', 'lexincl@gmail.com', NULL, 1, NULL, '', '', 1.08, 'IDR', NULL, 1
    ),
    (
        'clihtx7tp006e2zaondxjgjfi', 37455370, '888217076', 1115674, 1556329, NULL, '2023-11-20', '2023-11-22', '2023-04-04 15:04:00.000', 'Chang dae Lee', 'Chang', 'dae Lee', NULL, NULL, 2, 0, '', '', 4428000, 'IDR', NULL, 0
    ),
    (
        'clihtx7tp006f2zaorbskqdf3', 36110293, 'HMYXRAXXDH', 1115668, 1466470, NULL, '2023-11-05', '2023-11-06', '2023-03-10 05:27:00.000', 'Stella Sedgwick', 'Stella', 'Sedgwick', NULL, '+447495703055', 2, 0, 'Booking Number: HMYXRAXXDH\nGuest language: en', 'Honeymoon packages massage change white flowers bath', 3509078.68, 'IDR', 435000, 1
    ),
    (
        'clihtx7ur006i2zaofesv6qys', 34579502, NULL, 1115674, 1466467, NULL, '2023-11-13', '2023-11-16', '2023-02-09 01:05:00.000', 'Lim Eng Hoo', 'Lim', 'Eng Hoo', 'email4leh@gmail.com', NULL, 2, NULL, '', '', 0, 'IDR', NULL, 0
    ),
    (
        'clihtx7ut006k2zao9fu4tchy', 38408728, '363727751', 1115668, 1556329, NULL, '2023-11-07', '2023-11-20', '2023-04-23 07:04:00.000', 'dave maggen', 'dave', 'maggen', NULL, '+32 456340347', 1, 0, '', '', 27306000, 'IDR', NULL, 1
    ),
    (
        'clihtx7uu006m2zao0ysq9z84', 34274297, NULL, 1574678, 1466458, NULL, '2023-10-29', '2024-01-29', '2023-02-03 06:31:00.000', NULL, '', '', NULL, NULL, NULL, NULL, '', '', NULL, 'IDR', NULL, 1
    ),
    (
        'clihtx7vb006o2zaou1oblc25', 37649497, '2479279686', 1115671, 1466473, NULL, '2023-08-20', '2023-08-24', '2023-04-08 13:38:00.000', 'Ruwini Taleyratne', 'Ruwini', 'Taleyratne', 'rtaley.961808@guest.booking.com', '+61 437 401 647', 2, 0, 'Booking Number: 2479279686\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 197800\n\nFurther information: booker_is_genius\nPrepayment: 8600000IDR', '', 8600000, 'IDR', 1290000, 0
    ),
    (
        'clihtx7vu006q2zaopq3v739x', 36550750, '358295851', 1115671, 1556329, NULL, '2023-12-14', '2023-12-16', '2023-03-18 15:25:00.000', 'aadil dhooma', 'aadil', 'dhooma', NULL, '0823289999', 2, 0, '', '', 3608000, 'IDR', NULL, 1
    ),
    (
        'clihtx7w6006s2zaodmal9ghq', 40510865, '933989068', 1587920, 1556329, NULL, '2024-01-01', '2024-01-03', '2023-06-02 23:34:00.000', 'Jisook Kang', 'Jisook', 'Kang', NULL, NULL, 4, 0, '', '', 7841960, 'IDR', NULL, 0
    ),
    (
        'clihtx7w8006u2zao03x947n1', 37067884, NULL, 1115668, 1466467, NULL, '2023-11-29', '2023-11-30', '2023-03-28 04:40:00.000', 'Kevin Andrews', 'Kevin', 'Andrews', 'kevinbigfoot13@gmail.com', NULL, 1, NULL, '', '', 1.2, 'IDR', NULL, 1
    ),
    (
        'clihtx7w9006w2zaokvflknck', 40216895, NULL, 1574678, 1466464, NULL, '2023-10-06', '2024-01-10', '2023-05-28 08:58:00.000', NULL, '', '', NULL, NULL, 0, 0, '', '', 576000000, 'IDR', NULL, 1
    ),
    (
        'cll62y1gd00052z64h6psbkko', 44085365, 'HMHA5JCWB4', 1115668, 1466470, NULL, '2023-08-13', '2023-08-14', '2023-08-08 15:23:00.000', 'Seda Karaca', 'Seda', 'Karaca', NULL, '+905077743857', 2, 0, 'Booking Number: HMHA5JCWB4\nGuest language: tr', '', 3206462.74, 'IDR', 441263.32, 0
    ),
    (
        'cll62y1gv000c2z645jnvd2gl', 42446720, '', 1574678, 1466458, NULL, '2023-08-08 00:00:00.000', '2023-08-13 00:00:00.000', '2023-07-09 10:55:00.000', NULL, '', '', NULL, NULL, 0, 0, '', '', 0, 'IDR', NULL, 0
    ),
    (
        'cll62y1gv000d2z6447msdsfn', 43257578, '', 1115671, 1466464, NULL, '2023-08-08 00:00:00.000', '2023-08-13 00:00:00.000', '2023-07-24 04:12:00.000', 'Matteo Brazzelli', 'Matteo', 'Brazzelli', NULL, '+39 392 930 4171', 0, 0, 'Payment already', 'Pick up airport \nFlight VJ997 arrive 4.25pm', 10250000, 'IDR', NULL, 0
    ),
    (
        'cll62y1gw000l2z64tw0ip0r7', 42419645, '375838467', 1574678, 1556329, NULL, '2023-08-12', '2023-08-14', '2023-07-08 21:19:00.000', 'MIJU WOO', 'MIJU', 'WOO', NULL, '82 +82 10 62891071', 5, 0, '', '', 9602400, 'IDR', NULL, 1
    ),
    (
        'cll62y1iw000n2z64vmjy5j5z', 41167229, '3490841136', 1115671, 1466473, NULL, '2023-08-13', '2023-08-15', '2023-06-15 13:13:00.000', 'James Smith', 'James', 'Smith', 'jsmith.389716@guest.booking.com', '+971 50 815 9734', 2, 0, 'Booking Number: 3490841136\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** Approximate time of arrival: between 12:00 and 13:00 BOOKING NOTE : Payment charge is IDR 103500\n\nFurther information: booker_is_genius\nPrepayment: 4500000IDR', '', 4500000, 'IDR', 675000, 0
    ),
    (
        'cll62y1ke000r2z6467a8t3t0', 42947462, '3218413336', 1115674, 1466473, NULL, '2023-08-15', '2023-08-16', '2023-07-18 05:37:00.000', 'Navodit Ravi', 'Navodit', 'Ravi', 'nravi.511900@guest.booking.com', '+91 99867 37439', 2, 0, 'Booking Number: 3218413336\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** This is a Smart Flex reservation. Upgraded policy: Free cancellation until 4 days before check-in. Find more info here https://admin.booking.com/hotel/hoteladmin/extranet_ng/manage/booking.html?hotel_id=7951067&res_id=3218413336 Approximate time of arrival: between 13:00 and 14:00 Coming to celebrate our Anniversary BOOKING NOTE : Payment charge is IDR 66700\n\nFurther information: booker_is_genius\nPrepayment: 2900000IDR', '', 2900000, 'IDR', 435000, 0
    ),
    (
        'cll62y1ki000u2z644ys1vuqs', 42606788, NULL, 1587920, 1466458, NULL, '2023-08-15', '2023-08-16', '2023-07-12 02:52:00.000', 'Masakali Blocked', 'Masakali', 'Blocked', 'admin@masakaliretreat.com', NULL, NULL, NULL, 'Akasha Booked', '', NULL, 'IDR', NULL, 0
    ),
    (
        'cll62y1ki000v2z640r9gqqh4', 42606779, '2834710068', 1574678, 1466473, NULL, '2023-08-15', '2023-08-16', '2023-07-12 02:52:00.000', 'Vanessa Traini', 'Vanessa', 'Traini', 'vtrain.502521@guest.booking.com', '+33 6 33 14 50 53', 2, 2, 'Booking Number: 2834710068\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 147200\n\nAddress: 71 allée du nievre\nValserhone\nFR\nFurther information: booker_is_genius\nPrepayment: 6400000IDR', '', 6400000, 'IDR', 960000, 0
    ),
    (
        'cll62y1ku00112z64mcq28meg', 42701426, NULL, 1587920, 1466458, NULL, '2023-08-16', '2023-08-18', '2023-07-13 20:22:00.000', 'Masakali Blocked', 'Masakali', 'Blocked', 'admin@masakaliretreat.com', NULL, NULL, NULL, 'Akasha Booked', '', NULL, 'IDR', NULL, 0
    ),
    (
        'cll62y1m000152z649jevfaeb', 42701423, '967865688', 1574678, 1556329, NULL, '2023-08-16', '2023-08-18', '2023-07-13 20:22:00.000', 'DAUN JEONG', 'DAUN', 'JEONG', NULL, '01085388834', 6, 2, '', '', 9922480, 'IDR', NULL, 0
    ),
    (
        'cll62y1o1001a2z647bmdo7g5', 41762708, '3746954215', 1115671, 1466473, NULL, '2023-08-18', '2023-08-20', '2023-06-27 03:01:00.000', 'Linda honebeek', 'Linda', 'honebeek', 'bheems.539786@guest.booking.com', '+31 6 46227102', 2, 0, 'Booking Number: 3746954215\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 103500 I’m a travel agent booking for a client: Linda Honebeek for 1 adult and 1 child age 11 years old. I can’t get in touch with you by email or phone. Can you please contact me via WhatsApp for direct bookings? +31646227102 Or email info@abalipointofview.com\n\nAddress: St Rochusstraat 3\n5611 RE\nEindhoven\nNL\nFurther information: booker_is_genius\nPrepayment: 4500000IDR', '', 4500000, 'IDR', 675000, 1
    ),
    (
        'cll62y1o5001f2z64ks77db9k', 42174002, 'HMEF3JBPRW', 1115674, 1466470, NULL, '2023-08-11 00:00:00.000', '2023-08-12 00:00:00.000', '2023-07-04 12:54:00.000', 'Connor McSweeney', 'Connor', 'McSweeney', NULL, '+13174109393', 2, 0, 'Booking Number: HMEF3JBPRW\nGuest language: en', 'Honeymoon packages white wine, massage 4 pm', 3509042.41, 'IDR', 482832.92, 0
    ),
    (
        'cll62y1pf001l2z64bwc8g6n2', 42446735, NULL, 1574678, 1466458, NULL, '2023-08-20', '2023-08-26', '2023-07-09 10:56:00.000', NULL, '', '', NULL, NULL, NULL, NULL, '', '', NULL, 'IDR', NULL, 0
    ),
    (
        'cll62y1r4001t2z6456k7q5bo', 43967321, 'HM228Y4TDX', 1115674, 1466470, NULL, '2023-08-21', '2023-08-25', '2023-08-06 06:06:00.000', 'Christopher Robinson', 'Christopher', 'Robinson', NULL, '+447854295099', 2, 0, 'Booking Number: HM228Y4TDX\nGuest language: en-GB', '', 12583919.83, 'IDR', 1731617.14, 0
    ),
    (
        'cll62y1rd001x2z647vt4qtlf', 41582069, '2470716867', 1115668, 1466473, NULL, '2023-08-23', '2023-08-25', '2023-06-23 14:38:00.000', 'John Filimone', 'John', 'Filimone', 'jfilim.333716@guest.booking.com', '+61411210004', 2, 0, 'Booking Number: 2470716867\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 124200\n\nAddress: 27 encore boulevard\nCranbourne south\nAU\nFurther information: booker_is_genius\nPrepayment: 5400000IDR', '', 5400000, 'IDR', 810000, 1
    ),
    (
        'cll62y1re00202z64u5kxv3i1', 43240016, '3838471338', 1115671, 1466473, NULL, '2023-08-24', '2023-08-26', '2023-07-23 22:47:00.000', 'Jill Romine', 'Jill', 'Romine', 'jromin.404395@guest.booking.com', '+1 732 598 8519', 1, 0, 'Booking Number: 3838471338\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 103500 Approximate time of arrival: between 14:00 and 15:00\n\nFurther information: booker_is_genius\nPrepayment: 4500000IDR', '', 4500000, 'IDR', 675000, 0
    ),
    (
        'cll62y1rw00232z643q1mqu9h', 43517561, '2821736847', 1115668, 1466473, NULL, '2023-08-25', '2023-08-26', '2023-07-28 22:39:00.000', 'Shinnawi Mohd', 'Shinnawi', 'Mohd', 'smohd.343250@guest.booking.com', '+61421959397', 2, 0, 'Booking Number: 2821736847\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 66700 Approximate time of arrival: between 11:00 and 12:00\n\nFurther information: booker_is_genius\nPrepayment: 2900000IDR', '', 2900000, 'IDR', 435000, 0
    ),
    (
        'cll62y1te00292z64ue8npu5a', 43518011, '2639032767', 1115674, 1466473, NULL, '2023-08-26', '2023-08-27', '2023-07-28 22:48:00.000', 'Shinnawi Mohd', 'Shinnawi', 'Mohd', 'smohd.927846@guest.booking.com', '+61421959397', 2, 0, 'Booking Number: 2639032767\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 66700 Approximate time of arrival: between 10:00 and 11:00 I will be spending the previous night at your other villa (CHANDRA VILLA). We kindly need to check out and in to this Villa at the same time if possible. Thank you.\n\nFurther information: booker_is_genius\nPrepayment: 2900000IDR', '', 2900000, 'IDR', 435000, 0
    ),
    (
        'cll62y1tf002b2z64f93gvvuv', 43212302, '2482209191', 1574678, 1466473, NULL, '2023-08-27', '2023-09-09', '2023-07-23 06:01:00.000', 'Tomasz Kraus', 'Tomasz', 'Kraus', 'tkraus.684831@guest.booking.com', '+48 507 819 829', 2, 0, 'Booking Number: 2482209191\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 1918200\n\nFurther information: booker_is_genius\nPrepayment: 83400000IDR', 'Saya menderita penyakit gangguan saluran pencernaan dan harus mengikuti diet gluten yang ketat.\nSaya menjadi sangat sakit jika saya makan makanan yang mengandung tepung terigu atau biji gandum atau tepung rye, barli dan oat.\nApakah makanan ini mengandung tepung terigu atau biji gandum atau tepung rye, barli dan oat? Jika kamu tidak yakin mengenai kandungan makanan ini, tolong beritahukan kepada saya.\nSaya dapat makan makanan yang men- gandung nasi, jagung, kentang, semua jenis sayur-sayuran dan buah- buahan, telur, keju, susu, daging dan ikan - asal semuanya tidak dimasak dengan tepung gandum, tepung terigu, tepung roti atau saus.\nTerima kasih atas pertolongannya.', 83400000, 'IDR', 12510000, 1
    ),
    (
        'cll62y1u4002j2z64wrqz9mk4', 43212308, NULL, 1587920, 1466458, NULL, '2023-08-27', '2023-09-09', '2023-07-23 06:01:00.000', 'Masakali Blocked', 'Masakali', 'Blocked', 'admin@masakaliretreat.com', NULL, NULL, NULL, 'Akasha Booked', '', NULL, 'IDR', NULL, 0
    ),
    (
        'cll62y1u9002l2z64lkbdof92', 43460885, '2481375057', 1115674, 1466473, NULL, '2023-08-28', '2023-08-30', '2023-07-27 21:17:00.000', 'Kelly Leblanc', 'Kelly', 'Leblanc', 'klebla.245817@guest.booking.com', '+33 6 99 34 87 40', 2, 0, 'Booking Number: 2481375057\nGuest message: You\'ve received a virtual credit card for this reservation.You can charge it as of . BOOKING NOTE : Payment charge is IDR 124200 This is a Smart Flex reservation. Upgraded policy: Free cancellation until 4 days before check-in. Find more info here https://admin.booking.com/hotel/hoteladmin/extranet_ng/manage/booking.html?hotel_id=7951067&res_id=2481375057\n\nFurther information: booker_is_genius\nPrepayment: 5400000IDR', '', 5400000, 'IDR', 810000, 0
    ),
    (
        'cll62y1up002n2z64d9fbub0w', 41850695, '3641857361', 1115668, 1466473, NULL, '2023-08-29', '2023-09-01', '2023-06-28 18:01:00.000', 'Farnaz Tabatabaie', 'Farnaz', 'Tabatabaie', 'ftabat.515614@guest.booking.com', '+61458822272', 2, 0, 'Booking Number: 3641857361\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 181700\n\nFurther information: booker_is_genius\nPrepayment: 7900000IDR', '', 7900000, 'IDR', 1185000, 0
    ),
    (
        'cll62y1w9002v2z642iqt4n2p', 42862253, '3064498358', 1115671, 1466473, NULL, '2023-09-01', '2023-09-03', '2023-07-16 21:50:00.000', 'Ahmad Shuka', 'Ahmad', 'Shuka', 'ashuka.631717@guest.booking.com', '+962 7 9898 1052', 2, 0, 'Booking Number: 3064498358\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 103500\n\nFurther information: booker_is_genius\nPrepayment: 4500000IDR', '', 4500000, 'IDR', 675000, 0
    ),
    (
        'cll62y1wl002z2z64yeljl6b5', 40924928, '2360926179', 1574678, 1466473, NULL, '2023-09-03', '2023-09-05', '2023-06-11 01:59:00.000', 'Amal Alhindi', 'Amal', 'Alhindi', 'aalhin.926983@guest.booking.com', '+966 54 666 9599', 7, 0, 'Booking Number: 2360926179\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 285200\n\nAddress: Saudi Arabia\nDammam\nSA\nFurther information: booker_is_genius\nPrepayment: 12400000IDR', '', 12400000, 'IDR', 1860000, 1
    ),
    (
        'cll62y1wn00312z64v5fnl911', 40924931, NULL, 1587920, 1466458, NULL, '2023-09-03', '2023-09-05', '2023-06-11 01:59:00.000', 'Masakali Blocked', 'Masakali', 'Blocked', 'admin@masakaliretreat.com', NULL, NULL, NULL, 'Akasha Booked', '', NULL, 'IDR', NULL, 1
    ),
    (
        'cll62y1wu00332z64cz007wpy', 42737450, 'HM8XQSXDZX', 1115668, 1466470, NULL, '2023-09-05', '2023-09-07', '2023-07-14 10:53:00.000', 'Laith Alqaisi', 'Laith', 'Alqaisi', NULL, '+16147872304', 2, 0, 'Booking Number: HM8XQSXDZX\nGuest language: en', '', 6533868.59, 'IDR', 899165.55, 0
    ),
    (
        'cll62y1x300352z64i4zskrwz', 43869374, 'HMK3QWZHYZ', 1115668, 1466470, NULL, '2023-08-19', '2023-08-20', '2023-08-04 15:31:00.000', 'Christina Bacchiella', 'Christina', 'Bacchiella', NULL, '+61401650658', 2, 0, 'Booking Number: HMK3QWZHYZ\nGuest language: en-AU', '', 3508957.91, 'IDR', 482819.76, 0
    ),
    (
        'cll62y1yd00372z64dwdxb13e', 40992401, '3999229561', 1115674, 1466473, NULL, '2023-09-05', '2023-09-06', '2023-06-12 15:12:00.000', 'Jennifer Chang', 'Jennifer', 'Chang', 'jchang.988343@guest.booking.com', '+1 503 719 2443', 3, 0, 'Booking Number: 3999229561\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 71300 Approximate time of arrival: between 19:00 and 20:00 The booker has expressed interest on free \'bike rental\' service (based on availability).\n\nFurther information: booker_is_genius\nPrepayment: 3100000IDR', '', 3100000, 'IDR', 465000, 0
    ),
    (
        'cll62y1yf00392z64v4h1ktyl', 41216807, 'HM4RRAB4PR', 1115674, 1466470, NULL, '2023-09-06', '2023-09-08', '2023-06-16 06:45:00.000', 'Claire Weber', 'Claire', 'Weber', NULL, '+33635102460', 2, 0, 'Booking Number: HM4RRAB4PR\nGuest language: fr', '', 6534039.11, 'IDR', 810000, 0
    ),
    (
        'cll62y1yx003h2z64da91k7oh', 44073080, '3143845846', 1115668, 1466473, NULL, '2023-09-07', '2023-09-09', '2023-08-08 05:07:00.000', 'Jeenu Cruz', 'Jeenu', 'Cruz', 'jcruz.267329@guest.booking.com', '+91 90041 64211', 2, 0, 'Booking Number: 3143845846\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 124200 This is a Smart Flex reservation. Upgraded policy: Free cancellation until 4 days before check-in. Find more info here https://admin.booking.com/hotel/hoteladmin/extranet_ng/manage/booking.html?hotel_id=7951067&res_id=3143845846\n\nFurther information: booker_is_genius\nPrepayment: 5400000IDR', '', 5400000, 'IDR', 810000, 0
    ),
    (
        'cll62y1yy003l2z641ao0iui1', 43636214, '3227600093', 1115674, 1466473, NULL, '2023-09-09', '2023-09-10', '2023-07-31 12:25:00.000', 'Bon Joshua Acha John Carlo Ravanes', 'Bon', 'Joshua Acha John Carlo Ravanes', 'bacha.764065@guest.booking.com', '+63 2035640799', 2, 0, 'Booking Number: 3227600093\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 66700 NonSmoke, TwinBeds\n\nAddress: 30 08 Prudential Tower, 19 Cecil St\nN/A\nbangkok\nPH\nPrepayment: 2900000IDR', '', 2900000, 'IDR', 435000, 0
    ),
    (
        'cll62y1zc003n2z64zh53qteb', 40938290, '371522715', 1574678, 1556329, NULL, '2023-09-10', '2023-09-14', '2023-06-11 09:49:00.000', 'Jin Ni Ooi', 'Jin', 'Ni Ooi', NULL, '+44 7598433683', 7, 0, '', '', 19524880, 'IDR', NULL, 1
    ),
    (
        'cll62y215003s2z6401fo5z2x', 40938293, NULL, 1587920, 1466458, NULL, '2023-09-10', '2023-09-14', '2023-06-11 09:49:00.000', 'Masakali Blocked', 'Masakali', 'Blocked', 'admin@masakaliretreat.com', NULL, NULL, NULL, 'Akasha Booked', '', NULL, 'IDR', NULL, 1
    ),
    (
        'cll62y21c003v2z644cz35une', 43229051, '976341756', 1115668, 1556329, NULL, '2023-09-17', '2023-09-18', '2023-07-23 19:25:00.000', 'KOSUKE MATSUO', 'KOSUKE', 'MATSUO', NULL, '+81 08014155012', 2, 0, '', '', 2000500, 'IDR', NULL, 0
    ),
    (
        'cll62y21n003z2z64p9pe5ap1', 42549959, '2401234832', 1115674, 1466473, NULL, '2023-09-16', '2023-09-20', '2023-07-11 03:43:00.000', 'Alyssa Oplinger', 'Alyssa', 'Oplinger', 'aoplin.276633@guest.booking.com', '+1 724 875 5655', 2, 0, 'Booking Number: 2401234832\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** We would like to book airport transportation just upon arrival please. Our flight arrives at 11:50pm on September 16th BOOKING NOTE : Payment charge is IDR 239200\n\nFurther information: booker_is_genius\nPrepayment: 10400000IDR', '**AIRPORT TRANSFER**\n11:50pm on September 16th', 10400000, 'IDR', 1560000, 0
    ),
    (
        'cll62y21q00412z64vu3llu1r', 40980812, 'HMMMNYPNFZ', 1115674, 1466470, NULL, '2023-09-20', '2023-09-22', '2023-06-12 05:04:00.000', 'Alexandre Piscone', 'Alexandre', 'Piscone', NULL, '+33699771881', 2, 0, 'Booking Number: HMMMNYPNFZ\nGuest language: fr', '', 6534090.27, 'IDR', 810000, 0
    ),
    (
        'cll62y22600452z642thq7y9y', 41043638, '2658115506', 1115671, 1466473, NULL, '2023-09-20', '2023-09-22', '2023-06-13 05:19:00.000', 'ilyasse dahmani', 'ilyasse', 'dahmani', 'idahma.923883@guest.booking.com', '+33 6 21 30 37 81', 2, 0, 'Booking Number: 2658115506\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 103500\n\nAddress: 16 Rue Maraldi, App54, 06300 Nice, France\nNice\nFR\nFurther information: booker_is_genius\nPrepayment: 4500000IDR', '', 4500000, 'IDR', 675000, 1
    ),
    (
        'cll62y23300472z643kk2bpr3', 43930184, '3541641864', 1574678, 1466473, NULL, '2023-09-20', '2023-09-24', '2023-08-05 15:19:00.000', 'Roopini M S', 'Roopini', 'M S', 'hshiva.587785@guest.booking.com', '+64 210 327 511', 6, 1, 'Booking Number: 3541641864\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** We are allergic to mosquito/insect bites. Any kind of pest control treatment before our arrival would be appreciated. We also have a birthday in our family on the 22nd of September (60th birthday) any arrangements that you could make for this special day would be awesome. Please get in touch with us if there are any extra costs for this. Thank you very much. BOOKING NOTE : Payment charge is IDR 561200\n\nFurther information: booker_is_genius\nPrepayment: 24400000IDR', '', 24400000, 'IDR', 3660000, 0
    ),
    (
        'cll62y23h00492z64qd4i9j81', 43930190, NULL, 1587920, 1466458, NULL, '2023-09-20', '2023-09-24', '2023-08-05 15:19:00.000', 'Masakali Blocked', 'Masakali', 'Blocked', 'admin@masakaliretreat.com', NULL, NULL, NULL, 'Akasha Booked', '', NULL, 'IDR', NULL, 0
    ),
    (
        'cll62y23l004b2z6474odjcns', 41381255, '987041305', 1115668, 1556329, NULL, '2023-09-21', '2023-09-24', '2023-06-19 21:46:00.000', 'Fernando Benito Aranzana', 'Fernando', 'Benito Aranzana', NULL, '64 0272611913', 2, 0, '', 'Honeymoon packages already payment with sister surprise for brother', 6001500, 'IDR', NULL, 0
    ),
    (
        'cll62y23t004f2z64o48jgalp', 43987871, '3078493297', 1115671, 1466473, NULL, '2023-09-21', '2023-09-26', '2023-08-06 20:42:00.000', 'Cansu Heathcote', 'Cansu', 'Heathcote', 'cheath.200511@guest.booking.com', '+90 533 728 67 13', 2, 0, 'Booking Number: 3078493297\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 244950\n\nFurther information: booker_is_genius\nPrepayment: 10650000IDR', '', 10650000, 'IDR', 1597500, 1
    ),
    (
        'cll62y23u004h2z64hs4ynx9u', 40673690, '3855815433', 1115671, 1466473, NULL, '2023-09-22', '2023-09-26', '2023-06-06 04:25:00.000', 'Christin Arold', 'Christin', 'Arold', 'carold.324738@guest.booking.com', '+49 171 9581494', 2, 0, 'Booking Number: 3855815433\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 197800\n\nAddress: Ansbacher Straße 26\n90599\nDietenhofen\nDE\nFurther information: booker_is_genius\nPrepayment: 8600000IDR', '', 8600000, 'IDR', 1290000, 1
    ),
    (
        'cll62y24d004l2z64lrmlmotd', 42174632, '375111903', 1115671, 1556329, NULL, '2023-09-26', '2023-09-28', '2023-07-04 13:49:00.000', 'Filippo Alessandro Pompei', 'Filippo', 'Alessandro Pompei', NULL, NULL, 2, 0, '', '', 3280820, 'IDR', NULL, 1
    ),
    (
        'cll62y24k004n2z64o2xracsg', 41955692, '3927231138', 1115668, 1466473, NULL, '2023-09-26', '2023-09-29', '2023-06-30 14:31:00.000', 'Katherine Kerr', 'Katherine', 'Kerr', 'kkerr.274676@guest.booking.com', '+61492828016', 2, 0, 'Booking Number: 3927231138\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 181700 Approximate time of arrival: between 16:00 and 17:00\n\nFurther information: booker_is_genius\nPrepayment: 7900000IDR', '', 7900000, 'IDR', 1185000, 0
    ),
    (
        'cll62y25d004p2z641y9djffk', 42451664, '1003167269', 1115671, 1556329, NULL, '2023-09-26', '2023-09-28', '2023-07-09 16:40:00.000', 'Filippo Alessandro Pompei', 'Filippo', 'Alessandro Pompei', NULL, NULL, 2, 0, '', '', 3280820, 'IDR', NULL, 0
    ),
    (
        'cll62y25v004r2z64dp4to8va', 41572355, '3567913109', 1115674, 1466473, NULL, '2023-09-27', '2023-10-01', '2023-06-23 05:09:00.000', 'Emrah Görmez', 'Emrah', 'Görmez', 'egorme.309245@guest.booking.com', '+90 534 318 56 27', 2, 0, 'Booking Number: 3567913109\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** Approximate time of arrival: between 14:00 and 15:00 We are coming for honeymoon:) BOOKING NOTE : Payment charge is IDR 257600\n\nFurther information: booker_is_genius\nPrepayment: 11200000IDR', '', 11200000, 'IDR', 1680000, 0
    ),
    (
        'cll62y26a004v2z641pjjozvh', 41388587, '987141537', 1115671, 1556329, NULL, '2023-09-28', '2023-10-02', '2023-06-19 23:52:00.000', 'Jordan Rodgers', 'Jordan', 'Rodgers', NULL, '0430770408', 2, 0, '', '', 6561640, 'IDR', NULL, 1
    ),
    (
        'cll62y26b004x2z64xs6yhky2', 43585436, '634367722', 1115671, 1556329, NULL, '2023-09-28', '2023-10-02', '2023-07-30 14:19:00.000', 'Harneet Bagga', 'Harneet', 'Bagga', NULL, '1 5145669120', 2, 0, '', '', 6561640, 'IDR', NULL, 1
    ),
    (
        'cll62y26c004z2z64hrt91zpg', 44091890, '381221699', 1115674, 1556329, NULL, '2023-10-01', '2023-10-05', '2023-08-08 17:46:00.000', 'Wicus Lombard', 'Wicus', 'Lombard', NULL, '27 0829576657', 2, 0, '', '', 8002000, 'IDR', NULL, 0
    ),
    (
        'cll62y26p00512z644sulek21', 41452013, '987935577', 1115674, 1556329, NULL, '2023-10-02', '2023-10-05', '2023-06-21 01:19:00.000', 'Jordan Rodgers', 'Jordan', 'Rodgers', NULL, '0430770408', 2, 0, '', '', 6001500, 'IDR', NULL, 1
    ),
    (
        'cll62y26u00532z64in5qqw5n', 43659938, '2875840321', 1115671, 1466473, NULL, '2023-10-05', '2023-10-10', '2023-07-31 21:50:00.000', 'Segura Alicia', 'Segura', 'Alicia', 'salici.155974@guest.booking.com', '+34 679 19 03 62', 2, 0, 'Booking Number: 2875840321\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 244950\n\nFurther information: booker_is_genius\nPrepayment: 10650000IDR', '', 10650000, 'IDR', 1597500, 0
    ),
    (
        'cll62y26v00552z64vk3uqi96', 43581689, 'HMHRKXT8C3', 1115668, 1466470, NULL, '2023-10-01', '2023-10-04', '2023-07-30 07:42:00.000', 'Keerthi Reddy', 'Keerthi', 'Reddy', NULL, '+12144989978', 1, 0, 'Booking Number: HMHRKXT8C3\nGuest language: en', '', 9559035.38, 'IDR', 1315380.8, 0
    ),
    (
        'cll62y27n00572z64qz06tgfz', 43441043, 'HM3QR4C9PJ', 1115668, 1466470, NULL, '2023-10-05', '2023-10-08', '2023-07-27 11:24:00.000', 'Brandon Larrarte', 'Brandon', 'Larrarte', NULL, '+14806369408', 2, 0, 'Booking Number: HM3QR4C9PJ\nGuest language: en', '', 9558995.16, 'IDR', 1315320.63, 0
    ),
    (
        'cll62y28g005d2z64oh39crkj', 44165165, '991576256', 1115671, 1556329, NULL, '2023-10-12', '2023-10-14', '2023-08-09 23:22:00.000', 'AYAKA HANAFUSA', 'AYAKA', 'HANAFUSA', NULL, '862160420924', 2, 0, '', '', 3280820, 'IDR', NULL, 0
    ),
    (
        'cll62y28g005f2z64jrzdcvq2', 42873110, '3386669074', 1115674, 1466473, NULL, '2023-10-14', '2023-10-16', '2023-07-17 01:14:00.000', 'Daphne MACINA', 'Daphne', 'MACINA', 'dmacin.363019@guest.booking.com', '+33 6 51 46 19 00', 2, 0, 'Booking Number: 3386669074\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 124200\n\nFurther information: booker_is_genius\nPrepayment: 5400000IDR', '', 5400000, 'IDR', 810000, 0
    ),
    (
        'cll62y28v005h2z64v6efg6dr', 43532669, 'HMJXX8N2WH', 1115668, 1466470, NULL, '2023-10-11', '2023-10-13', '2023-07-29 03:58:00.000', 'Sofiane Mariotte', 'Sofiane', 'Mariotte', NULL, '+33621637258', 2, 0, 'Booking Number: HMJXX8N2WH\nGuest language: fr', '', 6534052.81, 'IDR', 899088.72, 0
    ),
    (
        'cll62y291005l2z64pb5q9foq', 42928718, '3101539725', 1587920, 1466473, NULL, '2023-10-16', '2023-10-26', '2023-07-18 00:40:00.000', 'Fraenzi Di Domenico', 'Fraenzi', 'Di Domenico', 'fdomen.793182@guest.booking.com', '+41 79 453 66 03', 2, 0, 'Booking Number: 3101539725\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 986700 Approximate time of arrival: between 14:00 and 15:00 Is the villa I selected VILLA AKASHA?\n\nFurther information: booker_is_genius\nPrepayment: 42900000IDR', '', 42900000, 'IDR', 6435000, 0
    ),
    (
        'cll62y292005n2z64hcsv9xak', 41722268, 'HMNDS4CEAA', 1115674, 1466470, NULL, '2023-10-07', '2023-10-12', '2023-06-26 14:20:00.000', 'Othmane Ennaki', 'Othmane', 'Ennaki', NULL, '+212698954121', 2, 1, 'Booking Number: HMNDS4CEAA\nGuest language: fr', '', 16214073.88, 'IDR', 2010000, 0
    ),
    (
        'cll62y29u005p2z640spbj4eh', 41604239, '3763530278', 1115671, 1466473, NULL, '2023-10-14', '2023-10-21', '2023-06-23 22:51:00.000', 'Julia Liebeherr', 'Julia', 'Liebeherr', 'jliebe.578819@guest.booking.com', '+49 174 2040171', 2, 0, 'Booking Number: 3763530278\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 339250\n\nFurther information: booker_is_genius\nPrepayment: 14750000IDR', '', 14750000, 'IDR', 2212500, 0
    ),
    (
        'cll62y2ai005r2z64z3k37314', 42914990, '2453093848', 1115674, 1466473, NULL, '2023-10-16', '2023-10-26', '2023-07-17 20:45:00.000', 'Fraenzi Di Domenico', 'Fraenzi', 'Di Domenico', 'fdomen.988605@guest.booking.com', '+41 79 453 66 03', 2, 0, 'Booking Number: 2453093848\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** Approximate time of arrival: between 14:00 and 15:00 we would like to stay overnight in the SURYA VILLA with private pool BOOKING NOTE : Payment charge is IDR 584200\n\nFurther information: booker_is_genius\nPrepayment: 25400000IDR', '', 25400000, 'IDR', 3810000, 1
    ),
    (
        'cll62y2am005v2z64p7qm04t5', 44081678, 'HMCFXFKMRM', 1115674, 1466470, NULL, '2023-10-18', '2023-10-23', '2023-08-08 11:23:00.000', 'Bennett Hillestad', 'Bennett', 'Hillestad', NULL, '+18472202859', 2, 0, 'Booking Number: HMCFXFKMRM\nGuest language: en', '', 15608918.95, 'IDR', 2147890.3, 0
    ),
    (
        'cll62y2au005x2z64bic6lfm3', 43814405, NULL, 1115674, 1466464, NULL, '2023-10-24', '2023-10-28', '2023-08-03 16:02:00.000', 'Ahmed', 'Ahmed', '', NULL, NULL, 0, 0, 'Already paid', '', 10000000, 'IDR', NULL, 0
    ),
    (
        'cll62y2az005z2z6407butntn', 43777049, NULL, 1115674, 1466458, NULL, '2023-10-24', '2023-10-28', '2023-08-02 22:10:00.000', NULL, '', '', NULL, NULL, NULL, NULL, '', '', NULL, 'IDR', NULL, 1
    ),
    (
        'cll62y2bf00652z64sqdj1ha4', 43126028, 'HMY8XWFYAT', 1115668, 1466470, NULL, '2023-10-25', '2023-10-30', '2023-07-21 11:40:00.000', 'Kisha Creasman', 'Kisha', 'Creasman', NULL, '+19105549073', 2, 0, 'Booking Number: HMY8XWFYAT\nGuest language: en', 'Pick up airport Korean air629,\n11:45 am\n28 set up honeymoon packages massage 6pm\nPool decorations and bathtub writing HAPPY HONEYMOON J❤️K 2023\nmore information check you phone', 15609051.12, 'IDR', 2147833.65, 0
    ),
    (
        'cll62y2cm00692z64wy2v7x33', 40824815, '371180463', 1115668, 1556329, NULL, '2023-11-11', '2023-11-14', '2023-06-08 23:11:00.000', 'Till Neumann', 'Till', 'Neumann', NULL, NULL, 2, 0, '', '', 6001500, 'IDR', NULL, 0
    ),
    (
        'cll62y2dm006h2z64wv8b43bd', 43872182, 'HMYC55BZZA', 1587920, 1466470, NULL, '2023-11-13', '2023-11-17', '2023-08-04 16:45:00.000', 'Karsten Wolff', 'Karsten', 'Wolff', NULL, '+491637796533', 2, 0, 'Booking Number: HMYC55BZZA\nGuest language: de', '', 21053966.68, 'IDR', 2897060.64, 0
    ),
    (
        'cll62y2dy006l2z643ymypdoy', 43153343, '2549473380', 1115671, 1466473, NULL, '2023-11-21', '2023-11-23', '2023-07-21 23:24:00.000', 'Sunil A C', 'Sunil', 'A C', 'sc.265525@guest.booking.com', '+65 9059 4549', 2, 0, 'Booking Number: 2549473380\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 103500\n\nFurther information: booker_is_genius\nPrepayment: 4500000IDR', '', 4500000, 'IDR', 675000, 1
    ),
    (
        'cll62y2e3006n2z64sl9shr57', 43697882, '379944111', 1115671, 1556329, NULL, '2023-11-23', '2023-11-25', '2023-08-01 15:01:00.000', 'garbolino gabriele', 'garbolino', 'gabriele', NULL, '33 +33614069761', 2, 0, '', '', 3280820, 'IDR', NULL, 0
    ),
    (
        'cll62y2ei006p2z645zwhd1cy', 44150126, '991311952', 1587920, 1556329, NULL, '2023-11-25', '2023-11-28', '2023-08-09 18:40:00.000', 'hokawa kazuhiro', 'hokawa', 'kazuhiro', NULL, '09049341851', 3, 0, '', '', 10202550, 'IDR', NULL, 0
    ),
    (
        'cll62y2fc006t2z6407adckrk', 44135126, '990839036', 1587920, 1556329, NULL, '2023-11-28', '2023-12-01', '2023-08-09 07:43:00.000', 'hokawa kazuhiro', 'hokawa', 'kazuhiro', NULL, '09049341851', 3, 0, '', '', 10202550, 'IDR', NULL, 1
    ),
    (
        'cll62y2fj006v2z6488zmyo2o', 42972899, '1010838221', 1115671, 1556329, NULL, '2023-12-19', '2023-12-20', '2023-07-18 20:19:00.000', 'Ribka Oviteani Ayuditha', 'Ribka', 'Oviteani Ayuditha', NULL, '+62 85269356999', 2, 0, '', '', 1640410, 'IDR', NULL, 0
    ),
    (
        'cll62y2g2006z2z64qlothnaf', 43612946, '2415918634', 1574678, 1466473, NULL, '2023-12-21', '2023-12-24', '2023-07-31 00:49:00.000', 'Arnold Wu', 'Arnold', 'Wu', 'awu.403158@guest.booking.com', '+85290379849', 4, 2, 'Booking Number: 2415918634\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** Approximate time of arrival: between 14:00 and 15:00 BOOKING NOTE : Payment charge is IDR 423200\n\nFurther information: booker_is_genius\nPrepayment: 18400000IDR', '', 18400000, 'IDR', 2760000, 0
    ),
    (
        'cllb68gci000e2zrshe91pzyg', 44299331, NULL, 1574678, 1466464, NULL, '2023-08-13', '2023-08-15', '2023-08-12 18:41:00.000', 'Lise  Bornes', 'Lise', ' Bornes', NULL, NULL, 6, 0, '', 'Not payment yet', 12000000, 'IDR', NULL, 0
    ),
    (
        'cllb68gci000j2zrsqre2hmls', 44299337, NULL, 1587920, 1466458, NULL, '2023-08-13', '2023-08-15', '2023-08-12 18:41:00.000', 'Masakali Blocked', 'Masakali', 'Blocked', 'admin@masakaliretreat.com', NULL, NULL, NULL, 'Akasha Booked', '', NULL, 'IDR', NULL, 0
    ),
    (
        'cllb68gh500152zrswlqfm9og', 44383157, 'HMZRYAYPTK', 1587920, 1466470, NULL, '2023-08-19', '2023-08-20', '2023-08-14 15:47:00.000', 'Yonathan T.S', 'Yonathan', 'T.S', NULL, '+62816861126', 2, 0, 'Booking Number: HMZRYAYPTK\nGuest language: en', '', 5112250, 'IDR', 703462.48, 0
    ),
    (
        'cllb68gir00172zrs9odsc7b0', 44383160, NULL, 1574678, 1466458, NULL, '2023-08-19', '2023-08-20', '2023-08-14 15:47:00.000', 'Masakali Blocked', 'Masakali', 'Blocked', 'admin@masakaliretreat.com', NULL, NULL, NULL, 'Akasha Booked', '', NULL, 'IDR', NULL, 0
    ),
    (
        'cllb68god002b2zrs2j38ptgc', 44251421, '1030388493', 1115674, 1556329, NULL, '2023-08-27', '2023-08-28', '2023-08-11 17:43:00.000', 'Diksha Sonawane', 'Diksha', 'Sonawane', NULL, NULL, 2, 0, '', '', 2000500, 'IDR', NULL, 0
    ),
    (
        'cllb68goo002f2zrs4bmwu8im', 44284232, '2609220639', 1574678, 1466473, NULL, '2023-08-27', '2023-09-09', '2023-08-12 05:12:00.000', 'Tomasz Kraus', 'Tomasz', 'Kraus', 'tkraus.762338@guest.booking.com', '+48 507 819 829', 2, 0, 'Booking Number: 2609220639\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 1803200 Approximate time of arrival: between 00:00 and 01:00 the next day 1 person is on gluten-free and lactose-free diet [08:49, 24.07.2023] Ubud: Masakali Retreat: Good morning Tomasz I\'m Ira from Masakali villa, I will take care for all you request, I already noted all your request for breakfast I see that no problem I will provide all you request 🙏 thank you already tell us from beginning so we have time for prepare🙏 [09:15, 24.07.2023] Tomasz: Yes. What kind of food will be available gluten and lactose free for breakfast? 🫶 [09:27, 24.07.2023] Ubud: Masakali Retreat: Soy milk we have, rice, potatoes, all kinds of vegetables and fruit we have manggo, pineapple watermelon orange banana,eggs, cheese, milk, meat we have beef chicken and fish , we have all this, like Nasi goreng( fried rice)\n\nFurther information: booker_is_genius\nPrepayment: 78400000IDR', 'Pick up airport 480k\nKorean air 629 from Seoul 17:50', 78400000, 'IDR', 11760000, 0
    ),
    (
        'cllb68gug003k2zrsgv47owr7', 44380943, NULL, 1574678, 1466467, NULL, '2023-09-10', '2023-09-14', '2023-08-14 13:55:00.000', 'Ingrid Mena Martin', 'Ingrid', 'Mena Martin', 'ingrid.menamartin@gmail.com', NULL, 2, NULL, '', '', 1564.18, 'IDR', NULL, 0
    ),
    (
        'cllb68gug003l2zrsxd7yhaf2', 44380946, NULL, 1587920, 1466458, NULL, '2023-09-10', '2023-09-14', '2023-08-14 13:55:00.000', 'Masakali Blocked', 'Masakali', 'Blocked', 'admin@masakaliretreat.com', NULL, NULL, NULL, 'Akasha Booked', '', NULL, 'IDR', NULL, 0
    ),
    (
        'cllb68h5z005f2zrsomawe5hg', 44245175, '2912555083', 1574678, 1466473, NULL, '2023-10-07', '2023-10-10', '2023-08-11 14:31:00.000', 'LEE Jeong Min', 'LEE', 'Jeong Min', 'cqmqvc.408591@guest.booking.com', '+821052644342', 6, 0, 'Booking Number: 2912555083\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 423200\n\nAddress: 124-8 chungdam-dong,kangnam-gu\n100-110\nseoul\nKR\nFurther information: booker_is_genius\nPrepayment: 18400000IDR', '', 18400000, 'IDR', 2760000, 0
    ),
    (
        'cllb68h64005h2zrsdop6514x', 44245181, NULL, 1587920, 1466458, NULL, '2023-10-07', '2023-10-10', '2023-08-11 14:31:00.000', 'Masakali Blocked', 'Masakali', 'Blocked', 'admin@masakaliretreat.com', NULL, NULL, NULL, 'Akasha Booked', '', NULL, 'IDR', NULL, 0
    ),
    (
        'cllb68hff00752zrsxvk6y4pw', 44384396, '995662120', 1574678, 1556329, NULL, '2023-12-30', '2023-12-31', '2023-08-14 16:22:00.000', 'eri tabuchi', 'eri', 'tabuchi', NULL, '09013246771', 2, 4, '', '', 4881220, 'IDR', NULL, 0
    ),
    (
        'cllb68hfg00772zrsbvsdahu1', 43612955, NULL, 1587920, 1466458, NULL, '2023-12-21', '2023-12-24', '2023-07-31 00:49:00.000', 'Masakali Blocked', 'Masakali', 'Blocked', 'admin@masakaliretreat.com', NULL, NULL, NULL, 'Akasha Booked', '', NULL, 'IDR', NULL, 0
    ),
    (
        'cllb68hg9007b2zrsdvedez64', 44384399, NULL, 1587920, 1466458, NULL, '2023-12-30', '2023-12-31', '2023-08-14 16:22:00.000', 'Masakali Blocked', 'Masakali', 'Blocked', 'admin@masakaliretreat.com', NULL, NULL, NULL, 'Akasha Booked', '', NULL, 'IDR', NULL, 0
    ),
    (
        'cllb68hg9007c2zrsoqubqomj', 36548737, '875433420', 1115674, 1556329, NULL, '2024-01-25', '2024-02-05', '2023-03-18 12:40:00.000', 'HEUNGIL JUNG', 'HEUNGIL', 'JUNG', NULL, '82 +821022814844', 2, 0, '', '', 11726000, 'IDR', NULL, 0
    ),
    (
        'cllb68hgu007f2zrs57ss7lad', 42625226, NULL, 1574678, 1466458, NULL, '2024-01-01', '2024-01-03', '2023-07-12 11:43:00.000', NULL, '', '', NULL, NULL, NULL, NULL, '', '', NULL, 'IDR', NULL, 0
    ),
    (
        'cllb68hhc007h2zrs2zwnnkyv', 41255522, '985015517', 1574678, 1556329, NULL, '2024-02-10', '2024-02-12', '2023-06-17 02:37:00.000', 'areff asraf', 'areff', 'asraf', NULL, '0173036717', 8, 0, '', '', 7521880, 'IDR', NULL, 0
    ),
    (
        'cllb68hhd007j2zrs80okzcee', 41255525, NULL, 1587920, 1466458, NULL, '2024-02-10', '2024-02-12', '2023-06-17 02:38:00.000', 'Masakali Blocked', 'Masakali', 'Blocked', 'admin@masakaliretreat.com', NULL, NULL, NULL, 'Akasha Booked', '', NULL, 'IDR', NULL, 0
    ),
    (
        'cllb68hhm007l2zrszbxdw9ph', 42074252, '958192792', 1574678, 1556329, NULL, '2024-02-28', '2024-02-29', '2023-07-02 21:55:00.000', 'JEEYEON LEE', 'JEEYEON', 'LEE', NULL, NULL, 2, 0, '', '', 3600900, 'IDR', NULL, 1
    ),
    (
        'cllb68hho007n2zrs5tm5yeeb', 43306157, '1015412165', 1574678, 1556329, NULL, '2024-03-12', '2024-03-16', '2023-07-25 02:07:00.000', 'Siti Nur Asrina Amran', 'Siti', 'Nur Asrina Amran', NULL, '+65 97757001', 5, 0, '', '', 19204800, 'IDR', NULL, 1
    ),
    (
        'cllb68hhq007p2zrsgnk9r99g', 42074258, NULL, 1587920, 1466458, NULL, '2024-02-28', '2024-02-29', '2023-07-02 21:55:00.000', 'Masakali Blocked', 'Masakali', 'Blocked', 'admin@masakaliretreat.com', NULL, NULL, NULL, 'Akasha Booked', '', NULL, 'IDR', NULL, 0
    ),
    (
        'cllb68hib007r2zrsqszr42vz', 41313026, '372647435', 1115668, 1556329, NULL, '2024-03-21', '2024-03-26', '2023-06-18 17:02:00.000', 'Paulo Jorge Machado', 'Paulo', 'Jorge Machado', NULL, '+351 912812119', 2, 0, '', '', 10002500, 'IDR', NULL, 0
    ),
    (
        'cllb68hie007t2zrss48fmcbb', 43306160, NULL, 1587920, 1466458, NULL, '2024-03-12', '2024-03-16', '2023-07-25 02:07:00.000', 'Masakali Blocked', 'Masakali', 'Blocked', 'admin@masakaliretreat.com', NULL, NULL, NULL, 'Akasha Booked', '', NULL, 'IDR', NULL, 0
    ),
    (
        'cllb68hiq007v2zrsklsqxts9', 41594795, '373443439', 1115671, 1556329, NULL, '2024-03-21', '2024-03-26', '2023-06-23 19:37:00.000', 'Paulo Jorge Machado', 'Paulo', 'Jorge Machado', NULL, '+351 912812119', 2, 0, '', '', 8202050, 'IDR', NULL, 0
    ),
    (
        'cllb68hj9007x2zrs1k7gajt9', 39394994, '366949535', 1115674, 1556329, NULL, '2024-03-26', '2024-03-30', '2023-05-12 01:08:00.000', 'Paulo Jorge Machado', 'Paulo', 'Jorge Machado', NULL, '+351 912812119', 2, 0, '', '', 8002000, 'IDR', NULL, 0
    ),
    (
        'cllb68hjy007z2zrsgcnkpkmp', 39503249, '367297875', 1115674, 1556329, NULL, '2024-03-21', '2024-03-26', '2023-05-14 06:49:00.000', 'Paulo Jorge Machado', 'Paulo', 'Jorge Machado', NULL, '+351 912812119', 2, 0, '', '', 10002500, 'IDR', NULL, 0
    ),
    (
        'cllb68hk100812zrsslv3cbkc', 39394997, '366949787', 1115671, 1556329, NULL, '2024-03-26', '2024-03-30', '2023-05-12 01:08:00.000', 'Paulo Jorge Machado', 'Paulo', 'Jorge Machado', NULL, '+351 912812119', 2, 0, '', '', 6561640, 'IDR', NULL, 0
    ),
    (
        'cllb68hk200832zrsho0tr47l', 41168942, '617577466', 1574678, 1556329, NULL, '2024-04-14', '2024-04-18', '2023-06-15 14:52:00.000', 'Yoseph Murtanu', 'Yoseph', 'Murtanu', NULL, '+1 5108615877', 6, 0, '', '', 14403600, 'IDR', NULL, 0
    ),
    (
        'cllb68hk700852zrsjte5fr22', 41168945, NULL, 1587920, 1466458, NULL, '2024-04-14', '2024-04-18', '2023-06-15 14:52:00.000', 'Masakali Blocked', 'Masakali', 'Blocked', 'admin@masakaliretreat.com', NULL, NULL, NULL, 'Akasha Booked', '', NULL, 'IDR', NULL, 0
    ),
    (
        'cllb68hk800872zrsoplxsz6b', 39719387, '367914047', 1115668, 1556329, NULL, '2024-03-26', '2024-03-30', '2023-05-18 06:34:00.000', 'Paulo Jorge Machado', 'Paulo', 'Jorge Machado', NULL, '+351 912812119', 2, 0, '', '', 8002000, 'IDR', NULL, 0
    ),
    (
        'cllb68hkj00892zrs63jn39du', 35673973, NULL, 1574678, 1466467, NULL, '2024-06-12', '2024-06-13', '2023-03-02 05:36:00.000', 'Kevin Andrews', 'Kevin', 'Andrews', 'andrewskevin92@gmail.com', '5098992771', 1, NULL, '', '', 1, 'IDR', NULL, 1
    ),
    (
        'cllb68hkp008b2zrszntvwaq1', 35674300, NULL, 1574678, 1466467, NULL, '2024-06-12', '2024-06-13', '2023-03-02 05:41:00.000', 'Kevin Andrews', 'Kevin', 'Andrews', 'andrewskevin92@gmail.com', '5098992771', 1, NULL, '', '', 1, 'IDR', NULL, 1
    ),
    (
        'cllb68hl0008d2zrst4w5k6tk', 35674303, NULL, 1587920, 1466458, NULL, '2024-06-12', '2024-06-13', '2023-03-02 05:41:00.000', 'Masakali Blocked', 'Masakali', 'Blocked', 'admin@masakaliretreat.com', NULL, NULL, NULL, 'Akasha Booked', '', NULL, 'IDR', NULL, 1
    ),
    (
        'cllb68hlb008f2zrss5enffs7', 35674513, NULL, 1574678, 1466467, NULL, '2024-06-13', '2024-06-14', '2023-03-02 05:43:00.000', 'Kevin Andrews', 'Kevin', 'Andrews', 'andrewskevin92@gmail.com', '5098992771', 1, NULL, '', '', 1, 'IDR', NULL, 1
    ),
    (
        'cllb68hlx008h2zrsfhii88m6', 35674516, NULL, 1587920, 1466458, NULL, '2024-06-13', '2024-06-14', '2023-03-02 05:43:00.000', 'Masakali Blocked', 'Masakali', 'Blocked', 'admin@masakaliretreat.com', NULL, NULL, NULL, 'Akasha Booked', '', NULL, 'IDR', NULL, 1
    ),
    (
        'cllb68hlz008j2zrsb98lzdjh', 43969382, '3281748886', 1115674, 1466473, NULL, '2024-06-30', '2024-07-12', '2023-08-06 07:26:00.000', 'Géza Demény', 'Géza', 'Demény', 'gdemen.260085@guest.booking.com', '+36 203466578', 2, 0, 'Booking Number: 3281748886\nGuest message: ** THIS RESERVATION HAS BEEN PRE-PAID ** BOOKING NOTE : Payment charge is IDR 699200\n\nFurther information: booker_is_genius\nPrepayment: 30400000IDR', '', 30400000, 'IDR', 4560000, 0
    ),
    (
        'clld7cx4g000t2zv4ar7o7mrh', 44464307, NULL, 1115671, 1466464, NULL, '2023-08-18', '2023-08-20', '2023-08-16 00:34:00.000', 'Linda Honebeek', 'Linda', 'Honebeek', NULL, '+31 6 46227102', 0, 0, '', '', 4100000, 'IDR', NULL, 0
    ),
    (
        'clld7cxjn003z2zv4a9kme6mx', 44434868, NULL, 1115671, 1466458, NULL, '2023-09-20', '2023-09-22', '2023-08-15 11:38:00.000', NULL, '', '', NULL, NULL, NULL, NULL, 'Suzanne block for collaboration with Darshana', '', NULL, 'IDR', NULL, 0
    );
/*!40000 ALTER TABLE `Reservation` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `Review`
--

DROP TABLE IF EXISTS `Review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `Review` (
    `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL, `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL, `imgUrl` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL, `date` datetime(3) NOT NULL, `text` text COLLATE utf8mb4_unicode_ci NOT NULL, `villaId` int NOT NULL, PRIMARY KEY (`id`), KEY `Review_villaId_idx` (`villaId`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `Review`
--

LOCK TABLES `Review` WRITE;
/*!40000 ALTER TABLE `Review` DISABLE KEYS */
;
/*!40000 ALTER TABLE `Review` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `Session`
--

DROP TABLE IF EXISTS `Session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `Session` (
    `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL, `sessionToken` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL, `userId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL, `expires` datetime(3) NOT NULL, PRIMARY KEY (`id`), UNIQUE KEY `Session_sessionToken_key` (`sessionToken`), KEY `Session_userId_idx` (`userId`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `Session`
--

LOCK TABLES `Session` WRITE;
/*!40000 ALTER TABLE `Session` DISABLE KEYS */
;

INSERT INTO
    `Session`
VALUES (
        'cligvq7cd00032z18eeu00j8b', '0637d479-5b65-4429-80d7-968c6a65b73d', 'cligvq79s00002z18j6npmuiv', '2023-07-08 20:47:44.684'
    ),
    (
        'cll62t1e200012z64p24vicn1', 'bda70b56-4487-45f3-98db-d904d8d27bf1', 'cligvq79s00002z18j6npmuiv', '2023-09-13 00:28:06.653'
    ),
    (
        'cllb5y5j700012zrsje2rbko4', '06be923c-5bff-4aed-a6a3-7743c725a379', 'cligvq79s00002z18j6npmuiv', '2023-09-15 02:13:13.606'
    ),
    (
        'clld7cq8g00012zv49exopz63', '972a6a9d-b941-4c65-88c6-535bd09458af', 'cligvq79s00002z18j6npmuiv', '2023-09-27 01:20:36.880'
    ),
    (
        'clp603m4c0001wl34cabx2sd9', '2f130627-1baf-468d-bb1a-71a8c0d38d09', 'cligvq79s00002z18j6npmuiv', '2023-12-19 21:39:30.097'
    );
/*!40000 ALTER TABLE `Session` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `User` (
    `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL, `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL, `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL, `emailVerified` datetime(3) DEFAULT NULL, `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL, `admin` tinyint(1) DEFAULT '0', PRIMARY KEY (`id`), UNIQUE KEY `User_email_key` (`email`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */
;

INSERT INTO
    `User`
VALUES (
        'cligvq79s00002z18j6npmuiv', NULL, 'kevinbigfoot13@gmail.com', '2023-11-19 21:39:29.917', NULL, 1
    );
/*!40000 ALTER TABLE `User` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `VerificationToken`
--

DROP TABLE IF EXISTS `VerificationToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `VerificationToken` (
    `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL, `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL, `expires` datetime(3) NOT NULL, UNIQUE KEY `VerificationToken_token_key` (`token`), UNIQUE KEY `VerificationToken_identifier_token_key` (`identifier`, `token`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `VerificationToken`
--

LOCK TABLES `VerificationToken` WRITE;
/*!40000 ALTER TABLE `VerificationToken` DISABLE KEYS */
;
/*!40000 ALTER TABLE `VerificationToken` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `Villa`
--

DROP TABLE IF EXISTS `Villa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `Villa` (
    `id` int NOT NULL, `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL, `description` text COLLATE utf8mb4_unicode_ci NOT NULL, `amenities` text COLLATE utf8mb4_unicode_ci NOT NULL, PRIMARY KEY (`id`), UNIQUE KEY `Villa_name_key` (`name`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `Villa`
--

LOCK TABLES `Villa` WRITE;
/*!40000 ALTER TABLE `Villa` DISABLE KEYS */
;

INSERT INTO
    `Villa`
VALUES (
        1115668, 'Chandra', 'One of our more popular villas for romantic getaways and honeymooners offers an enchanting sentiment. In addition to the luxury outdoor shower, this villa features a spacious and comfortable bath. A favorite place to relax is the outdoor hammock that hangs over the rice fields, with a perfect view of the stars at night. This villa also offers a work area with a beautiful antique desk for those who need it.', 'Wifi 100 mb/s,Private infinity pool,Garden view,Outdoor shower,Mosquito net,Bluetooth speaker system,Suitable for events,Ceiling & portable fans,Dedicated workspace,Full kitchenette,Breakfast included'
    ),
    (
        1115671, 'Jala', 'This traditional Joglo villa is the perfect fit for a cozy stay. With personal charm and attention to detail, this alluring villa has an irresistible appeal. Jala offers a workstation with a large desk, comfy outdoor lounging areas, and a full private ensuite bathroom. The luxury bedding and linens offer a comfortable and restful sleep while the beautiful, handcrafted furniture and amenities will leave you in awe of the craftsmanship and detail.', 'Wifi 100 mb/s,Private infinity pool,Garden view,Outdoor shower,Mosquito net,Bluetooth speaker system,Suitable for events,Ceiling & portable fans,Dedicated workspace,Full kitchenette,Breakfast included'
    ),
    (
        1115674, 'Surya', 'Our largest villa is a warm and elegant choice with ample space to rest and recharge. It has an ensuite breakfast table and features a hand-carved outdoor dining table that can seat larger groups on the private patio. Inside you’ll find a luxury king-sized mattress with high-quality bedding as well as a couch that can serve as an additional bed for an additional guest.', 'Wifi 100 mb/s,Private infinity pool,Garden view,Outdoor shower,Mosquito net,Bluetooth speaker system,Suitable for events,Ceiling & portable fans,Dedicated workspace,Full kitchenette,Breakfast included'
    ),
    (
        1574678, 'Akasha', 'Luxury meets comfort in our newest villa, Akasha. With 3 bedrooms and 3.5 baths, this spacious home is great for families or couples traveling. This villa features a beautiful waterfall pool, large deck, full kitchen and bar, entertainment room, outdoor living room, large dining area, and breathtaking views. This space is also great for hosting celebrations such as weddings and birthday parties.', 'Wifi 100 mb/s,Private infinity pool,Garden view,Outdoor shower,Mosquito net,Bluetooth speaker system,Suitable for events,Ceiling & portable fans,Dedicated workspace,Full kitchenette,Breakfast included'
    ),
    (
        1587920, 'Lakshmi', 'Our largest villa is a warm and elegant choice with ample space to rest and recharge. It has an ensuite breakfast table and features a hand-carved outdoor dining table that can seat larger groups on the private patio. Inside you’ll find a luxury king-sized mattress with high-quality bedding as well as a couch that can serve as an additional bed for an additional guest.', 'Wifi 100 mb/s,Private infinity pool,Garden view,Outdoor shower,Mosquito net,Bluetooth speaker system,Suitable for events,Ceiling & portable fans,Dedicated workspace,Full kitchenette,Breakfast included'
    );
/*!40000 ALTER TABLE `Villa` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `VillaPricing`
--

DROP TABLE IF EXISTS `VillaPricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `VillaPricing` (
    `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL, `villaId` int NOT NULL, `date` datetime(3) NOT NULL, `price` double DEFAULT NULL, `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'IDR', `available` tinyint(1) NOT NULL DEFAULT '1', PRIMARY KEY (`id`), UNIQUE KEY `VillaPricing_villaId_date_key` (`villaId`, `date`), KEY `VillaPricing_villaId_idx` (`villaId`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `VillaPricing`
--

LOCK TABLES `VillaPricing` WRITE;
/*!40000 ALTER TABLE `VillaPricing` DISABLE KEYS */
;

INSERT INTO
    `VillaPricing`
VALUES (
        'cls15xtmb00012z10bz0agoxl', 1115674, '2024-02-01 00:00:00.000', 1900000, 'IDR', 0
    ),
    (
        'cls15xtpi00052z10p4m9g94f', 1115674, '2024-01-31 00:00:00.000', 1900000, 'IDR', 0
    ),
    (
        'cls15xtpi00062z1036rjl40t', 1115674, '2024-02-05 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls15xtpi00072z10c5v1glkr', 1115674, '2024-02-02 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls15xtpk00092z10w1unp6k2', 1115674, '2024-02-04 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls15xtpl000c2z10hy6r9v3p', 1115674, '2024-02-06 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls15xtpl000d2z10zjsd1kxt', 1115674, '2024-02-07 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls15xtq0000f2z10vaddybqc', 1115674, '2024-01-30 00:00:00.000', 1900000, 'IDR', 0
    ),
    (
        'cls15xtq0000h2z10gje8hne2', 1115674, '2024-02-03 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls15xtqu000j2z101n8u02cp', 1115674, '2024-02-09 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls15xttt000l2z10e6hzrxjp', 1115674, '2024-02-08 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls15xtub000n2z10b57tbyi1', 1115674, '2024-02-10 00:00:00.000', 1717685, 'IDR', 0
    ),
    (
        'cls15xtud000p2z10lrgny0kn', 1115674, '2024-02-11 00:00:00.000', 1728430, 'IDR', 0
    ),
    (
        'cls15xtuf000r2z10w2m8zrns', 1115674, '2024-02-13 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls15xtug000u2z10cvd87sjb', 1115674, '2024-02-12 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls15xtug000v2z102ryotpe0', 1115674, '2024-02-15 00:00:00.000', 1800621, 'IDR', 0
    ),
    (
        'cls15xtug000x2z10kiak6pc7', 1115674, '2024-02-14 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls15xtut000z2z109d6u0mvs', 1115674, '2024-02-17 00:00:00.000', 1835183, 'IDR', 0
    ),
    (
        'cls15xtuu00112z10w42vwb2w', 1115674, '2024-02-16 00:00:00.000', 1819596, 'IDR', 0
    ),
    (
        'cls15xtwv00132z109qmwj6ux', 1115674, '2024-02-19 00:00:00.000', 1975497, 'IDR', 0
    ),
    (
        'cls15xtxn00152z10ekb66428', 1115674, '2024-02-18 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls15xtxo00172z10mfdyygdr', 1115674, '2024-02-20 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls15xtxo00192z100l5jxtdf', 1115674, '2024-02-24 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls15xty6001b2z108nyq77s1', 1115674, '2024-02-23 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls15xty6001e2z10ijvgy5qq', 1115674, '2024-02-22 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls15xty6001f2z10noftv4mz', 1115674, '2024-02-27 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls15xty6001h2z10i65ddo5y', 1115674, '2024-02-21 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls15xty7001j2z10zg4frv5f', 1115674, '2024-02-25 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls15xtzz001l2z10t9elz256', 1115674, '2024-02-26 00:00:00.000', 1799447, 'IDR', 1
    ),
    (
        'cls15xu0j001o2z10xr0uzfjg', 1115674, '2024-03-01 00:00:00.000', 2000000, 'IDR', 0
    ),
    (
        'cls15xu0j001p2z109snw74xd', 1115674, '2024-02-28 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls15xu0k001r2z10zald524e', 1115674, '2024-03-02 00:00:00.000', 1900000, 'IDR', 0
    ),
    (
        'cls15xu0z001t2z105zf6ausw', 1115674, '2024-02-29 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls15xu1d001v2z10pswacqgf', 1115674, '2024-03-03 00:00:00.000', 1900000, 'IDR', 0
    ),
    (
        'cls15xu1f001x2z10png9c48x', 1115674, '2024-03-06 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xu1g00202z10q8z4r27g', 1115674, '2024-03-04 00:00:00.000', 1900000, 'IDR', 0
    ),
    (
        'cls15xu1g00212z10bs2fbytc', 1115674, '2024-03-05 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xu3j00232z10c85guhha', 1115674, '2024-03-07 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xu4200252z10ogxsvf9o', 1115674, '2024-03-08 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xu4200272z109plp1rqh', 1115674, '2024-03-09 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xu4200292z10oadj0737', 1115674, '2024-03-10 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xu4l002b2z10tlvho2no', 1115674, '2024-03-11 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xu4m002d2z10v1sfo0zt', 1115674, '2024-03-12 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xu4m002f2z10rcuh7v6v', 1115674, '2024-03-16 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xu4n002i2z102so79uaw', 1115674, '2024-03-14 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xu4n002j2z10m8vvage6', 1115674, '2024-03-15 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xu75002l2z10ex9bilr8', 1115674, '2024-03-20 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xu81002o2z10a7x7z06w', 1115674, '2024-03-13 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xu81002p2z10nzqdurs3', 1115674, '2024-03-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xu82002t2z10ww8jwi5v', 1115674, '2024-03-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xu82002u2z10an557hu9', 1115674, '2024-03-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xu82002v2z1025r8h663', 1115674, '2024-03-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xu89002x2z106ysm0jz2', 1115674, '2024-03-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xu8p00302z10tsw14912', 1115674, '2024-03-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xu8p00312z10ypyn2v3z', 1115674, '2024-03-26 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuaz00332z10slmitqru', 1115674, '2024-03-27 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xubf00352z10dxxsaoh0', 1115674, '2024-03-28 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xubq00372z10jri4fg7t', 1115674, '2024-03-29 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xubq00392z10pnz0wgu9', 1115674, '2024-03-31 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xubq003d2z10vgnd6usl', 1115674, '2024-04-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xubq003e2z100crpfw31', 1115674, '2024-03-30 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xubq003f2z108akx1qk0', 1115674, '2024-04-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xucs003i2z10e3yam1eq', 1115674, '2024-04-03 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xucs003j2z10tpp4k0xi', 1115674, '2024-04-04 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xue6003l2z10ydsh0c1w', 1115674, '2024-04-05 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuf0003n2z10yc3u6fli', 1115674, '2024-04-07 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuf4003s2z10vfwj9eb1', 1115674, '2024-03-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuf4003u2z10yt2nqge6', 1115674, '2024-04-09 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuf4003v2z10cyt055ib', 1115674, '2024-04-08 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuf4003w2z10l4xv14q0', 1115674, '2024-04-10 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuf4003x2z10ripenkso', 1115674, '2024-04-12 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xugm00402z101oaormxr', 1115674, '2024-04-11 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xugm00412z10i2pjtwgv', 1115674, '2024-04-13 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xuho00432z10xevingh9', 1115674, '2024-04-15 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xuhz00462z101l5aiyw1', 1115674, '2024-04-14 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xuhz00472z10agp2oqjm', 1115674, '2024-04-16 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xui6004c2z10efenacqt', 1115674, '2024-03-17 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xui6004d2z10bnfjuesd', 1115674, '2024-04-06 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xui6004e2z10nytclqbj', 1115674, '2024-04-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xui6004f2z105vrx5xde', 1115674, '2024-04-17 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xujp004h2z10bnnjc13d', 1115674, '2024-04-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xujy004j2z10z6bog6yq', 1115674, '2024-04-20 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xul2004l2z10hiwuxfg3', 1115674, '2024-04-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xulm004n2z105n4v2e3r', 1115674, '2024-04-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuls004t2z10fvxfm7vn', 1115674, '2024-04-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuls004u2z10tohfwdp2', 1115674, '2024-04-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuls004v2z108ftfwv0k', 1115674, '2024-04-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuls004w2z102xr462gn', 1115674, '2024-04-27 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xuls004x2z10chs0reu6', 1115674, '2024-04-26 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xumo004z2z10djpfczmx', 1115674, '2024-04-28 00:00:00.000', 2648066, 'IDR', 0
    ),
    (
        'cls15xumv00512z10shev1xro', 1115674, '2024-04-29 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xunr00532z10y8nse14g', 1115674, '2024-04-30 00:00:00.000', 2965700, 'IDR', 0
    ),
    (
        'cls15xuo800552z10gld045kt', 1115674, '2024-05-03 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xuoc005a2z10u5scu1y3', 1115674, '2024-05-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuoc005b2z10ultgy4ta', 1115674, '2024-05-02 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xuoc005d2z10ht40143f', 1115674, '2024-05-04 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xuoc005e2z10geqbtqn7', 1115674, '2024-05-06 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xuoc005f2z10yo30r6eu', 1115674, '2024-05-08 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xupi005h2z10grez9sy3', 1115674, '2024-05-07 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xupl005j2z10dx0t92ah', 1115674, '2024-05-05 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xuqa005l2z10yesfwr5u', 1115674, '2024-05-09 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuqu005n2z10f40u9tl3', 1115674, '2024-05-10 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xur0005r2z104oo85hwy', 1115674, '2024-05-12 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xur0005s2z10v4grr5ko', 1115674, '2024-05-11 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xur0005t2z10fob6lji6', 1115674, '2024-05-14 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xur1005v2z10202lvjxg', 1115674, '2024-05-15 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xur1005x2z106616n3mp', 1115674, '2024-05-13 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xuss005z2z10z3z4k7x8', 1115674, '2024-05-16 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuss00612z10qu0bltlf', 1115674, '2024-05-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xut400632z101rvvu1qp', 1115674, '2024-05-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuti00652z10oiyme4ji', 1115674, '2024-05-17 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xutn00692z105u4pgruw', 1115674, '2024-05-22 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xutn006a2z10gpgxahp1', 1115674, '2024-05-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xutn006b2z10qoczy8nh', 1115674, '2024-05-21 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xutn006d2z106lgqnona', 1115674, '2024-05-20 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuto006f2z10sgn4ppoy', 1115674, '2024-05-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuvi006h2z10jspjf9jj', 1115674, '2024-05-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuvo006j2z104hvckeet', 1115674, '2024-05-26 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuvy006l2z10q31aofth', 1115674, '2024-05-27 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuw8006n2z10j7ucznwx', 1115674, '2024-05-28 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuwg006p2z10uv9h3nq5', 1115674, '2024-05-29 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuwi006r2z10qonq2x4p', 1115674, '2024-05-31 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuwi006u2z10ebpp4i95', 1115674, '2024-05-30 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuwi006v2z10237otp41', 1115674, '2024-06-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuwn006x2z10lykxks6o', 1115674, '2024-06-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuyh006z2z10blu8pnwj', 1115674, '2024-06-04 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuyy00712z1015j5w1rp', 1115674, '2024-06-03 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuz400732z10utepcnhl', 1115674, '2024-06-05 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuz400752z10hxde4no1', 1115674, '2024-06-06 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuz900772z10tdv7176l', 1115674, '2024-06-07 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuzl00792z10838h3dvr', 1115674, '2024-06-09 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuzp007d2z10k42rbzxs', 1115674, '2024-06-08 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuzp007e2z10q9jsd9w2', 1115674, '2024-06-10 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xuzp007f2z10fhygcp7a', 1115674, '2024-06-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xv1m007h2z10pi70wxj4', 1115674, '2024-06-14 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xv21007k2z10ncqf1q1d', 1115674, '2024-06-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xv21007l2z10khhfat0v', 1115674, '2024-06-15 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xv22007n2z10z55zgdw8', 1115674, '2024-06-17 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xv26007p2z10ias47ejx', 1115674, '2024-06-16 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xv2k007r2z10pp7fzseu', 1115674, '2024-06-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xv2k007t2z10tnicgupj', 1115674, '2024-06-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xv2k007v2z10rvsp094l', 1115674, '2024-06-20 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xv2o007x2z10yqrmd0z3', 1115674, '2024-06-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xv4e007z2z10b580umdl', 1115674, '2024-06-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xv4v00832z102juoq2u1', 1115674, '2024-06-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xv4v00842z10wuh92rgs', 1115674, '2024-06-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xv4v00852z10afy2d9j5', 1115674, '2024-06-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xv4x00872z10yh48q3z9', 1115674, '2024-06-26 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xv5l00892z10eg6nabt1', 1115674, '2024-06-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xv5l008b2z104rb4ssw5', 1115674, '2024-06-27 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xv5m008e2z10bzq5y49r', 1115674, '2024-06-29 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xv5m008f2z10zqux1cdw', 1115674, '2024-06-28 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xv7w008h2z10h368bwbu', 1115674, '2024-06-30 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xv7y008j2z10g6o2bzau', 1115674, '2024-07-01 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xv8l008l2z102l46xaq6', 1115674, '2024-07-02 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xv8n008n2z10siprt3mt', 1115674, '2024-07-03 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xv8n008p2z10eooddkef', 1115674, '2024-07-04 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xv92008t2z10manelpaa', 1115674, '2024-07-05 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xv92008u2z101sv3k2nf', 1115674, '2024-07-06 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xv92008w2z107de7592p', 1115674, '2024-07-07 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xv92008x2z10w0jyr5n5', 1115674, '2024-07-08 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvaj008z2z106rvheva8', 1115674, '2024-07-09 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvak00912z10a5i1eub8', 1115674, '2024-07-11 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvb500932z107pu0f2ga', 1115674, '2024-07-10 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvb700952z10f0w17o3a', 1115674, '2024-07-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvb800972z10uhm9spe1', 1115674, '2024-07-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvbq00992z10z3ajchus', 1115674, '2024-07-14 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvbs009b2z102fi02us6', 1115674, '2024-07-15 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvbw009d2z10u8nv6v4q', 1115674, '2024-07-16 00:00:00.000', 2650631, 'IDR', 1
    ),
    (
        'cls15xvbw009f2z10izdvvk4p', 1115674, '2024-07-17 00:00:00.000', 2610652, 'IDR', 1
    ),
    (
        'cls15xvd4009h2z100fk9i7l8', 1115674, '2024-07-18 00:00:00.000', 2672733, 'IDR', 1
    ),
    (
        'cls15xvdh009j2z101luvi360', 1115674, '2024-07-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvdv009l2z10xjwmp8q3', 1115674, '2024-07-20 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvdx009n2z10r3xzrw8b', 1115674, '2024-07-21 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xve3009p2z10jdsidrk9', 1115674, '2024-07-22 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvee009r2z10ga1x4gm0', 1115674, '2024-07-23 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvel009t2z10e5td7ybc', 1115674, '2024-07-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xver009v2z102dlrdpor', 1115674, '2024-07-26 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xves009x2z101epvf9fq', 1115674, '2024-07-25 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvg6009z2z104fxir62f', 1115674, '2024-07-27 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvgc00a12z10obwogkpi', 1115674, '2024-07-28 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvgn00a32z10vmtvcx38', 1115674, '2024-07-29 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvgr00a52z10mazq4qy6', 1115674, '2024-07-30 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvgu00a72z10twmbf27i', 1115674, '2024-08-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvhc00a92z10830o3g73', 1115674, '2024-08-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvhc00ab2z100dzwgeob', 1115674, '2024-07-31 00:00:00.000', 2517901, 'IDR', 1
    ),
    (
        'cls15xvhr00ad2z1063u85wgc', 1115674, '2024-08-03 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvhv00af2z1026b3uigh', 1115674, '2024-08-04 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvix00ah2z10e6middvz', 1115674, '2024-08-05 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvja00aj2z10ylppm6c8', 1115674, '2024-08-06 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvjd00al2z10po7x7s3u', 1115674, '2024-08-07 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvju00an2z10isrljjwc', 1115674, '2024-08-08 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvjz00ap2z10a47p6br9', 1115674, '2024-08-09 00:00:00.000', 2886229, 'IDR', 0
    ),
    (
        'cls15xvjz00as2z104varb32x', 1115674, '2024-08-10 00:00:00.000', 2913092, 'IDR', 0
    ),
    (
        'cls15xvjz00at2z10przdtzua', 1115674, '2024-08-11 00:00:00.000', 2943389, 'IDR', 0
    ),
    (
        'cls15xvkf00av2z104mnvcez6', 1115674, '2024-08-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvkf00ax2z100n0y39zi', 1115674, '2024-08-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvl900az2z10w4rk8kqk', 1115674, '2024-08-15 00:00:00.000', 2708375, 'IDR', 0
    ),
    (
        'cls15xvlp00b12z10phnvvwkb', 1115674, '2024-08-17 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvlr00b32z10as67acs4', 1115674, '2024-08-14 00:00:00.000', 2529436, 'IDR', 0
    ),
    (
        'cls15xvm700b52z109md9pzdl', 1115674, '2024-08-19 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvmp00b72z106h75jueh', 1115674, '2024-08-21 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvms00ba2z10exrhw33m', 1115674, '2024-08-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvms00bb2z100s3yw2bg', 1115674, '2024-08-20 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvn500bd2z10bo4nr70t', 1115674, '2024-08-16 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvn900bf2z10sz016n2h', 1115674, '2024-08-22 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvnq00bh2z10sria6gg7', 1115674, '2024-08-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvo700bj2z10fg8d4k8q', 1115674, '2024-08-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvoj00bl2z10nb74kfxc', 1115674, '2024-08-26 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvot00bn2z10ouycdrbj', 1115674, '2024-08-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvpe00bp2z10qx0qpl1u', 1115674, '2024-08-27 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvpf00br2z10x2mhbuvu', 1115674, '2024-08-28 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvpj00bt2z106lg9gdrx', 1115674, '2024-08-29 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvpt00bv2z10gzxs2id4', 1115674, '2024-08-30 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvqe00bx2z10ek57xca7', 1115674, '2024-08-31 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvqe00bz2z101gia8ydd', 1115674, '2024-09-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvr800c12z109wzkaqbq', 1115674, '2024-09-04 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvrn00c32z10awxomasy', 1115674, '2024-09-03 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvrt00c52z10ojwgcoc3', 1115674, '2024-09-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvse00c72z10y2scy0bp', 1115674, '2024-09-05 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvse00c92z10dbqsfg06', 1115674, '2024-09-06 00:00:00.000', 2519373, 'IDR', 1
    ),
    (
        'cls15xvsz00cb2z10izw557yy', 1115674, '2024-09-07 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvsz00cd2z10yxezf53w', 1115674, '2024-09-08 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvtl00cf2z10ypj8chke', 1115674, '2024-09-09 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvty00ch2z10hjtfgsgn', 1115674, '2024-09-11 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvuw00cj2z10w0cfivk4', 1115674, '2024-09-10 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvvk00cl2z10yawr1hnm', 1115674, '2024-09-12 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvw000cn2z10ao664maq', 1115674, '2024-09-13 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvw700cr2z10nwst3fr7', 1115674, '2024-09-15 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvw700cs2z10kgrb54u5', 1115674, '2024-09-14 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvw700cu2z107ane1wkq', 1115674, '2024-09-17 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvw700cv2z102mhbih82', 1115674, '2024-09-16 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xvwi00cx2z10fw11gstz', 1115674, '2024-09-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvxd00cz2z10jzp4ajw9', 1115674, '2024-09-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvxq00d12z104qbbc0yx', 1115674, '2024-09-20 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvyn00d32z108monkjnj', 1115674, '2024-09-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvzj00d52z10ncd5y9z3', 1115674, '2024-09-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvzm00da2z10o1gedgu4', 1115674, '2024-09-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvzm00db2z1005yhsu0s', 1115674, '2024-09-27 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvzm00dc2z107qyebvs0', 1115674, '2024-09-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvzm00dd2z1005yht0cr', 1115674, '2024-09-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xvzv00df2z10y57gdcnq', 1115674, '2024-09-28 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw0900dh2z10jqvdyftd', 1115674, '2024-09-26 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw0p00dj2z10nue5ddwj', 1115674, '2024-09-29 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw1900dl2z10vw0b00ow', 1115674, '2024-09-30 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw2i00dn2z10799wu982', 1115674, '2024-10-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw2m00dr2z10mnilx3fd', 1115674, '2024-10-03 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw2m00ds2z10c26buvii', 1115674, '2024-10-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw2m00dt2z10lt6hxqkq', 1115674, '2024-10-04 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw2n00dv2z10cwem8xc6', 1115674, '2024-10-05 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw2o00dx2z10rd6uiovz', 1115674, '2024-10-06 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw3400dz2z10ykbqedgk', 1115674, '2024-10-07 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw3j00e12z10q9i6ngrp', 1115674, '2024-10-08 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw4500e32z10fd740lfd', 1115674, '2024-10-09 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw5500e52z10uc11rd7q', 1115674, '2024-10-10 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw5h00e82z104fxux1gx', 1115674, '2024-10-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw5h00eb2z10gvhtglj4', 1115674, '2024-10-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw5h00ec2z10z0vzy6ev', 1115674, '2024-10-14 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw5h00ed2z10h8pktp1s', 1115674, '2024-10-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw5i00ef2z10tgthk4zz', 1115674, '2024-10-15 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw6600eh2z106omsw4wq', 1115674, '2024-10-17 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw6d00ej2z10kkt4jm6m', 1115674, '2024-10-16 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw7400el2z10fim0r4eg', 1115674, '2024-10-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw8700eo2z10hti21g89', 1115674, '2024-10-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw8700ep2z10o0h1qiw4', 1115674, '2024-10-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw8700es2z10r422uy1e', 1115674, '2024-10-20 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw8700et2z10d5zv7dye', 1115674, '2024-10-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw8700ev2z10zpzo7xmj', 1115674, '2024-10-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw8t00ex2z10x6shi0fh', 1115674, '2024-10-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw9c00f02z10h9qan5zd', 1115674, '2024-10-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xw9c00f12z10o8otw7j9', 1115674, '2024-10-26 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwa600f32z1014ku0mzx', 1115674, '2024-10-27 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwb000f52z10qnilxb4e', 1115674, '2024-10-28 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwb100f72z10pfuxpq94', 1115674, '2024-10-29 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwb400fa2z10hdp31wv8', 1115674, '2024-10-30 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwb400fb2z10wvxk9t47', 1115674, '2024-11-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwbi00fd2z100upk89lz', 1115674, '2024-10-31 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwby00fg2z1047jpeqo7', 1115674, '2024-11-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwby00fh2z10z3vmarzb', 1115674, '2024-11-03 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwc100fj2z10n92euiwq', 1115674, '2024-11-04 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwcw00fl2z107wu8p8th', 1115674, '2024-11-05 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwdi00fn2z107mjffm6u', 1115674, '2024-11-06 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwdk00fp2z10c0auzzqe', 1115674, '2024-11-07 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwdm00fs2z10ddwrze64', 1115674, '2024-11-08 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwdm00ft2z10bzysahs1', 1115674, '2024-11-09 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwe000fv2z107w1zy05b', 1115674, '2024-11-10 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xweg00fx2z104z2dubuo', 1115674, '2024-11-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwei00fz2z10aqclgo79', 1115674, '2024-11-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwf200g12z10zc8g4e6y', 1115674, '2024-11-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwfe00g32z10rkdyf493', 1115674, '2024-11-14 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwg600g52z108l035h6n', 1115674, '2024-11-15 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwg800g82z10d2sy5hhx', 1115674, '2024-11-17 00:00:00.000', 2640099, 'IDR', 1
    ),
    (
        'cls15xwg800g92z10om5ztqiv', 1115674, '2024-11-16 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwg800gb2z10vkpq5tas', 1115674, '2024-11-18 00:00:00.000', 2656973, 'IDR', 1
    ),
    (
        'cls15xwh000gd2z10kwt3lgks', 1115674, '2024-11-19 00:00:00.000', 2953537, 'IDR', 1
    ),
    (
        'cls15xwh800gf2z107ey21iw7', 1115674, '2024-11-20 00:00:00.000', 2984407, 'IDR', 1
    ),
    (
        'cls15xwh800gh2z10g3zh3sxc', 1115674, '2024-11-21 00:00:00.000', 3009255, 'IDR', 1
    ),
    (
        'cls15xwi800gj2z10iodkha56', 1115674, '2024-11-22 00:00:00.000', 2676635, 'IDR', 1
    ),
    (
        'cls15xwib00gl2z10n6zslkpp', 1115674, '2024-11-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwiy00gn2z10hin8x2si', 1115674, '2024-11-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwj000gp2z10vj9io08u', 1115674, '2024-11-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwj000gr2z10em75ky5v', 1115674, '2024-11-26 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwj200gt2z10r152ztx7', 1115674, '2024-11-27 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwjq00gv2z102kdi71oe', 1115674, '2024-11-28 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwjs00gx2z10m2oysb6e', 1115674, '2024-11-29 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwk000gz2z10rn5r1730', 1115674, '2024-11-30 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwky00h12z1068d755k2', 1115674, '2024-12-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwl500h32z103bl6h3ha', 1115674, '2024-12-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwli00h62z10lecdz4r1', 1115674, '2024-12-05 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwli00h92z102cl4zyso', 1115674, '2024-12-03 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwli00ha2z10owuldffk', 1115674, '2024-12-04 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwli00hb2z10mm431pz9', 1115674, '2024-12-06 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwmf00hd2z10x9ywhlsw', 1115674, '2024-12-07 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwmf00hf2z10pyxhhfwv', 1115674, '2024-12-08 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwmi00hh2z10e20prg5m', 1115674, '2024-12-09 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwnu00hj2z10ktn2odx5', 1115674, '2024-12-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwnx00hl2z1025c03kkp', 1115674, '2024-12-12 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xwoa00hn2z10bvly93v2', 1115674, '2024-12-10 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwoe00hr2z10garoxncx', 1115674, '2024-12-15 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xwoe00hs2z10d936h7ag', 1115674, '2024-12-14 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xwoe00ht2z10hg5ix89g', 1115674, '2024-12-13 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls15xwp700hx2z106g44l2c4', 1115674, '2024-12-17 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwp700hy2z10kqp2vm78', 1115674, '2024-12-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwp700hz2z10pdv3xywf', 1115674, '2024-12-16 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwqi00i12z10otdb7vgp', 1115674, '2024-12-20 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwqq00i32z10to98ekgj', 1115674, '2024-12-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwr900i52z10gcgzapnl', 1115674, '2024-12-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwrc00i72z102uvcwpt9', 1115674, '2024-12-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwrf00ia2z10gj4s4r0i', 1115674, '2024-12-26 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwrf00ib2z103kf4fii5', 1115674, '2024-12-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xws900id2z10sp4t565o', 1115674, '2024-12-27 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwsb00if2z1065yd094s', 1115674, '2024-12-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwsc00ih2z10qdozgms1', 1115674, '2024-12-29 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwtb00ij2z104yertr18', 1115674, '2024-12-31 00:00:00.000', 3412234, 'IDR', 1
    ),
    (
        'cls15xwtt00il2z10cc5j2q78', 1115674, '2025-01-01 00:00:00.000', 3409780, 'IDR', 1
    ),
    (
        'cls15xwtz00in2z10sj5xf8ie', 1115674, '2024-12-30 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwub00ip2z10r468cgh1', 1115674, '2025-01-03 00:00:00.000', 1894428, 'IDR', 1
    ),
    (
        'cls15xwub00is2z1010db790i', 1115674, '2025-01-02 00:00:00.000', 1899957, 'IDR', 1
    ),
    (
        'cls15xwub00it2z10rqf3fdd3', 1115674, '2024-12-28 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwvb00iv2z109do71bbj', 1115674, '2025-01-04 00:00:00.000', 1899532, 'IDR', 1
    ),
    (
        'cls15xwvc00ix2z10adlkrr3o', 1115674, '2024-12-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xwvd00iz2z106ckxppzg', 1115674, '2025-01-05 00:00:00.000', 1895945, 'IDR', 1
    ),
    (
        'cls15xww300j12z10dou9koc4', 1115674, '2025-01-07 00:00:00.000', 1901206, 'IDR', 1
    ),
    (
        'cls15xwwl00j32z103m7nkem9', 1115674, '2025-01-08 00:00:00.000', 1901882, 'IDR', 1
    ),
    (
        'cls15xwwp00j52z10z24hoaan', 1115674, '2025-01-09 00:00:00.000', 1900115, 'IDR', 1
    ),
    (
        'cls15xwx200j72z10jx7xik70', 1115674, '2025-01-06 00:00:00.000', 1898079, 'IDR', 1
    ),
    (
        'cls15xwx500j92z10rshf7ewc', 1115674, '2025-01-11 00:00:00.000', 1900932, 'IDR', 1
    ),
    (
        'cls15xwx500jb2z10gr354pl2', 1115674, '2025-01-10 00:00:00.000', 1896159, 'IDR', 1
    ),
    (
        'cls15xwxs00jd2z10k3n258c0', 1115674, '2025-01-12 00:00:00.000', 1896223, 'IDR', 1
    ),
    (
        'cls15xwy700jf2z10mfku53dd', 1115674, '2025-01-13 00:00:00.000', 1896546, 'IDR', 1
    ),
    (
        'cls15xwyg00jh2z1028sg7j6c', 1115674, '2025-01-15 00:00:00.000', 1897192, 'IDR', 1
    ),
    (
        'cls15xwyz00jj2z10c2nhennc', 1115674, '2025-01-14 00:00:00.000', 1897778, 'IDR', 1
    ),
    (
        'cls15xwzg00jl2z10wt56w0yg', 1115674, '2025-01-16 00:00:00.000', 1897869, 'IDR', 1
    ),
    (
        'cls15xwzl00jn2z10cm42g2gl', 1115674, '2025-01-17 00:00:00.000', 1897411, 'IDR', 1
    ),
    (
        'cls15xwzz00jp2z108p924xzc', 1115674, '2025-01-18 00:00:00.000', 1901083, 'IDR', 1
    ),
    (
        'cls15xx0500jr2z10i29vbta0', 1115674, '2025-01-20 00:00:00.000', 1896474, 'IDR', 1
    ),
    (
        'cls15xx0600jt2z10lfw5xdt8', 1115674, '2025-01-19 00:00:00.000', 1895498, 'IDR', 1
    ),
    (
        'cls15xx0j00jv2z10bznotk03', 1115674, '2025-01-22 00:00:00.000', 1903083, 'IDR', 1
    ),
    (
        'cls15xx0z00jx2z109s4cm1od', 1115674, '2025-01-23 00:00:00.000', 1909586, 'IDR', 1
    ),
    (
        'cls15xx1900jz2z1029vdlauk', 1115674, '2025-01-21 00:00:00.000', 1897384, 'IDR', 1
    ),
    (
        'cls15xx1h00k12z10hcrkrf7h', 1115674, '2025-01-24 00:00:00.000', 1916253, 'IDR', 1
    ),
    (
        'cls15xx1t00k32z10yp9j67lo', 1115674, '2025-01-25 00:00:00.000', 1920946, 'IDR', 1
    ),
    (
        'cls15xx2i00k52z108e56b1ic', 1115674, '2025-01-27 00:00:00.000', 1922242, 'IDR', 1
    ),
    (
        'cls15xx2l00k72z105tgeax9d', 1115674, '2025-01-26 00:00:00.000', 1919452, 'IDR', 1
    ),
    (
        'cls15xx3500ka2z10bdsp66rt', 1115674, '2025-01-31 00:00:00.000', 1932691, 'IDR', 1
    ),
    (
        'cls15xx3500kb2z109js9d5v0', 1115674, '2025-01-30 00:00:00.000', 1930867, 'IDR', 1
    ),
    (
        'cls15xx3j00kd2z10nf4r1lp3', 1115674, '2025-01-28 00:00:00.000', 1926151, 'IDR', 1
    ),
    (
        'cls15xx4300kf2z10etcwh7hm', 1115674, '2025-01-29 00:00:00.000', 1928247, 'IDR', 1
    ),
    (
        'cls15xx4500ki2z10oig3wpuf', 1115674, '2025-02-02 00:00:00.000', 1939450, 'IDR', 1
    ),
    (
        'cls15xx4500kj2z104jsa195w', 1115674, '2025-02-01 00:00:00.000', 1937454, 'IDR', 1
    ),
    (
        'cls15xx4j00kl2z10cz9k82uh', 1115674, '2025-02-04 00:00:00.000', 1944735, 'IDR', 1
    ),
    (
        'cls15xx5500kn2z10hcu75qmu', 1115674, '2025-02-03 00:00:00.000', 1942045, 'IDR', 1
    ),
    (
        'cls15xx5900kp2z10dzb6q9be', 1115674, '2025-02-06 00:00:00.000', 1948548, 'IDR', 1
    ),
    (
        'cls15xx5n00ks2z10o1w667ve', 1115674, '2025-02-05 00:00:00.000', 1946571, 'IDR', 1
    ),
    (
        'cls15xx5n00kt2z10zlfize5f', 1115674, '2025-02-07 00:00:00.000', 1952572, 'IDR', 1
    ),
    (
        'cls15xx6300kv2z10c4lg5ak8', 1115674, '2025-02-09 00:00:00.000', 1955275, 'IDR', 1
    ),
    (
        'cls15xx6r00ky2z10lvcno2b6', 1115674, '2025-02-08 00:00:00.000', 1955264, 'IDR', 1
    ),
    (
        'cls15xx6r00kz2z10c5erso21', 1115674, '2025-02-10 00:00:00.000', 1957195, 'IDR', 1
    ),
    (
        'cls15xx6v00l12z10ha90hf57', 1115674, '2025-02-11 00:00:00.000', 1959601, 'IDR', 1
    ),
    (
        'cls15xx7900l32z105a6pv2fw', 1115674, '2025-02-13 00:00:00.000', 1961038, 'IDR', 1
    ),
    (
        'cls15xx7p00l52z101jcm9sbg', 1115674, '2025-02-14 00:00:00.000', 1961431, 'IDR', 1
    ),
    (
        'cls15xx7x00l72z10qv78f1tw', 1115674, '2025-02-15 00:00:00.000', 1962390, 'IDR', 1
    ),
    (
        'cls15xx8800la2z10sav6mvqk', 1115674, '2025-02-16 00:00:00.000', 1961723, 'IDR', 1
    ),
    (
        'cls15xx8800lb2z10zc5yvule', 1115674, '2025-02-19 00:00:00.000', 1963471, 'IDR', 1
    ),
    (
        'cls15xx8o00ld2z10p6sh15n6', 1115674, '2025-02-17 00:00:00.000', 1962292, 'IDR', 1
    ),
    (
        'cls15xx9d00lf2z10vjntov5f', 1115674, '2025-02-18 00:00:00.000', 1963057, 'IDR', 1
    ),
    (
        'cls15xx9u00lh2z10dtjdccve', 1115674, '2025-02-22 00:00:00.000', 1909328, 'IDR', 1
    ),
    (
        'cls15xxa700lj2z10iqarwd0q', 1115674, '2025-02-21 00:00:00.000', 1938259, 'IDR', 1
    ),
    (
        'cls15xxa900ll2z10m16j9jru', 1115674, '2025-02-20 00:00:00.000', 1963885, 'IDR', 1
    ),
    (
        'cls15xxaj00ln2z10qcj7lwph', 1115674, '2025-02-23 00:00:00.000', 1878785, 'IDR', 1
    ),
    (
        'cls15xxb200lp2z10bs1n4213', 1115674, '2025-02-25 00:00:00.000', 1818853, 'IDR', 1
    ),
    (
        'cls15xxbb00lr2z1047pqztvo', 1115674, '2025-02-27 00:00:00.000', 1758228, 'IDR', 1
    ),
    (
        'cls15xxbg00lt2z10jqnq69gn', 1115674, '2025-02-24 00:00:00.000', 1848824, 'IDR', 1
    ),
    (
        'cls15xxbr00lv2z10extgfbew', 1115674, '2025-02-26 00:00:00.000', 1788490, 'IDR', 1
    ),
    (
        'cls15xxcd00lx2z10uwx5ujbm', 1115674, '2025-02-28 00:00:00.000', 1727896, 'IDR', 1
    ),
    (
        'cls15xxcj00lz2z10oc9xxqwa', 1115674, '2025-02-12 00:00:00.000', 1960651, 'IDR', 1
    ),
    (
        'cls15xxcr00m12z10fdfiiamb', 1115674, '2025-03-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxd100m32z106nixqjgh', 1115674, '2025-03-03 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxdt00m52z10ltuokfjd', 1115674, '2025-03-04 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxe700m72z10v63o1wyl', 1115674, '2025-03-05 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxea00m92z10a48p8m6r', 1115674, '2025-03-06 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxea00mb2z10tpndaecy', 1115674, '2025-03-10 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxf800md2z10rfyd9qtc', 1115674, '2025-03-08 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxf800mf2z1071blfg79', 1115674, '2025-03-07 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxfn00mh2z10rsr7cicz', 1115674, '2025-03-09 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxfv00mj2z10kcmn4sho', 1115674, '2025-03-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxg100ml2z10yzg687gh', 1115674, '2025-03-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxgk00mn2z102x11zl05', 1115674, '2025-03-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxgx00mp2z10tfb87i8h', 1115674, '2025-03-15 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxh300mr2z10q6r3shaf', 1115674, '2025-03-14 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxh600mt2z10vidwnqwb', 1115674, '2025-03-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxht00mv2z10qw3di3t0', 1115674, '2025-03-16 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxi300mx2z10tyd33gaa', 1115674, '2025-03-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxi800mz2z10optdk8tl', 1115674, '2025-03-20 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxiq00n22z10lr6wsm6f', 1115674, '2025-03-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxiq00n32z10zh9yrfhq', 1115674, '2025-03-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxj300n52z10le9ph8og', 1115674, '2025-03-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxjg00n72z10tnoxk1nf', 1115674, '2025-03-26 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxjl00n92z10punco7xi', 1115674, '2025-03-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxjq00nb2z10hocjnyvk', 1115674, '2025-03-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxkm00nd2z10c0sdre2c', 1115674, '2025-03-28 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxl100nf2z109xhfqcih', 1115674, '2025-03-31 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxl500nh2z10uz5r5zfz', 1115674, '2025-03-27 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxlq00nl2z10n3yruerc', 1115674, '2025-04-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxlq00nm2z102vsuoyuo', 1115674, '2025-03-29 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxlq00nn2z10ate37scp', 1115674, '2025-04-03 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxmc00np2z10xcwapqmx', 1115674, '2025-04-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxmu00nr2z10mlxwevbm', 1115674, '2025-04-04 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxmu00nt2z10s9aggyjt', 1115674, '2025-04-07 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxnc00nv2z106e4s6n1j', 1115674, '2025-04-06 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxnw00nx2z106j7w4m2r', 1115674, '2025-04-05 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxny00nz2z101a4x62xd', 1115674, '2025-04-08 00:00:00.000', 2733649, 'IDR', 1
    ),
    (
        'cls15xxoi00o12z10kqqxeg0f', 1115674, '2025-04-09 00:00:00.000', 2650645, 'IDR', 1
    ),
    (
        'cls15xxok00o32z102xo2zxks', 1115674, '2025-04-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxop00o52z10yzscp3un', 1115674, '2025-04-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxpb00o72z10qpqnexvl', 1115674, '2025-04-15 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxpy00o92z10beuc436g', 1115674, '2025-03-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxq000ob2z10zgvjibnj', 1115674, '2025-04-17 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxqg00od2z10br5dk6zl', 1115674, '2025-04-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxr800of2z107ug6dnrc', 1115674, '2025-04-14 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxrc00oh2z10225o35ux', 1115674, '2025-04-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxrn00ok2z10a4jtrm8g', 1115674, '2025-04-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxrn00ol2z102g9s6foa', 1115674, '2025-04-16 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxrs00on2z10ycd3gqm8', 1115674, '2025-04-20 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxsg00op2z10frzb9rnj', 1115674, '2025-04-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxsz00or2z1001bac6ty', 1115674, '2025-04-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxt800ot2z10zar9i6w9', 1115674, '2025-04-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxtf00ov2z1010e1r3yt', 1115674, '2025-04-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxts00oy2z102m0b64qo', 1115674, '2025-04-26 00:00:00.000', 2600735, 'IDR', 1
    ),
    (
        'cls15xxts00oz2z10edu1tmz0', 1115674, '2025-04-28 00:00:00.000', 3434822, 'IDR', 1
    ),
    (
        'cls15xxu800p12z1044ywiymj', 1115674, '2025-04-29 00:00:00.000', 2951160, 'IDR', 1
    ),
    (
        'cls15xxui00p32z1038rg4taj', 1115674, '2025-04-30 00:00:00.000', 3415972, 'IDR', 1
    ),
    (
        'cls15xxuw00p52z10i8yveq1b', 1115674, '2025-05-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxuy00p72z10cu5o3m29', 1115674, '2025-04-27 00:00:00.000', 2618334, 'IDR', 1
    ),
    (
        'cls15xxvc00p92z10za082iqc', 1115674, '2025-05-03 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxvu00pb2z10q8byxm13', 1115674, '2025-05-04 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxvu00pd2z10xrj91soi', 1115674, '2025-05-06 00:00:00.000', 2967132, 'IDR', 1
    ),
    (
        'cls15xxwc00pf2z106libqorb', 1115674, '2025-04-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxwc00ph2z10odaiyvag', 1115674, '2025-05-05 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxwu00pj2z10h18n9r63', 1115674, '2025-05-07 00:00:00.000', 2598861, 'IDR', 1
    ),
    (
        'cls15xxxa00pl2z10na6p69po', 1115674, '2025-05-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxxi00pn2z10awvhfiyr', 1115674, '2025-05-09 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxxq00pp2z10pc24mp56', 1115674, '2025-05-10 00:00:00.000', 2545496, 'IDR', 1
    ),
    (
        'cls15xxy400pr2z10fxb4s9nz', 1115674, '2025-04-10 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxyk00pu2z10a6i4rpja', 1115674, '2025-05-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxyk00pv2z10iq2cyrbr', 1115674, '2025-05-14 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxza00px2z10hqeppnlx', 1115674, '2025-05-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxza00pz2z10q74r9xqb', 1115674, '2025-05-16 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xxzt00q12z10lcdsjm1t', 1115674, '2025-05-17 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy0q00q42z10mq094qj8', 1115674, '2025-05-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy0q00q52z104kleqxvo', 1115674, '2025-05-15 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy1000q72z10qy6k72ja', 1115674, '2025-05-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy1e00qa2z10lmznyayb', 1115674, '2025-05-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy1e00qb2z10gacmesxu', 1115674, '2025-05-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy1o00qd2z103rex8k7f', 1115674, '2025-05-20 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy2800qf2z10g4f4c5jb', 1115674, '2025-05-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy2g00qh2z109qz3xnyh', 1115674, '2025-05-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy2m00qj2z10qbqf00ik', 1115674, '2025-05-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy3a00ql2z10j84zhab5', 1115674, '2025-05-26 00:00:00.000', 2712435, 'IDR', 1
    ),
    (
        'cls15xy3c00qn2z10fmtup9u0', 1115674, '2025-05-27 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy3z00qp2z10rp02fbnl', 1115674, '2025-05-29 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy4s00qr2z10rdrmexcz', 1115674, '2025-05-28 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy4y00qt2z10piheu5aw', 1115674, '2025-05-08 00:00:00.000', 2521232, 'IDR', 1
    ),
    (
        'cls15xy5000qv2z10k3zvti8l', 1115674, '2025-05-31 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy5g00qx2z10awc2k1ap', 1115674, '2025-06-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy6600qz2z10hmy9klxu', 1115674, '2025-06-03 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy6700r12z10gqxibt2u', 1115674, '2025-06-05 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy6s00r32z105n3bznfe', 1115674, '2025-06-04 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy6s00r52z10oyyjcqcz', 1115674, '2025-06-06 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy7f00r72z101aoie6e9', 1115674, '2025-06-07 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy8400ra2z10yh9flwa8', 1115674, '2025-03-17 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy8400rb2z10w70b3a7i', 1115674, '2025-06-08 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy8500rd2z109349n31h', 1115674, '2025-06-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy8b00rf2z10npdo2ftu', 1115674, '2025-06-10 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy9000rh2z10dpbd9lpv', 1115674, '2025-06-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy9100rj2z10fx6ozevn', 1115674, '2025-06-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xy9w00rl2z10i3e3lg0d', 1115674, '2025-06-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyaa00rn2z10wr22ea7d', 1115674, '2025-06-09 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyac00rp2z104rnoyvdu', 1115674, '2025-06-15 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyb500ru2z1088g9l0be', 1115674, '2025-06-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyb500rv2z10jy856gvh', 1115674, '2025-06-17 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyb500rw2z10gjbjtgg7', 1115674, '2025-06-16 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyb500rx2z10s0z6rdfq', 1115674, '2025-06-20 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xybz00rz2z10uthut18y', 1115674, '2025-06-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyc000s12z108gafqn86', 1115674, '2025-06-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xycz00s32z105xge2xn1', 1115674, '2025-06-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyde00s62z10v8h9o7s1', 1115674, '2025-06-14 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyde00s72z10lsfkala7', 1115674, '2025-06-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xydt00s92z1054cz90si', 1115674, '2025-06-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xydv00sc2z10xyaugass', 1115674, '2025-06-26 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xydv00se2z10wczwprym', 1115674, '2025-06-27 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xydv00sf2z1017l1y0e3', 1115674, '2025-06-29 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyey00sh2z10d1qu7t5w', 1115674, '2025-06-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyez00sj2z10uo64q4g2', 1115674, '2025-06-30 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyg000sm2z10qkbv84l1', 1115674, '2025-05-30 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyg000sn2z10d7k81hv7', 1115674, '2025-07-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xygc00sp2z10p4xoawdz', 1115674, '2025-07-04 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xygj00ss2z10p688eawm', 1115674, '2025-07-03 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xygj00st2z10b82xqzbe', 1115674, '2025-07-05 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xygj00sv2z10r8ryaw1q', 1115674, '2025-07-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xygq00sx2z10bfju00oc', 1115674, '2025-05-01 00:00:00.000', 2519490, 'IDR', 1
    ),
    (
        'cls15xyhp00sz2z10z7req47r', 1115674, '2025-07-06 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyhs00t12z1028s63stg', 1115674, '2025-07-07 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyiq00t42z10lqinl5f4', 1115674, '2025-07-09 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyiq00t52z10wfc4p291', 1115674, '2025-07-08 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyj700t72z10ilrnnxxg', 1115674, '2025-07-10 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyj800t92z10kkfkxd97', 1115674, '2025-07-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyj900tc2z106v56hd58', 1115674, '2025-07-14 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyj900td2z104ztiz11z', 1115674, '2025-07-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyjj00tf2z10drsvi2qo', 1115674, '2025-07-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyka00th2z10aotbzcu0', 1115674, '2025-07-16 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xykc00tj2z10opv75lk3', 1115674, '2025-07-17 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xylh00tm2z10u9krsp54', 1115674, '2025-07-15 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xylh00tn2z10zps0oww8', 1115674, '2025-07-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xylt00tp2z10icjpjqcp', 1115674, '2025-07-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xylu00tr2z10zl4ehkh4', 1115674, '2025-07-20 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xylv00tt2z10vbybzirn', 1115674, '2025-07-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xylw00tv2z10wazh3jsz', 1115674, '2025-07-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xymc00tx2z108oxnt1ex', 1115674, '2025-07-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xymy00tz2z10j9gfqioq', 1115674, '2025-07-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyn400u12z10xzzour1y', 1115674, '2025-07-28 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyo200u32z10ichrsy0w', 1115674, '2025-07-26 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyo300u52z10s66kqyzh', 1115674, '2025-07-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyoh00ua2z10ffykv5k4', 1115674, '2025-07-30 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyoh00ub2z10dangjy0b', 1115674, '2025-07-31 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyoh00uc2z1081blj3vs', 1115674, '2025-03-30 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyoh00ud2z102kg3ikto', 1115674, '2025-07-27 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xyp100uf2z10vyj8q00l', 1115674, '2025-08-03 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xypf00uh2z10060bj81h', 1115674, '2025-08-02 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyph00uj2z103p57i8s2', 1115674, '2025-08-01 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyqh00ul2z109296u1yl', 1115674, '2025-08-04 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyqj00un2z10qog0au30', 1115674, '2025-08-05 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyr500ur2z10qdr77nem', 1115674, '2025-08-06 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyr500ut2z10l11di36r', 1115674, '2025-08-10 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyr500uu2z10ti2pqs8q', 1115674, '2025-08-09 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyr500uv2z10zun0a0f7', 1115674, '2025-08-08 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyrt00ux2z10xtw9ivcv', 1115674, '2025-08-11 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xysa00uz2z10rzh0o10u', 1115674, '2025-08-12 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyse00v12z10jmwn5das', 1115674, '2025-08-07 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xytq00v32z10ibpen3vp', 1115674, '2025-08-13 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xytu00v52z10fdvi7px5', 1115674, '2025-08-14 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyub00v72z10huhnfwin', 1115674, '2025-08-17 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyub00v92z10oxz2iwkq', 1115674, '2025-08-15 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyub00vc2z10942hmg5h', 1115674, '2025-08-19 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyub00vd2z10rluq70zq', 1115674, '2025-08-18 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyvc00vf2z10e3hwc14z', 1115674, '2025-08-21 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyvs00vh2z10p9nhs4k1', 1115674, '2025-08-23 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyvs00vj2z10bf6en64i', 1115674, '2025-08-22 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyxd00vl2z106h02mndm', 1115674, '2025-08-20 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyxg00vn2z10wcx61b2q', 1115674, '2025-08-25 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyxi00vp2z10osktjke6', 1115674, '2025-08-24 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyxp00vt2z10ql5zlqaf', 1115674, '2025-08-28 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyxp00vu2z10jq2iqt1u', 1115674, '2025-08-29 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyxp00vv2z10bjujxakc', 1115674, '2025-08-26 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyye00vx2z104i2vq05z', 1115674, '2025-08-30 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyz400w02z10j8ssew16', 1115674, '2025-08-31 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xyz400w12z10u4a56m6z', 1115674, '2025-08-27 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz0o00w32z10oet8zyan', 1115674, '2025-09-02 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz0x00w52z10vbl675wx', 1115674, '2025-09-04 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz1k00w72z10e2swqqhb', 1115674, '2025-09-01 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz1k00w92z109uj8egaq', 1115674, '2025-09-03 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz1l00wc2z1040qbxs58', 1115674, '2025-09-06 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz1l00wd2z10401x7yaq', 1115674, '2025-09-05 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz2q00wf2z10m789ig16', 1115674, '2025-09-07 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz2q00wi2z102j1mm0ok', 1115674, '2025-09-09 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz2q00wj2z104e84qd7a', 1115674, '2025-09-08 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz4300wl2z10i9mizgeo', 1115674, '2025-09-13 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz4600wn2z1088qxdcr5', 1115674, '2025-09-10 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz5e00wq2z10o8rd657u', 1115674, '2025-09-11 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz5e00wr2z10pkhlkdy7', 1115674, '2025-09-12 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz5g00wt2z10ygjvotzx', 1115674, '2025-09-15 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz5h00wv2z105z0yhp4k', 1115674, '2025-09-14 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz5n00wx2z10msvlzj05', 1115674, '2025-09-17 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz6a00wz2z10ru1khnmm', 1115674, '2025-09-19 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz6c00x12z10koo4azuw', 1115674, '2025-09-20 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz7600x32z10uywihd1j', 1115674, '2025-09-21 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz7700x52z10b4kzjrzx', 1115674, '2025-09-22 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz8m00x72z10c8mldgj6', 1115674, '2025-09-16 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz8m00xa2z108jkoldg2', 1115674, '2025-09-18 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz8m00xb2z10y0ctqp3b', 1115674, '2025-09-23 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz8m00xd2z10e1uc3raj', 1115674, '2025-09-24 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz8n00xf2z107zhletf3', 1115674, '2025-09-25 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz9k00xh2z10u289nn82', 1115674, '2025-09-29 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xz9n00xj2z10dj3dvi4k', 1115674, '2025-09-30 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzae00xl2z10lyjamgrw', 1115674, '2025-09-28 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzae00xn2z10kme0d0e1', 1115674, '2025-09-27 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzby00xp2z10u3ge120z', 1115674, '2025-10-03 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzc000xr2z10dthozs66', 1115674, '2025-10-02 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzc800xt2z10jrzbysm1', 1115674, '2025-10-04 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzch00xv2z106x34dte2', 1115674, '2025-09-26 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzck00xy2z10oyhk5zci', 1115674, '2025-10-07 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzck00xz2z1051fl8krw', 1115674, '2025-06-28 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls15xzd300y12z109z3fv7lm', 1115674, '2025-10-06 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzd400y32z10eytgie9z', 1115674, '2025-10-08 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzdp00y52z108ukp1erc', 1115674, '2025-10-10 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzeo00y72z1030xexghp', 1115674, '2025-10-09 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzew00y92z10gpcxxo97', 1115674, '2025-10-11 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzf400yb2z10yeonljk0', 1115674, '2025-10-05 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzf700yd2z10kj5ujf85', 1115674, '2025-10-01 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzf800yf2z10brtewqnw', 1115674, '2025-10-13 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzfe00yh2z10ffi4azov', 1115674, '2025-10-17 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzfo00yj2z10j43laqqx', 1115674, '2025-10-15 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzfy00yl2z105kvmrh9n', 1115674, '2025-10-18 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzga00yn2z10qs19b3uf', 1115674, '2025-10-14 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzh800yp2z1061zcgwqi', 1115674, '2025-10-16 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzhe00yr2z107vieo1kr', 1115674, '2025-10-20 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzhn00yt2z1079jrts86', 1115674, '2025-10-22 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzhq00yv2z10ehtxsntq', 1115674, '2025-10-21 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzhu00yx2z105plxznrk', 1115674, '2025-10-23 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzi800yz2z10ocu2drcx', 1115674, '2025-07-29 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzia00z12z102zhkwypm', 1115674, '2025-10-24 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzii00z32z10bxgsohbo', 1115674, '2025-10-25 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzj100z52z10yxtgs8ua', 1115674, '2025-10-26 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzjz00z72z10bxrvracz', 1115674, '2025-10-19 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzk500z92z10y8tlxc1l', 1115674, '2025-10-29 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzk600zb2z102gy1ig5n', 1115674, '2025-10-28 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzk600zd2z10l2n1suo2', 1115674, '2025-08-16 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzkk00zf2z10a4ursr2l', 1115674, '2025-10-27 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzkt00zi2z10seazvnwk', 1115674, '2025-10-12 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzkt00zj2z10jntqukw0', 1115674, '2025-10-30 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzlb00zl2z10m9x5mi3s', 1115674, '2025-10-31 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzlv00zn2z100x75iqi0', 1115674, '2025-11-02 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzmv00zp2z10ou4ib3m8', 1115674, '2025-11-03 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzn100zr2z10cej0v8x0', 1115674, '2025-11-01 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzn200zt2z10hhwplnus', 1115674, '2025-11-04 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzn200zv2z10c7b2ddhp', 1115674, '2025-11-05 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xznk00zy2z10xt4l4z18', 1115674, '2025-11-10 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xznk00zz2z10ub72pgx4', 1115674, '2025-11-08 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzns01012z10a3w23i47', 1115674, '2025-11-09 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzo301032z102zzp5h0x', 1115674, '2025-11-11 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzoz01052z10iz6qmwgk', 1115674, '2025-11-12 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzpw01072z10lb8f5qif', 1115674, '2025-11-13 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzpx01092z10mno9ec2d', 1115674, '2025-11-14 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzqe010b2z10f0e8409x', 1115674, '2025-11-15 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzqi010d2z10enl3sg32', 1115674, '2025-11-17 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzqk010f2z104ys8taco', 1115674, '2025-11-16 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzql010h2z10ybnnaobq', 1115674, '2025-11-18 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzqm010j2z10m8pwry4u', 1115674, '2025-11-19 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzr0010l2z10i5nqs1hv', 1115674, '2025-11-20 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzrk010n2z10crmi7094', 1115674, '2025-11-21 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzss010p2z1023sulj3n', 1115674, '2025-11-23 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzt1010r2z10wa1n6202', 1115674, '2025-11-22 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzt3010t2z10rxq3tysa', 1115674, '2025-11-24 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzte010v2z10pkbxpnpz', 1115674, '2025-11-26 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzte010y2z108hj5w5ho', 1115674, '2025-11-25 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzte010z2z10l2lyi38b', 1115674, '2025-11-28 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xztg01112z10ey4naxh2', 1115674, '2025-11-27 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xztv01132z10f6s0zmxt', 1115674, '2025-11-06 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzug01152z104m3sb0b3', 1115674, '2025-12-01 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzve01172z10ka6hmlo8', 1115674, '2025-11-30 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzvm01192z10o46qma1v', 1115674, '2025-12-03 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzvt011b2z10thofvwkk', 1115674, '2025-12-02 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzw1011d2z10p3ew955q', 1115674, '2025-12-04 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzw3011f2z10fuaoqs3l', 1115674, '2025-12-05 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzw4011i2z10ollcs4y3', 1115674, '2025-11-29 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzw4011j2z10sfdrcg7e', 1115674, '2025-12-07 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzwj011l2z10wyt2b26m', 1115674, '2025-12-08 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzx9011n2z10x1wolo3c', 1115674, '2025-12-09 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzya011q2z10z6lbmctd', 1115674, '2025-12-11 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzya011r2z10x3t84bw0', 1115674, '2025-12-12 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzyl011t2z10loo5yhns', 1115674, '2025-12-13 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzys011v2z104jm360qw', 1115674, '2025-12-14 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzyx011x2z10cvxil54t', 1115674, '2025-11-07 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzyy01202z109ini1hkh', 1115674, '2025-12-16 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzyy01212z105lq3t5b5', 1115674, '2025-12-17 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzz701232z10ecklszjk', 1115674, '2025-12-06 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15xzzv01252z10b4akzflt', 1115674, '2025-12-19 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y00r01272z10bn8ue43a', 1115674, '2025-12-18 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y00z01292z103ewnk0az', 1115674, '2025-12-20 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y01b012b2z10mvz4hvea', 1115674, '2025-12-10 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y01p012e2z10iv7tnzsa', 1115674, '2025-12-15 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y01p012f2z10glh68r9j', 1115674, '2025-12-21 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y01v012h2z10jx30pmau', 1115674, '2025-12-24 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y01y012j2z10if560eey', 1115674, '2025-12-23 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y02f012l2z10v5urs0b3', 1115674, '2025-12-26 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y02g012n2z10is5t6qrs', 1115674, '2025-12-25 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y03d012p2z105n6oqot4', 1115674, '2025-12-27 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y04m012r2z100cyf6l19', 1115674, '2025-12-28 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y04o012v2z101lvbxy15', 1115674, '2025-12-30 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y04o012x2z101ph7f9sr', 1115674, '2025-12-22 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y04o012y2z10natq4aqm', 1115674, '2025-12-31 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y04o012z2z10nvf6jknb', 1115674, '2026-01-02 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y05n01312z10wsmll94n', 1115674, '2026-01-04 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y05q01332z10vnejcad9', 1115674, '2026-01-01 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y06h01352z10671vognk', 1115674, '2026-01-07 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y07j01372z10ul735uoo', 1115674, '2026-01-05 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y09201392z1065xpq8od', 1115674, '2026-01-08 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y094013b2z108ugclbj9', 1115674, '2026-01-11 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y094013e2z10xhef5i4t', 1115674, '2026-01-10 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y094013g2z10maezpaih', 1115674, '2026-01-14 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y094013h2z1048djde8q', 1115674, '2026-01-13 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0bm013j2z10dpudy1jf', 1115674, '2026-01-12 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0bn013l2z10trrzqdqz', 1115674, '2026-01-15 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0df013n2z10r5yflj8q', 1115674, '2026-01-16 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0f0013p2z10catrubc1', 1115674, '2026-01-09 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0fs013r2z10p9f7l9vh', 1115674, '2026-01-17 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0ft013u2z10cbrajyws', 1115674, '2026-01-18 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0ft013v2z10kdzgpg1s', 1115674, '2026-01-19 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0ft013y2z10d317jy0z', 1115674, '2026-01-20 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0ft013z2z10h7763znx', 1115674, '2026-01-22 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0g801412z100v6itiqs', 1115674, '2026-01-21 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0gb01432z10pdvq7yt9', 1115674, '2026-01-24 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0gu01452z1069s8ssbw', 1115674, '2026-01-26 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0hr01472z10utklygy0', 1115674, '2026-01-23 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0in01492z10yjx8thw8', 1115674, '2026-01-28 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0j2014e2z10kitphtzc', 1115674, '2026-01-27 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0j2014g2z10xbfpmipt', 1115674, '2026-01-31 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0j2014h2z10ofuqn14n', 1115674, '2026-01-06 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0j2014i2z10pq5gmqjg', 1115674, '2026-01-29 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0j2014j2z10noop1vgx', 1115674, '2025-12-29 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0ja014l2z10cx4geu5b', 1115674, '2026-01-30 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0jv014n2z102rlupjs6', 1115674, '2026-01-03 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls15y0kw014p2z10mx5c473t', 1115674, '2026-01-25 00:00:00.000', NULL, 'IDR', 1
    ),
    (
        'cls16bzoy014r2z10oh4uezt3', 1115668, '2024-02-05 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls16bzp2014t2z10gl2eo4m7', 1115668, '2024-02-03 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls16bzp2014v2z10jmzs9w1l', 1115668, '2024-02-01 00:00:00.000', 1900000, 'IDR', 0
    ),
    (
        'cls16bzp8014x2z10jdfudncn', 1115668, '2024-01-31 00:00:00.000', 1900000, 'IDR', 1
    ),
    (
        'cls16bzp8014z2z10s6mk8azu', 1115668, '2024-02-02 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls16bzp801512z10bcajc6cw', 1115668, '2024-02-07 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls16bzpd01532z10bs26se83', 1115668, '2024-01-30 00:00:00.000', 1900000, 'IDR', 0
    ),
    (
        'cls16bzpd01562z10yjvt6gjm', 1115668, '2024-02-04 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls16bzpd01572z10xsxhuj36', 1115668, '2024-02-06 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls16bzsm01592z10m6id1oq5', 1115668, '2024-02-08 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls16bzsw015b2z10fezd6nnc', 1115668, '2024-02-09 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls16bzsx015e2z107uqa1afm', 1115668, '2024-02-10 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls16bzsx015f2z10b91jg4zd', 1115668, '2024-02-12 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls16bzt0015h2z10xzxtrt83', 1115668, '2024-02-11 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls16bzt9015j2z10ik6yri2r', 1115668, '2024-02-13 00:00:00.000', 1700621, 'IDR', 0
    ),
    (
        'cls16bzte015l2z105jru6qy0', 1115668, '2024-02-15 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls16bztk015n2z10jpsd6sgj', 1115668, '2024-02-14 00:00:00.000', 1722299, 'IDR', 0
    ),
    (
        'cls16bzts015p2z10941qr86y', 1115668, '2024-02-16 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls16bzuu015r2z10lprfnq2c', 1115668, '2024-02-17 00:00:00.000', 1778100, 'IDR', 0
    ),
    (
        'cls16bzvh015t2z102nwkchhb', 1115668, '2024-02-18 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls16bzvh015v2z10jcmfxs82', 1115668, '2024-02-21 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls16bzvh015x2z105xg85kgf', 1115668, '2024-02-19 00:00:00.000', 1914050, 'IDR', 0
    ),
    (
        'cls16bzvh015z2z105a2dsn65', 1115668, '2024-02-20 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls16bzvu01612z10zvxmpe8j', 1115668, '2024-02-23 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls16bzvz01632z1031i3hx70', 1115668, '2024-02-24 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls16bzw801652z108xath5tl', 1115668, '2024-02-22 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls16bzwe01672z10r5l8uq1p', 1115668, '2024-02-25 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls16bzxd01692z10iwp9llya', 1115668, '2024-02-26 00:00:00.000', 1743476, 'IDR', 0
    ),
    (
        'cls16bzy7016b2z101n2l8ix7', 1115668, '2024-02-29 00:00:00.000', 1700000, 'IDR', 0
    ),
    (
        'cls16bzy8016d2z10mvsirq7r', 1115668, '2024-02-27 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls16bzy8016g2z10qlfaws2o', 1115668, '2024-03-01 00:00:00.000', 2000000, 'IDR', 0
    ),
    (
        'cls16bzy8016h2z100bcgon5n', 1115668, '2024-03-03 00:00:00.000', 1900000, 'IDR', 0
    ),
    (
        'cls16bzyn016j2z10upebcruv', 1115668, '2024-03-02 00:00:00.000', 1900000, 'IDR', 0
    ),
    (
        'cls16bzyn016l2z104nlocwzn', 1115668, '2024-02-28 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls16bzz5016n2z10hz204fo5', 1115668, '2024-03-05 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16bzz5016p2z10jy892334', 1115668, '2024-03-04 00:00:00.000', 1900000, 'IDR', 0
    ),
    (
        'cls16bzzu016r2z107hfkasd2', 1115668, '2024-03-07 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c00v016t2z10z8ahx63x', 1115668, '2024-03-06 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c00y016v2z10z5525l1x', 1115668, '2024-03-09 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c00y016y2z10ym5mkutx', 1115668, '2024-03-08 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c00y016z2z106xz5jb70', 1115668, '2024-03-10 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c01d01712z10w03geyqx', 1115668, '2024-03-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c01h01732z10s12cxcp7', 1115668, '2024-03-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c01x01752z10dzonluv0', 1115668, '2024-03-15 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c02101772z10y2oa8xfo', 1115668, '2024-03-16 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c02d01792z10u4opbfor', 1115668, '2024-03-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c03h017c2z1092m3wj4c', 1115668, '2024-03-14 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c03h017d2z10tljn3rot', 1115668, '2024-03-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c03n017f2z10uwf75knj', 1115668, '2024-03-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c03p017h2z10lj9udkjp', 1115668, '2024-03-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c03z017j2z106vgzf2ie', 1115668, '2024-03-20 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c043017l2z10nqxrl5fr', 1115668, '2024-03-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c04f017n2z103uhf1xzq', 1115668, '2024-03-17 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c04r017p2z10qn894ys8', 1115668, '2024-03-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c04x017r2z109jt1wcsd', 1115668, '2024-03-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c061017t2z10qnqswu4l', 1115668, '2024-03-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c067017x2z10ghkn217d', 1115668, '2024-03-26 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c067017y2z10o6f440zd', 1115668, '2024-03-27 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c067017z2z10gkp94d42', 1115668, '2024-03-28 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c06h01812z10wfhez68q', 1115668, '2024-03-29 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c06t01832z10fcrgpf6q', 1115668, '2024-03-30 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c07201852z10v8v2v6pg', 1115668, '2024-04-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c07l01872z106dk3ju9t', 1115668, '2024-04-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c07l01892z10h1s3hgaa', 1115668, '2024-04-03 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c08t018b2z10irpf9fgk', 1115668, '2024-03-31 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c097018d2z102j9q7p8k', 1115668, '2024-04-04 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c098018f2z10pch73q4l', 1115668, '2024-04-08 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c098018h2z10nj5b7snb', 1115668, '2024-04-06 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c099018j2z102qss78ou', 1115668, '2024-04-07 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c099018l2z102ks5jzb8', 1115668, '2024-04-09 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c09l018n2z103dms34p3', 1115668, '2024-04-05 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0a1018p2z10d8j9b03x', 1115668, '2024-04-10 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0an018r2z10hdmdi3n9', 1115668, '2024-04-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0bg018t2z10xdjz8fpx', 1115668, '2024-04-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0c8018v2z10i7bcb3sx', 1115668, '2024-04-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0cd018x2z105uqg1slw', 1115668, '2024-04-14 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0cl01912z10w17hrgq0', 1115668, '2024-04-18 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0cl01922z10k9kn60ni', 1115668, '2024-04-15 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0cl01932z10g6rx72sl', 1115668, '2024-04-20 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0ct01952z10iq6r18le', 1115668, '2024-04-17 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0d301972z10o5vqwm4j', 1115668, '2024-04-19 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0dq01992z10umtcfwee', 1115668, '2024-04-16 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0e3019b2z10ur08y2s2', 1115668, '2024-04-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0eq019d2z10igxx8cjk', 1115668, '2024-04-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0ez019f2z109vj0xgfv', 1115668, '2024-04-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0f0019i2z10jh9nra3k', 1115668, '2024-04-26 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0f0019j2z10r7onhewg', 1115668, '2024-04-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0f5019l2z10gm6my7bb', 1115668, '2024-04-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0fj019n2z10uykbeqnn', 1115668, '2024-04-28 00:00:00.000', 2571658, 'IDR', 0
    ),
    (
        'cls16c0fl019p2z10fauznan1', 1115668, '2024-04-29 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0go019r2z10bed42js7', 1115668, '2024-04-27 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0gp019t2z10fs7p6wlk', 1115668, '2024-04-30 00:00:00.000', 2880126, 'IDR', 0
    ),
    (
        'cls16c0hh019v2z101vzfcitl', 1115668, '2024-05-02 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0ho019y2z10zylf1lix', 1115668, '2024-05-04 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0ho019z2z104f8vbqqb', 1115668, '2024-05-05 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0ho01a12z10rw42pju2', 1115668, '2024-05-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0i001a32z10014pp250', 1115668, '2024-05-03 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0i101a52z10dn9cjoub', 1115668, '2024-05-07 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0i501a72z102frcbhdf', 1115668, '2024-05-06 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0iz01a92z106htvro95', 1115668, '2024-05-08 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0je01ab2z10s08ahyk3', 1115668, '2024-05-10 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0k501ae2z10vb8fhq3c', 1115668, '2024-05-09 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0k501af2z10gqh0qcpz', 1115668, '2024-05-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0k501ai2z10g90wucqm', 1115668, '2024-05-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0k501aj2z104l8fm51f', 1115668, '2024-05-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0kl01al2z104309lxpq', 1115668, '2024-05-14 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0ks01ao2z10uncd2ais', 1115668, '2024-05-17 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0ks01ap2z10bngnpyw2', 1115668, '2024-05-16 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0lm01ar2z10947fq728', 1115668, '2024-05-20 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0m401at2z10aizitpii', 1115668, '2024-05-18 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0mh01av2z100nj48zze', 1115668, '2024-05-15 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0mn01az2z10k50quswj', 1115668, '2024-05-19 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0mn01b02z10a01x3zqn', 1115668, '2024-05-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0mn01b12z102bfwglud', 1115668, '2024-05-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0n501b32z106lar78z6', 1115668, '2024-05-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0nc01b62z10qkr3pbh0', 1115668, '2024-05-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0nc01b72z103gtf52nd', 1115668, '2024-05-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0o601b92z10dmofagih', 1115668, '2024-05-28 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0on01bb2z10vohjuzjh', 1115668, '2024-05-29 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0p401bd2z10tg8hfnrs', 1115668, '2024-05-26 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0p701bf2z101s6v8p0y', 1115668, '2024-05-27 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0pa01bh2z107npuabg7', 1115668, '2024-05-30 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0pb01bj2z10eb9e5ait', 1115668, '2024-05-31 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0pi01bl2z103sxno5hb', 1115668, '2024-06-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0pt01bo2z10dhc66ycf', 1115668, '2024-06-03 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0pt01bp2z10615r4dxt', 1115668, '2024-06-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0qm01br2z108jo1cgm2', 1115668, '2024-06-05 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0ra01bt2z105j1hq4bw', 1115668, '2024-06-07 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0rq01bv2z10zqewgdo9', 1115668, '2024-06-04 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0rv01bz2z10du0t2grs', 1115668, '2024-06-06 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0rv01c02z101su3p1p7', 1115668, '2024-06-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0rv01c12z10vctyfzq1', 1115668, '2024-06-08 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0rv01c32z10trmfo547', 1115668, '2024-06-10 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0sa01c52z10n8657yqg', 1115668, '2024-06-09 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0se01c72z104r9rstwd', 1115668, '2024-06-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0sx01c92z102lfkjjg5', 1115668, '2024-06-17 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0tw01cb2z109w31l0po', 1115668, '2024-06-16 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0ub01cd2z10v9beoax8', 1115668, '2024-06-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0ug01ch2z106geunf23', 1115668, '2024-06-15 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0ug01ci2z10kaahfv3e', 1115668, '2024-06-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0ug01cj2z107n5ppnm1', 1115668, '2024-06-20 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0ug01cl2z10liy96v33', 1115668, '2024-06-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0uu01co2z104i1y4b4g', 1115668, '2024-06-21 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0uu01cp2z10a1mste6m', 1115668, '2024-06-22 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0vg01cr2z10ffcrd96o', 1115668, '2024-06-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0wl01ct2z10gm92i00i', 1115668, '2024-06-29 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0wq01cv2z10a0yyn3ix', 1115668, '2024-06-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0wy01cx2z106tfco0tz', 1115668, '2024-06-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0x201cz2z10k0em0eve', 1115668, '2024-06-28 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0x401d12z10w8gnog2x', 1115668, '2024-06-30 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0x401d32z109659m48h', 1115668, '2024-07-03 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0xs01d52z10wu0p3c0u', 1115668, '2024-07-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0xu01d72z10lbmzy98r', 1115668, '2024-06-27 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0xz01d92z10trzjlkq2', 1115668, '2024-07-07 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0z201db2z10k09a6as2', 1115668, '2024-07-05 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0z401dd2z109z3v5ejn', 1115668, '2024-07-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0zj01df2z10mg338ahr', 1115668, '2024-07-06 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0zj01dh2z1040hz0x6g', 1115668, '2024-07-04 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c0zo01dj2z10ldewbu0z', 1115668, '2024-06-26 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c0zq01dl2z105ye43vk6', 1115668, '2024-07-08 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c10h01dn2z10nxl9qj2h', 1115668, '2024-07-09 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c10i01dp2z10iq5xf9wz', 1115668, '2024-07-10 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c10i01dr2z102l3e2y51', 1115668, '2024-07-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c11i01dt2z10qik3ddug', 1115668, '2024-07-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c11s01dv2z10rv7h9cfw', 1115668, '2024-07-15 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c12301dx2z10n5skk4sx', 1115668, '2024-07-14 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c12401dz2z10eh854h57', 1115668, '2024-07-16 00:00:00.000', 2574148, 'IDR', 1
    ),
    (
        'cls16c12a01e22z10agtuwlcy', 1115668, '2024-07-18 00:00:00.000', 2595612, 'IDR', 1
    ),
    (
        'cls16c12a01e32z10pcxl22l1', 1115668, '2024-07-17 00:00:00.000', 2535323, 'IDR', 1
    ),
    (
        'cls16c12w01e62z10t3py7lic', 1115668, '2024-07-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c12w01e72z101yn2rfgs', 1115668, '2024-07-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c13601e92z10m3v9kukp', 1115668, '2024-07-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c14101eb2z10lfkfpzfq', 1115668, '2024-07-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c14k01ed2z10e8zo15sv', 1115668, '2024-07-20 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c14w01ef2z10lyr1c1m5', 1115668, '2024-07-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c14y01eh2z10i8c5gtw8', 1115668, '2024-07-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c14y01ek2z102sxx0tjl', 1115668, '2024-07-27 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c14y01el2z10t96159q4', 1115668, '2024-07-28 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c15g01en2z10kjblodgs', 1115668, '2024-07-31 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c15m01ep2z10hlb3fo4x', 1115668, '2024-07-26 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c15w01er2z102mc7g51w', 1115668, '2024-07-30 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c16e01et2z10twd9mnl7', 1115668, '2024-08-02 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c17c01ev2z10dyvugtcr', 1115668, '2024-08-03 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c17g01ex2z109rpwwunx', 1115668, '2024-08-06 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c17h01f02z10vnu2k5gi', 1115668, '2024-08-05 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c17h01f12z10rf2theh1', 1115668, '2024-08-04 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c17l01f32z10ehul5qwy', 1115668, '2024-08-09 00:00:00.000', 2802948, 'IDR', 0
    ),
    (
        'cls16c17w01f52z1045xukies', 1115668, '2024-08-08 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c18c01f72z10bxup98rj', 1115668, '2024-08-07 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c18g01f92z107zq32ct5', 1115668, '2024-08-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c19601fb2z105ir6pe02', 1115668, '2024-08-10 00:00:00.000', 2829036, 'IDR', 0
    ),
    (
        'cls16c1a201fd2z10ezobe4is', 1115668, '2024-08-11 00:00:00.000', 2858459, 'IDR', 0
    ),
    (
        'cls16c1a501fg2z10gdtapzfq', 1115668, '2024-08-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1a501fh2z101ghztylc', 1115668, '2024-08-14 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1a501fj2z10sq0fp3fh', 1115668, '2024-08-16 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1a601fl2z10ao1o3xwz', 1115668, '2024-08-17 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1aj01fn2z10xh03fhef', 1115668, '2024-08-12 00:00:00.000', 2621675, 'IDR', 1
    ),
    (
        'cls16c1b401fp2z10u3mm5m5a', 1115668, '2024-08-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1b401fr2z10wxqu2rsw', 1115668, '2024-08-15 00:00:00.000', 2630226, 'IDR', 1
    ),
    (
        'cls16c1bt01ft2z10qsyo9ksr', 1115668, '2024-08-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1cl01fv2z10ztgh9sqq', 1115668, '2024-08-20 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1cp01fx2z10ukoy5k2x', 1115668, '2024-08-21 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1cp01fz2z10c5h4drco', 1115668, '2024-08-22 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1cq01g12z10kf5y1ljp', 1115668, '2024-08-23 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1cw01g32z10j78gkjdk', 1115668, '2024-08-24 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1cy01g52z10ikg7mbw1', 1115668, '2024-08-25 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1e301g72z104n07csjc', 1115668, '2024-08-27 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1e501g92z10y9dhkwq5', 1115668, '2024-08-28 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1el01gb2z103ov0q4qb', 1115668, '2024-08-26 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1fi01gd2z10supurvlu', 1115668, '2024-08-29 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1fl01gf2z10x2jenghw', 1115668, '2024-08-30 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1fm01gj2z109npbqae4', 1115668, '2024-09-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1fm01gk2z105s5rg6x9', 1115668, '2024-09-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1fm01gl2z10ecc167s1', 1115668, '2024-08-31 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1fo01gn2z102uecup21', 1115668, '2024-09-03 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1gu01gp2z10rhfstdr9', 1115668, '2024-09-05 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1gz01gr2z10ez26u45f', 1115668, '2024-09-04 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1h601gt2z10v916olxq', 1115668, '2024-09-06 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1i301gv2z10qb7e92hm', 1115668, '2024-07-29 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1i501h02z104vc61azh', 1115668, '2024-09-10 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1i501h12z1030d5vaci', 1115668, '2024-09-09 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1i501h22z10620i22tj', 1115668, '2024-09-08 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1i501h42z10pbcbsm6q', 1115668, '2024-09-07 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1i501h52z1032hmga8m', 1115668, '2024-09-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1jn01h72z10xc1xln2l', 1115668, '2024-09-12 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1jn01h92z103awmo9ax', 1115668, '2024-09-14 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1jn01hb2z10iz7bpsrs', 1115668, '2024-09-13 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1kf01hd2z10291m7kst', 1115668, '2024-09-15 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1kt01hf2z10bq1aw583', 1115668, '2024-09-17 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1kt01hh2z10jbex24rk', 1115668, '2024-09-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1kx01hk2z10kcc413hp', 1115668, '2024-09-16 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1kx01hl2z10tiu4cbw3', 1115668, '2024-09-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1kz01hn2z10f8znpx59', 1115668, '2024-09-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1md01hp2z105d1z0e4d', 1115668, '2024-09-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1mg01hs2z10ws03ba0w', 1115668, '2024-09-20 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1mg01ht2z10vt07eoed', 1115668, '2024-09-25 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1nb01hv2z10n4qbwcky', 1115668, '2024-09-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1nv01hx2z10hfv7t6n3', 1115668, '2024-09-26 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1nx01i02z10eaa870ji', 1115668, '2024-09-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1nx01i12z10udfk940h', 1115668, '2024-09-27 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1o101i42z10m70svxqv', 1115668, '2024-09-29 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1o101i52z1032b98odo', 1115668, '2024-09-30 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1ov01i72z10pahh8kdq', 1115668, '2024-09-28 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1oz01ia2z10our0w8pl', 1115668, '2024-07-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1oz01ib2z10s2qyg00r', 1115668, '2024-06-14 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1pr01id2z10szlnznuu', 1115668, '2024-10-01 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1qe01ij2z10skbknau9', 1115668, '2024-10-03 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1qe01ik2z10p6oy4h38', 1115668, '2024-10-05 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1qe01il2z10rtk6qqnl', 1115668, '2024-10-04 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1qe01im2z10vh076gfd', 1115668, '2024-10-07 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1qe01in2z10e7ego7r3', 1115668, '2024-10-02 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c1rg01iq2z10z0dcbd7c', 1115668, '2024-10-10 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1rg01ir2z109tect2jq', 1115668, '2024-10-08 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1rn01it2z10x3w3gi26', 1115668, '2024-10-06 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1s701iv2z10icf2g9gz', 1115668, '2024-10-09 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1t501ix2z10r3y4w6vj', 1115668, '2024-10-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1td01j12z10porauvmh', 1115668, '2024-10-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1td01j22z10qky5ksnf', 1115668, '2024-10-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1td01j32z10zg9h8lvs', 1115668, '2024-10-15 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1td01j52z10ya1tb07c', 1115668, '2024-10-17 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1u201j72z10mzubwbpe', 1115668, '2024-10-14 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1ua01j92z10f5pf4yaq', 1115668, '2024-10-16 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1uf01jb2z107ij5t9kc', 1115668, '2024-10-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1ul01jd2z1053bfvyc1', 1115668, '2024-10-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1vq01jf2z10l6ivz5su', 1115668, '2024-10-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1wb01jh2z10q66651nt', 1115668, '2024-10-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1wg01jj2z10bv551x9a', 1115668, '2024-10-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1wh01jl2z10b0kfsuco', 1115668, '2024-10-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1wh01jn2z10yj1u171d', 1115668, '2024-10-26 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1wp01jp2z10dmtbkm29', 1115668, '2024-10-27 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1xb01jr2z107od8qeng', 1115668, '2024-10-28 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1xe01jt2z1010qa3jmu', 1115668, '2024-10-29 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1xh01jv2z1090rhk0qx', 1115668, '2024-11-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1y501jx2z10rl9dkznn', 1115668, '2024-10-31 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1yx01jz2z10v6eavsvz', 1115668, '2024-11-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1z201k22z10hlvxu0gu', 1115668, '2024-10-30 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1z201k32z10xvnrcvwu', 1115668, '2024-11-03 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1zl01k52z1071uc89xp', 1115668, '2024-11-04 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1zo01k72z10y8l4plgg', 1115668, '2024-11-05 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c1zr01k92z10ydx8ip8s', 1115668, '2024-11-06 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c20901kb2z10172v4kmz', 1115668, '2024-11-08 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c20c01kd2z1019gxdsn2', 1115668, '2024-11-09 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c20p01kf2z10w048lmlc', 1115668, '2024-11-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c21v01kh2z103auziqii', 1115668, '2024-11-10 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c21v01kj2z10v2m72eyx', 1115668, '2024-11-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c21x01kl2z10a7etpht9', 1115668, '2024-11-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c22901kn2z10w6l0trg8', 1115668, '2024-10-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c22d01kp2z10vg6f3st8', 1115668, '2024-11-14 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c22h01kr2z10uy6ll81o', 1115668, '2024-11-15 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c22v01kt2z10tw4dhpjw', 1115668, '2024-11-16 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c22x01kv2z1066o7hf79', 1115668, '2024-11-19 00:00:00.000', 2868314, 'IDR', 1
    ),
    (
        'cls16c23701kx2z10rqge1dyk', 1115668, '2024-11-17 00:00:00.000', 2563920, 'IDR', 1
    ),
    (
        'cls16c24g01kz2z101wbtxyho', 1115668, '2024-11-18 00:00:00.000', 2580308, 'IDR', 1
    ),
    (
        'cls16c24j01l12z10f4b9bge1', 1115668, '2024-11-20 00:00:00.000', 2898294, 'IDR', 1
    ),
    (
        'cls16c24k01l32z10mybdwvje', 1115668, '2024-11-21 00:00:00.000', 2922425, 'IDR', 1
    ),
    (
        'cls16c24k01l52z10v3c2bee4', 1115668, '2024-11-22 00:00:00.000', 2599402, 'IDR', 1
    ),
    (
        'cls16c24w01l72z100bkf42oq', 1115668, '2024-11-23 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c25401l92z10aqee743j', 1115668, '2024-11-25 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c25o01lb2z1058gx8c70', 1115668, '2024-11-24 00:00:00.000', 2500000, 'IDR', 0
    ),
    (
        'cls16c25p01ld2z1095lxd1av', 1115668, '2024-11-27 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c25s01lf2z10hcp7ep2a', 1115668, '2024-11-26 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c27h01lh2z10tthn42m2', 1115668, '2024-11-28 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c27l01lj2z10jkazafba', 1115668, '2024-11-29 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c27l01lm2z10ntzxdlsw', 1115668, '2024-11-30 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c27l01ln2z109vama8nz', 1115668, '2024-12-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c27l01lp2z103pzw6ezz', 1115668, '2024-12-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c28901lr2z1043ndjmyq', 1115668, '2024-12-03 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c28t01lt2z10vsemje1d', 1115668, '2024-12-05 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c28t01lw2z10cu09eosy', 1115668, '2024-12-06 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c28t01lx2z10yzuc7p8q', 1115668, '2024-12-04 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2a201lz2z10y00dnvhp', 1115668, '2024-12-07 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2a401m12z10r7lnon9w', 1115668, '2024-12-08 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2a701m32z102nekzlg2', 1115668, '2024-12-10 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2aa01m52z10uq7v8d9h', 1115668, '2024-12-09 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2ad01m72z1060n5l4ws', 1115668, '2024-12-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2b101m92z10tk38ata1', 1115668, '2024-12-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2b801mb2z10i3r0raee', 1115668, '2024-12-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2bc01md2z104thzk9sj', 1115668, '2024-12-15 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2bk01mf2z10t6e22qbt', 1115668, '2024-12-16 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2cq01mi2z10nj2sdtda', 1115668, '2024-12-17 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2cq01mj2z10cp6gu9ss', 1115668, '2024-12-14 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2cw01ml2z10bpccrrm2', 1115668, '2024-12-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2d201mo2z10mjjzeai5', 1115668, '2024-12-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2d201mp2z10kerw471z', 1115668, '2024-11-07 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2dy01mr2z10dk3uqugj', 1115668, '2024-12-20 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2dy01mu2z10xev108f3', 1115668, '2024-12-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2dz01mv2z105evb6ly7', 1115668, '2024-12-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2ee01mx2z10uicn63ee', 1115668, '2024-12-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2fe01mz2z109s1yl6ey', 1115668, '2024-12-26 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2ff01n12z10lwz9k3gd', 1115668, '2024-12-27 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2fg01n32z10yej0lyu3', 1115668, '2024-12-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2g301n52z10uaemav4n', 1115668, '2024-12-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2g301n72z10anxye1uv', 1115668, '2024-12-28 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2gk01n92z10wr4fhgl6', 1115668, '2024-12-30 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2gt01nb2z108y8462va', 1115668, '2024-12-29 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2gu01nd2z10l3vutikh', 1115668, '2025-01-03 00:00:00.000', 1839765, 'IDR', 1
    ),
    (
        'cls16c2h401nf2z10wmdfrzl7', 1115668, '2025-01-04 00:00:00.000', 1844722, 'IDR', 1
    ),
    (
        'cls16c2hq01nh2z10ts9hukpy', 1115668, '2024-12-31 00:00:00.000', 3313776, 'IDR', 1
    ),
    (
        'cls16c2hu01nj2z10q5sekdvq', 1115668, '2025-01-05 00:00:00.000', 1841239, 'IDR', 1
    ),
    (
        'cls16c2i401nl2z1066ofayuh', 1115668, '2025-01-02 00:00:00.000', 1845135, 'IDR', 1
    ),
    (
        'cls16c2in01nn2z10czlid3b2', 1115668, '2025-01-01 00:00:00.000', 3311393, 'IDR', 1
    ),
    (
        'cls16c2io01np2z10h9vauqpj', 1115668, '2025-01-07 00:00:00.000', 1846347, 'IDR', 1
    ),
    (
        'cls16c2j201nr2z105l8mktu3', 1115668, '2025-01-06 00:00:00.000', 1843310, 'IDR', 1
    ),
    (
        'cls16c2j801nt2z108ku6sr4l', 1115668, '2025-01-08 00:00:00.000', 1847004, 'IDR', 1
    ),
    (
        'cls16c2jc01nv2z10cduo4kmn', 1115668, '2025-01-09 00:00:00.000', 1845288, 'IDR', 1
    ),
    (
        'cls16c2jm01nx2z10zaewr721', 1115668, '2025-01-13 00:00:00.000', 1841823, 'IDR', 1
    ),
    (
        'cls16c2k401nz2z10ds0x1wmu', 1115668, '2025-01-15 00:00:00.000', 1842449, 'IDR', 1
    ),
    (
        'cls16c2k601o12z10lvu8el34', 1115668, '2025-01-12 00:00:00.000', 1841508, 'IDR', 1
    ),
    (
        'cls16c2ko01o32z10p98xfl1i', 1115668, '2025-01-10 00:00:00.000', 1841446, 'IDR', 1
    ),
    (
        'cls16c2l801o62z1086kvnvyj', 1115668, '2025-01-14 00:00:00.000', 1843018, 'IDR', 1
    ),
    (
        'cls16c2l801o72z10ay8z8y0y', 1115668, '2025-01-11 00:00:00.000', 1846082, 'IDR', 1
    ),
    (
        'cls16c2lo01o92z100sd15mqr', 1115668, '2025-01-17 00:00:00.000', 1842662, 'IDR', 1
    ),
    (
        'cls16c2ls01ob2z10l7hcmw3u', 1115668, '2025-01-16 00:00:00.000', 1843107, 'IDR', 1
    ),
    (
        'cls16c2m401od2z10hxubryja', 1115668, '2025-01-18 00:00:00.000', 1846228, 'IDR', 1
    ),
    (
        'cls16c2m601of2z101abi9xz6', 1115668, '2025-01-21 00:00:00.000', 1842636, 'IDR', 1
    ),
    (
        'cls16c2mu01oi2z10o71zvjpe', 1115668, '2025-01-22 00:00:00.000', 1848170, 'IDR', 1
    ),
    (
        'cls16c2mu01oj2z10lqnrkhcj', 1115668, '2025-01-19 00:00:00.000', 1840804, 'IDR', 1
    ),
    (
        'cls16c2n601ol2z10emip7wjm', 1115668, '2025-01-24 00:00:00.000', 1860961, 'IDR', 1
    ),
    (
        'cls16c2ny01oo2z10jazqb6om', 1115668, '2025-01-20 00:00:00.000', 1841752, 'IDR', 1
    ),
    (
        'cls16c2nz01op2z103s5sfzzp', 1115668, '2025-01-23 00:00:00.000', 1854485, 'IDR', 1
    ),
    (
        'cls16c2oc01or2z101cj4oroh', 1115668, '2025-01-25 00:00:00.000', 1865518, 'IDR', 1
    ),
    (
        'cls16c2oe01ot2z1081oy6wli', 1115668, '2024-10-20 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2ou01ow2z10ebepy4o8', 1115668, '2025-01-26 00:00:00.000', 1864067, 'IDR', 1
    ),
    (
        'cls16c2ou01ox2z10bd2zp01f', 1115668, '2025-01-27 00:00:00.000', 1866777, 'IDR', 1
    ),
    (
        'cls16c2p601oz2z10bqv74fgm', 1115668, '2025-01-28 00:00:00.000', 1870573, 'IDR', 1
    ),
    (
        'cls16c2pc01p12z10lc8wig43', 1115668, '2025-01-30 00:00:00.000', 1875153, 'IDR', 1
    ),
    (
        'cls16c2pq01p32z107y5wfb3f', 1115668, '2025-01-29 00:00:00.000', 1872608, 'IDR', 1
    ),
    (
        'cls16c2qe01p52z10819uf6rp', 1115668, '2025-01-31 00:00:00.000', 1876924, 'IDR', 1
    ),
    (
        'cls16c2qg01p72z10flhxrbht', 1115668, '2025-02-01 00:00:00.000', 1881550, 'IDR', 1
    ),
    (
        'cls16c2qm01p92z10k9ljgmec', 1115668, '2025-02-02 00:00:00.000', 1883488, 'IDR', 1
    ),
    (
        'cls16c2r001pb2z10qjqcjri6', 1115668, '2025-02-06 00:00:00.000', 1892324, 'IDR', 1
    ),
    (
        'cls16c2re01pd2z10siyydjly', 1115668, '2025-02-05 00:00:00.000', 1890403, 'IDR', 1
    ),
    (
        'cls16c2rl01pf2z10sg8ff32m', 1115668, '2025-02-04 00:00:00.000', 1888620, 'IDR', 1
    ),
    (
        'cls16c2rm01ph2z10fcfpkmq7', 1115668, '2025-02-03 00:00:00.000', 1886009, 'IDR', 1
    ),
    (
        'cls16c2rn01pj2z109z62xg4t', 1115668, '2025-02-07 00:00:00.000', 1896232, 'IDR', 1
    ),
    (
        'cls16c2s201pl2z101gr6b9mz', 1115668, '2025-02-08 00:00:00.000', 1898845, 'IDR', 1
    ),
    (
        'cls16c2sq01pn2z109d0pkgpq', 1115668, '2025-02-09 00:00:00.000', 1898857, 'IDR', 1
    ),
    (
        'cls16c2t501pp2z10z0is4snd', 1115668, '2025-02-11 00:00:00.000', 1903057, 'IDR', 1
    ),
    (
        'cls16c2t701pr2z10ii0l6hqt', 1115668, '2025-02-10 00:00:00.000', 1900721, 'IDR', 1
    ),
    (
        'cls16c2to01pt2z10tfpodn7x', 1115668, '2025-02-12 00:00:00.000', 1904077, 'IDR', 1
    ),
    (
        'cls16c2ua01py2z10nwqpiqi1', 1115668, '2025-02-13 00:00:00.000', 1904453, 'IDR', 1
    ),
    (
        'cls16c2ua01pz2z10jygyh976', 1115668, '2025-02-17 00:00:00.000', 1905671, 'IDR', 1
    ),
    (
        'cls16c2ua01q02z10s3hap4i4', 1115668, '2025-02-14 00:00:00.000', 1904835, 'IDR', 1
    ),
    (
        'cls16c2ua01q12z10l13vf5fy', 1115668, '2025-02-16 00:00:00.000', 1905118, 'IDR', 1
    ),
    (
        'cls16c2uo01q32z10w5diwyl6', 1115668, '2025-02-15 00:00:00.000', 1905767, 'IDR', 1
    ),
    (
        'cls16c2v801q52z10t2cdxhzb', 1115668, '2025-02-18 00:00:00.000', 1906414, 'IDR', 1
    ),
    (
        'cls16c2vr01q72z105juv80vl', 1115668, '2025-02-19 00:00:00.000', 1906816, 'IDR', 1
    ),
    (
        'cls16c2vt01q92z10b3tddfxt', 1115668, '2025-02-20 00:00:00.000', 1907218, 'IDR', 1
    ),
    (
        'cls16c2wa01qb2z10f3g06xc3', 1115668, '2025-02-23 00:00:00.000', 1824574, 'IDR', 1
    ),
    (
        'cls16c2wr01qe2z104awrt5uw', 1115668, '2025-02-22 00:00:00.000', 1854235, 'IDR', 1
    ),
    (
        'cls16c2wr01qf2z105qwf5m5p', 1115668, '2025-02-24 00:00:00.000', 1795477, 'IDR', 1
    ),
    (
        'cls16c2wv01qi2z102lfqe33b', 1115668, '2025-02-26 00:00:00.000', 1736884, 'IDR', 1
    ),
    (
        'cls16c2wv01qj2z103yxv7t1p', 1115668, '2025-02-25 00:00:00.000', 1766371, 'IDR', 1
    ),
    (
        'cls16c2xf01ql2z10mev73q6g', 1115668, '2025-02-21 00:00:00.000', 1882331, 'IDR', 1
    ),
    (
        'cls16c2y201qn2z10tc6qnjff', 1115668, '2025-02-27 00:00:00.000', 1707495, 'IDR', 1
    ),
    (
        'cls16c2yk01qq2z10dhsyeeaq', 1115668, '2025-03-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2yk01qr2z108421l2uc', 1115668, '2025-02-28 00:00:00.000', 1700000, 'IDR', 1
    ),
    (
        'cls16c2z801qt2z10b1nlyk7g', 1115668, '2025-03-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2zf01qv2z10fke085ia', 1115668, '2025-03-04 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2zg01qy2z1054adlqo0', 1115668, '2025-03-03 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2zg01qz2z107l50p11u', 1115668, '2025-03-05 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2zl01r12z10sc7jztr6', 1115668, '2025-03-07 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c2zt01r32z10umrhaqf5', 1115668, '2025-03-08 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c30u01r52z10o6ifve69', 1115668, '2025-03-09 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c30x01r72z10jrf2jzm8', 1115668, '2025-03-10 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c31h01r92z10ym3bkd20', 1115668, '2025-03-06 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c31o01rb2z10epbl4tos', 1115668, '2025-03-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c32501rf2z103ygyges7', 1115668, '2025-03-15 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c32501rg2z10bh7rwtzb', 1115668, '2025-03-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c32501rh2z10uc1nwf6m', 1115668, '2025-03-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c32901rj2z10ytoxtp7c', 1115668, '2025-03-14 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c32j01rl2z10k42vm62w', 1115668, '2025-03-16 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c33501rn2z10vd8bf3ch', 1115668, '2025-03-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c33h01rp2z10c683w0qd', 1115668, '2025-03-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c33x01rr2z10c8dhf0xp', 1115668, '2025-03-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c34101rt2z10se4es6bq', 1115668, '2025-03-17 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c34b01rv2z1016c62fnz', 1115668, '2025-03-26 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c34n01ry2z1045b5716s', 1115668, '2025-03-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c34n01rz2z10mamta7he', 1115668, '2025-03-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c34z01s22z10lqlurexq', 1115668, '2025-03-28 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c34z01s32z10stxjxmt1', 1115668, '2025-03-29 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c35n01s52z107xr1ikl7', 1115668, '2025-03-31 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c36301s72z10q0r9ebwa', 1115668, '2025-04-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c36n01sa2z10nwclk4jf', 1115668, '2025-03-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c36n01sb2z10gp15woh6', 1115668, '2025-04-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c37101sd2z10aqqvg3ft', 1115668, '2025-03-30 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c37h01sf2z10qyy4eps2', 1115668, '2025-03-27 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c37l01sh2z10fw9hx8zu', 1115668, '2025-03-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c37l01sj2z10z4tdd0jf', 1115668, '2025-04-03 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c37l01sl2z105xi3iy45', 1115668, '2025-04-04 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c37z01sn2z100k2i20e4', 1115668, '2025-04-05 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c38j01sp2z10214mvqzc', 1115668, '2025-04-07 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c38x01sr2z102u32asez', 1115668, '2025-04-06 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c39201st2z107bqodhfp', 1115668, '2025-04-08 00:00:00.000', 2654771, 'IDR', 1
    ),
    (
        'cls16c39f01sv2z1055ixj8b2', 1115668, '2025-04-10 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c39z01sx2z10yksyvtdt', 1115668, '2025-04-09 00:00:00.000', 2574162, 'IDR', 1
    ),
    (
        'cls16c3a901sz2z10xsntnvwv', 1115668, '2025-04-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3ad01t22z10g9yxz8c6', 1115668, '2025-04-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3ad01t32z10w7fkxqry', 1115668, '2025-04-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3ar01t52z10pfnau1ri', 1115668, '2025-04-15 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3b701t72z10p9rf8vhs', 1115668, '2025-04-14 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3bc01t92z10zs9x409d', 1115668, '2025-04-16 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3bj01tb2z10r40lrt5a', 1115668, '2025-04-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3bp01td2z10y6laqzop', 1115668, '2025-04-17 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3cd01tf2z106d46twxp', 1115668, '2025-04-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3cv01th2z104q43mvqz', 1115668, '2025-04-20 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3cx01tj2z10qyb1obzf', 1115668, '2025-04-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3d101tl2z108t7zxqlj', 1115668, '2025-04-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3db01tn2z10g5cq59wt', 1115668, '2025-04-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3do01tp2z108xkyqo69', 1115668, '2025-04-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3dp01tr2z10wcjziaca', 1115668, '2025-04-26 00:00:00.000', 2525692, 'IDR', 1
    ),
    (
        'cls16c3dz01tt2z10keceorsq', 1115668, '2025-04-27 00:00:00.000', 2542783, 'IDR', 1
    ),
    (
        'cls16c3e901tv2z10bpy9pw4n', 1115668, '2025-04-28 00:00:00.000', 3335712, 'IDR', 1
    ),
    (
        'cls16c3ev01tx2z10i7myh4gp', 1115668, '2025-04-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3fe01tz2z10tpyo97a9', 1115668, '2025-04-30 00:00:00.000', 3317406, 'IDR', 1
    ),
    (
        'cls16c3fg01u12z10nc60lbua', 1115668, '2025-04-29 00:00:00.000', 2866006, 'IDR', 1
    ),
    (
        'cls16c3fh01u32z10g31p52u5', 1115668, '2025-05-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3fs01u52z10zfy9ivzc', 1115668, '2025-05-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3fz01u72z10h9hh241j', 1115668, '2025-05-03 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3gd01u92z10zc5wa82o', 1115668, '2025-05-05 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3gi01ub2z10dopfspqv', 1115668, '2025-05-06 00:00:00.000', 2881516, 'IDR', 1
    ),
    (
        'cls16c3gm01ud2z108xufbvyl', 1115668, '2025-05-04 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3hh01uf2z10xwu66358', 1115668, '2025-05-08 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3hz01uh2z10h6hnsij1', 1115668, '2025-05-07 00:00:00.000', 2523872, 'IDR', 1
    ),
    (
        'cls16c3i301uj2z10wq2zkgm0', 1115668, '2025-05-09 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3i501ul2z10csdfz54t', 1115668, '2025-05-10 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3i601un2z1050ba1bn9', 1115668, '2025-05-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3id01up2z101puqny8q', 1115668, '2025-05-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3it01ur2z10f8mqnuq1', 1115668, '2025-05-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3j101ut2z10a1ani4fh', 1115668, '2025-05-15 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3j201uv2z107rp575vf', 1115668, '2025-05-14 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3jy01ux2z10xccbmcpn', 1115668, '2025-05-16 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3kr01uz2z10ea3o7s2y', 1115668, '2025-05-17 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3ks01v12z10c66s4z6r', 1115668, '2025-03-20 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3l501v32z108x75hgcm', 1115668, '2025-05-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3lg01v62z1018nhlzz8', 1115668, '2025-05-20 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3lg01v72z10v9op3xj4', 1115668, '2025-05-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3ll01v92z10mfgnjhuv', 1115668, '2025-05-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3m301vb2z10yghc2a2z', 1115668, '2025-05-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3ma01vd2z10w9u7gfwk', 1115668, '2025-05-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3n401vf2z108h6r2cev', 1115668, '2025-05-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3o501vh2z10k64ljxi4', 1115668, '2025-05-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cls16c3o701vj2z10b2zxr4zz', 1115671, '2024-01-30 00:00:00.000', 1900000, 'IDR', 0
    ),
    (
        'cls16c3oj01vl2z101juli98r', 1115671, '2024-01-31 00:00:00.000', 1900000, 'IDR', 0
    ),
    (
        'cls16c3os01vn2z10dlndzckf', 1115671, '2024-02-01 00:00:00.000', 1900000, 'IDR', 0
    ),
    (
        'cls16c3oy01vq2z10jma3dqd2', 1115671, '2024-02-05 00:00:00.000', 1300000, 'IDR', 0
    ),
    (
        'cls16c3oy01vr2z10fv0bvl5c', 1115671, '2024-02-02 00:00:00.000', 1300000, 'IDR', 0
    ),
    (
        'cls16c3pb01vt2z10jf7reor7', 1115671, '2024-02-04 00:00:00.000', 1300000, 'IDR', 0
    ),
    (
        'cls16c3pb01vv2z109e7xk4t3', 1115671, '2024-02-03 00:00:00.000', 1300000, 'IDR', 0
    ),
    (
        'cls16c3q001vx2z10soxb95kc', 1115671, '2024-02-06 00:00:00.000', 1300000, 'IDR', 0
    ),
    (
        'cls16c3r001vz2z10ue9cr1m4', 1115671, '2024-02-07 00:00:00.000', 1300000, 'IDR', 1
    ),
    (
        'cls16c3r301w12z107p3126bq', 1115671, '2024-02-08 00:00:00.000', 1300000, 'IDR', 0
    ),
    (
        'cls16c3r401w32z10zel42nhb', 1115671, '2024-02-09 00:00:00.000', 1300000, 'IDR', 0
    ),
    (
        'cls16c3r401w52z1051u6afl2', 1115671, '2024-02-11 00:00:00.000', 1300000, 'IDR', 0
    ),
    (
        'cls16c3re01w72z10r6ga0uoj', 1115671, '2024-02-12 00:00:00.000', 1300000, 'IDR', 0
    ),
    (
        'cls16c3rk01w92z10xsllbqxd', 1115671, '2024-02-10 00:00:00.000', 1300000, 'IDR', 0
    ),
    (
        'cls16c3rq01wc2z10419l24w1', 1115671, '2024-02-14 00:00:00.000', 1300000, 'IDR', 0
    ),
    (
        'cls16c3rq01wd2z10mrriesc4', 1115671, '2024-02-13 00:00:00.000', 1300000, 'IDR', 0
    ),
    (
        'cls16c3si01wf2z10x5erbcsj', 1115671, '2024-02-15 00:00:00.000', 1300000, 'IDR', 0
    ),
    (
        'cls16c3tc01wh2z10g5rmsihm', 1115671, '2024-02-16 00:00:00.000', 1309329, 'IDR', 0
    ),
    (
        'cls16c3te01wj2z10nxyiwmja', 1115671, '2024-02-18 00:00:00.000', 1300000, 'IDR', 0
    ),
    (
        'cls16c3te01wl2z105dzrgvvd', 1115671, '2024-02-17 00:00:00.000', 1320545, 'IDR', 0
    ),
    (
        'cls16c3ts01wn2z10ir5rznlw', 1115671, '2024-02-20 00:00:00.000', 1300000, 'IDR', 1
    ),
    (
        'cls16c3u201wp2z10tkiwmnci', 1115671, '2024-02-19 00:00:00.000', 1421511, 'IDR', 1
    ),
    (
        'cls16c3ua01wr2z107t2san57', 1115671, '2024-02-21 00:00:00.000', 1300000, 'IDR', 1
    ),
    (
        'cls16c3ua01wt2z10orlhk8f9', 1115671, '2024-02-22 00:00:00.000', 1300000, 'IDR', 1
    ),
    (
        'cls16c3ua01wv2z1009pr222t', 1115671, '2024-02-23 00:00:00.000', 1300000, 'IDR', 1
    ),
    (
        'cls16c3v201wx2z10g02mmal4', 1115671, '2024-02-24 00:00:00.000', 1300000, 'IDR', 1
    ),
    (
        'cls16c3vu01wz2z10t0f9szjk', 1115671, '2024-02-25 00:00:00.000', 1300000, 'IDR', 1
    ),
    (
        'cls16c3vv01x12z109ufyctpb', 1115671, '2024-02-26 00:00:00.000', 1300000, 'IDR', 1
    ),
    (
        'cls16c3vy01x32z10kvz9ya03', 1115671, '2024-02-27 00:00:00.000', 1300000, 'IDR', 0
    ),
    (
        'cls16c3wh01x52z103p7z1fde', 1115671, '2024-02-28 00:00:00.000', 1300000, 'IDR', 0
    ),
    (
        'cls16c3wi01x72z10pzkkz1t7', 1115671, '2024-02-29 00:00:00.000', 1300000, 'IDR', 0
    ),
    (
        'cls16c3x201x92z10g74x9dkj', 1115671, '2024-03-01 00:00:00.000', 1450000, 'IDR', 0
    ),
    (
        'cls16c3x201xc2z10x7vr1zun', 1115671, '2024-03-02 00:00:00.000', 1900000, 'IDR', 0
    ),
    (
        'cls16c3x201xd2z10gkagxxim', 1115671, '2024-03-03 00:00:00.000', 1900000, 'IDR', 0
    ),
    (
        'cls16c3xo01xf2z106b4yxxe1', 1115671, '2024-03-04 00:00:00.000', 1900000, 'IDR', 0
    ),
    (
        'cls16c3yo01xj2z1098qolq2s', 1115671, '2024-03-06 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c3yo01xk2z10erxlkbdk', 1115671, '2024-03-07 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c3yo01xl2z103uw79t6b', 1115671, '2024-03-05 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c3za01xn2z10e6vyor92', 1115671, '2024-03-10 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c3zb01xp2z103666lqe7', 1115671, '2024-03-09 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c3zm01xs2z10yyqikr6l', 1115671, '2024-03-08 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c3zm01xt2z101i9t7y7u', 1115671, '2024-03-11 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c3zs01xv2z10atfaju60', 1115671, '2024-03-14 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c40201xx2z10yk44orgy', 1115671, '2024-03-13 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c41201y02z10s9nq2mxm', 1115671, '2024-03-16 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c41201y12z10xbqqsomn', 1115671, '2024-03-12 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c41e01y32z10c3bqs0dk', 1115671, '2024-03-15 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c41s01y52z10gih99s6j', 1115671, '2024-03-17 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c42o01y72z10dlw14d68', 1115671, '2024-03-18 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c42q01y92z107lva4pi1', 1115671, '2024-03-19 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c42q01yb2z10kwyu4j0m', 1115671, '2024-03-21 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c42s01yd2z10wd9r151e', 1115671, '2024-03-20 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c42w01yf2z108b75zkkc', 1115671, '2024-03-23 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c43i01yh2z10nnzb9tv4', 1115671, '2024-03-22 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c43k01yj2z10s15sm9p6', 1115671, '2024-03-25 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c43p01yl2z101cmrb7wc', 1115671, '2024-03-24 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c44801yn2z100trhc95e', 1115671, '2024-03-26 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c45601yp2z10802bxfi5', 1115671, '2024-03-27 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c45801ys2z10f7erau4x', 1115671, '2024-03-29 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c45801yu2z10ekgnufzo', 1115671, '2024-03-28 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c45801yv2z10ucihy53m', 1115671, '2024-03-31 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c45j01yx2z10kzvk0480', 1115671, '2024-03-30 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c46401yz2z10d824k5dr', 1115671, '2024-04-02 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c46801z12z10zu96yf9n', 1115671, '2024-04-03 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c46801z32z10xp9qlyx5', 1115671, '2024-04-01 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c47401z52z10tvm9c5u5', 1115671, '2024-04-04 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c47l01z72z10i8726nc5', 1115671, '2024-04-05 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c47m01z92z10ur2kztww', 1115671, '2024-04-07 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c47u01zb2z10whq8zf7x', 1115671, '2024-04-06 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c47v01zd2z105pukctbf', 1115671, '2024-04-09 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c48301zf2z103ezvru1q', 1115671, '2024-04-10 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c48o01zh2z106sriuspf', 1115671, '2024-04-08 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c48s01zk2z10wd5dcbix', 1115671, '2024-04-11 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c48s01zl2z106yyd8i75', 1115671, '2024-04-12 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c49r01zn2z10oxruso4w', 1115671, '2024-04-13 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4a101zp2z10pdhn2kfw', 1115671, '2024-04-14 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4aa01zr2z10rq233f92', 1115671, '2024-04-16 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4ac01zu2z10n4x98gta', 1115671, '2024-04-15 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4ac01zv2z10rc923yan', 1115671, '2024-04-17 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4ap01zx2z100swvr4n5', 1115671, '2024-04-18 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4b402002z10nk2wovuf', 1115671, '2024-04-20 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4b502012z10frn80m5j', 1115671, '2024-04-19 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4b902032z10e3ikbc4h', 1115671, '2024-04-21 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4ch02052z107cvwbz1y', 1115671, '2024-04-22 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4ci02072z104hs74yik', 1115671, '2024-04-23 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4cn02092z10gx4ndozq', 1115671, '2024-04-24 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4da020d2z10u4py5265', 1115671, '2024-04-25 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4da020e2z10qoc7sd8b', 1115671, '2024-04-28 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4da020f2z10x96kx31m', 1115671, '2024-04-30 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4dq020i2z100d1j02xx', 1115671, '2024-04-29 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4dq020j2z10n8b2zj4g', 1115671, '2024-04-26 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4dq020l2z10mkpxzkxq', 1115671, '2024-04-27 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4f7020n2z10wvlb2cdn', 1115671, '2024-05-02 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4f9020p2z10lw6w7s0q', 1115671, '2024-05-01 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4f9020r2z1060tqejdh', 1115671, '2024-05-03 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4fw020v2z107ylfjxli', 1115671, '2024-05-05 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4fw020w2z105693a6zi', 1115671, '2024-05-06 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4fw020x2z106xu9tl7k', 1115671, '2024-05-04 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4g5020z2z10jwp76ocj', 1115671, '2024-05-09 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4g802122z105klfk4q9', 1115671, '2024-05-07 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4g802132z10emxuiogt', 1115671, '2024-05-08 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4hq02152z107jssgppa', 1115671, '2024-05-10 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4ht02172z10806636fr', 1115671, '2024-05-11 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4hu02192z10bhqyxssn', 1115671, '2024-05-13 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4id021b2z101f9mt21h', 1115671, '2024-05-12 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4j3021d2z10jxqrnkdi', 1115671, '2024-05-14 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4j4021f2z10abl9jaag', 1115671, '2024-05-15 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4j5021h2z10udwc97sq', 1115671, '2024-05-18 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4j5021j2z10z4c7eaq0', 1115671, '2024-05-17 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4j5021l2z10rdpnryom', 1115671, '2024-05-16 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4l5021n2z10a7aun9bg', 1115671, '2024-05-19 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4le021p2z10j600q8iv', 1115671, '2024-05-20 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4lu021r2z10qy970uzi', 1115671, '2024-05-21 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4mk021t2z10vcoa36ni', 1115671, '2024-05-22 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4mk021v2z10pvbti51n', 1115671, '2024-05-23 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4n5021y2z10435c4to8', 1115671, '2024-05-25 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4n5021z2z10weur92vl', 1115671, '2024-05-24 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4n502222z10w9cjs81m', 1115671, '2024-05-27 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4n502232z10m1sqxl79', 1115671, '2024-05-26 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4o502252z10waylri8w', 1115671, '2024-05-29 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4ob02272z106uc52rqf', 1115671, '2024-05-28 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4ot02292z10bvqkqtdj', 1115671, '2024-05-30 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4p7022c2z106123v5fc', 1115671, '2024-06-01 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4p7022d2z10svfqvg9r', 1115671, '2024-05-31 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4pv022f2z10r50ros69', 1115671, '2024-06-02 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4pz022j2z10xl32ooyy', 1115671, '2024-06-03 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4pz022k2z10smk90v1s', 1115671, '2024-06-04 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4pz022l2z10kuidm88h', 1115671, '2024-06-05 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4r3022n2z103pn03cyi', 1115671, '2024-06-06 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4r3022p2z10iuv7zzrt', 1115671, '2024-06-07 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4rm022r2z10jom1t1q8', 1115671, '2024-06-08 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4rp022t2z10g74qmojj', 1115671, '2024-06-09 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4rv022v2z10gnat3v9f', 1115671, '2024-06-10 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4s9022x2z10rasa7nh4', 1115671, '2024-06-11 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4sr022z2z1046lv0hrr', 1115671, '2024-06-12 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4st02312z10ii2syqvt', 1115671, '2024-06-13 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4st02332z101tj9et83', 1115671, '2024-06-15 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4tx02352z107j4xr6y1', 1115671, '2024-06-14 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4ty02372z1094dpujmm', 1115671, '2024-06-18 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4ui02392z10snr69z4i', 1115671, '2024-06-17 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4ul023b2z10v52gn3s6', 1115671, '2024-06-16 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4ul023d2z10w782rc8m', 1115671, '2024-06-20 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4uz023f2z10c5reemwb', 1115671, '2024-06-21 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4vf023i2z10y9j5zssn', 1115671, '2024-06-19 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4vf023j2z10vke8v3ig', 1115671, '2024-06-22 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4vr023l2z10l19jfhld', 1115671, '2024-06-23 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c4x0023n2z10jbhii3h4', 1115671, '2024-06-25 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4x1023p2z10ejc5foao', 1115671, '2024-06-24 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4xd023r2z10n9xzxrhi', 1115671, '2024-06-26 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4xg023t2z10ckt5lbmn', 1115671, '2024-06-27 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4xh023v2z10cfdedglf', 1115671, '2024-06-28 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4xr023x2z10g7ohtoqm', 1115671, '2024-06-29 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4yb023z2z10rmwyj7uv', 1115671, '2024-06-30 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4yj02422z10ws72jtlz', 1115671, '2024-07-01 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4yj02432z10uxmv9whh', 1115671, '2024-07-02 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4zn02452z10l5wykqby', 1115671, '2024-07-03 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c4zv02472z10zjhwmp9a', 1115671, '2024-07-04 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c50102492z10avhzcm8k', 1115671, '2024-07-06 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c507024b2z10ptbrcbaw', 1115671, '2024-07-08 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c508024d2z102vx9pcc7', 1115671, '2024-07-07 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c50b024f2z10wsatso0r', 1115671, '2024-07-05 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c50x024h2z10ej7l6l2c', 1115671, '2024-07-10 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c512024j2z10rg7n8kp0', 1115671, '2024-07-11 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c518024l2z10k2gdswda', 1115671, '2024-07-12 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c526024n2z10vqicm66m', 1115671, '2024-07-09 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c52j024p2z10p1ccj56y', 1115671, '2024-07-14 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c52n024r2z10a2l3b82l', 1115671, '2024-07-13 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c52p024t2z10iv4reqid', 1115671, '2024-07-15 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c52q024v2z10wqmtkvz9', 1115671, '2024-07-16 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c52t024x2z10hqcd3kfj', 1115671, '2024-07-17 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c53f024z2z101jne16mv', 1115671, '2024-07-18 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c53q02512z10g3g5lv00', 1115671, '2024-07-19 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c53x02532z108rt9l1r9', 1115671, '2024-07-20 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c54j02552z10ikbxktvy', 1115671, '2024-07-21 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c54x02572z103jiq5gg2', 1115671, '2024-07-22 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c55a025a2z100sn84x1l', 1115671, '2024-07-24 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c55a025c2z10f9678i3b', 1115671, '2024-07-23 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c55a025d2z10woq0vffn', 1115671, '2024-07-25 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c55f025f2z10pc6ox6w3', 1115671, '2024-07-26 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c55v025h2z10vutgo31t', 1115671, '2024-07-29 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c56c025j2z106ewsb6x9', 1115671, '2024-07-28 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c56l025l2z10yffzemgm', 1115671, '2024-07-27 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c578025n2z10ueui1x4n', 1115671, '2024-07-31 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c57j025p2z10teihvkmi', 1115671, '2024-07-30 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c58a025r2z10bbsfc9gh', 1115671, '2024-08-01 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c58e025u2z10gk0jjoi0', 1115671, '2024-08-02 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c58e025w2z10immzgfkm', 1115671, '2024-08-03 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c58e025x2z1034h0lnkc', 1115671, '2024-08-04 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c58h025z2z10xz1510n0', 1115671, '2024-08-05 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c59202612z10g1mha0an', 1115671, '2024-08-06 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c59302632z10paficvoo', 1115671, '2024-08-07 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c59k02652z1034aa8f2j', 1115671, '2024-08-08 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c5a102672z10hk98ii7l', 1115671, '2024-08-09 00:00:00.000', 2078512, 'IDR', 0
    ),
    (
        'cls16c5b0026c2z10lnka559j', 1115671, '2024-08-11 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5b0026d2z10ffnnw407', 1115671, '2024-08-10 00:00:00.000', 2097857, 'IDR', 0
    ),
    (
        'cls16c5b0026e2z10068pd8ca', 1115671, '2024-08-13 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c5b0026f2z10u3ww4ret', 1115671, '2024-08-12 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5b8026h2z10m6hdd1c9', 1115671, '2024-08-15 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c5bm026j2z10acxqn9ev', 1115671, '2024-08-14 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c5bu026l2z100u7kcw52', 1115671, '2024-08-16 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c5c2026n2z10w45cc6da', 1115671, '2024-08-17 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c5ci026p2z106xhy0cai', 1115671, '2024-08-18 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5dc026r2z10gcqzzw1y', 1115671, '2024-08-20 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5dg026t2z10yoyip0tp', 1115671, '2024-08-19 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5di026v2z10uginchys', 1115671, '2024-08-21 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5di026x2z10cey2hjl4', 1115671, '2024-08-22 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5ds026z2z109pcfsxnl', 1115671, '2024-08-23 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5e802722z10i2y3tewx', 1115671, '2024-08-25 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5e802732z10m1ezapnt', 1115671, '2024-08-24 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5eh02752z1080rtqmyb', 1115671, '2024-08-26 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5es02772z10s45fgu1m', 1115671, '2024-08-27 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5fw02792z108vrmvtvg', 1115671, '2024-08-28 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5g3027b2z10vhjzu14m', 1115671, '2024-08-29 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5ga027e2z10tb9p5nym', 1115671, '2024-08-30 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5ga027f2z10tvq88jfm', 1115671, '2024-09-01 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5ge027h2z105k4rrug8', 1115671, '2024-08-31 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5gu027j2z10uaxtb57m', 1115671, '2024-09-02 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5gy027l2z10g6f5kvqf', 1115671, '2024-09-03 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5h6027n2z10cba976k7', 1115671, '2024-09-04 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5hd027p2z10oaye1nsv', 1115671, '2024-09-05 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5ia027r2z10a7g3dgqr', 1115671, '2024-09-07 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c5ii027t2z10cm9k0k4y', 1115671, '2024-09-08 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c5io027v2z10fs5yv7d2', 1115671, '2024-09-06 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c5iq027x2z10rlxla23f', 1115671, '2024-09-09 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5j0027z2z10dl046lbs', 1115671, '2024-09-10 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5ja02812z100ivs4z7y', 1115671, '2024-09-11 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5jg02832z10krp01868', 1115671, '2024-09-12 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5jm02852z10hhx2s0sq', 1115671, '2024-09-13 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5jy02872z101gf2yz4e', 1115671, '2024-09-14 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5ks02892z10ku1dzlwc', 1115671, '2024-09-15 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5l2028b2z10ms303wgw', 1115671, '2024-09-16 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5lb028d2z103ywlfy9p', 1115671, '2024-09-17 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5lf028f2z10vclnb45l', 1115671, '2024-09-19 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5li028h2z100c78zlzs', 1115671, '2024-09-18 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5ls028j2z105zsae274', 1115671, '2024-09-20 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5m0028l2z10qxthw2ee', 1115671, '2024-09-22 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5mc028n2z10b8npz93m', 1115671, '2024-09-21 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5ni028p2z10pxpl9qzo', 1115671, '2024-09-23 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5ny028r2z104li6jxpk', 1115671, '2024-09-25 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5o2028w2z106x4qx4ey', 1115671, '2024-09-24 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5o2028x2z10aude74ft', 1115671, '2024-09-26 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5o2028y2z10cax95hpc', 1115671, '2024-09-29 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5o2028z2z10gnod2tjo', 1115671, '2024-09-27 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5o602912z10spf241jb', 1115671, '2024-09-28 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5og02932z108vbqwn89', 1115671, '2024-10-01 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5on02952z10o0bs66hw', 1115671, '2024-10-02 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5py02972z103kwp3s2h', 1115671, '2024-09-30 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5qc02992z10xeituv48', 1115671, '2024-10-05 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5qy029b2z107lyfkqhf', 1115671, '2024-10-06 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5r3029g2z10sta3x0cp', 1115671, '2024-10-08 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5r3029h2z109cjhpb9k', 1115671, '2024-10-09 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5r3029i2z102zx17de6', 1115671, '2024-10-07 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5r3029j2z10pzi8xdy8', 1115671, '2024-10-11 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5rk029l2z100flczndq', 1115671, '2024-10-10 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5rm029n2z10yt5sw264', 1115671, '2024-10-12 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5sz029p2z102wb6d5hn', 1115671, '2024-10-14 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5t6029r2z10je2z4l6u', 1115671, '2024-10-15 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5to029t2z10nowran2v', 1115671, '2024-10-13 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5tv029v2z107sjviimp', 1115671, '2024-10-03 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5u3029y2z10ovfomruf', 1115671, '2024-10-18 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5u3029z2z10312kmx6v', 1115671, '2024-10-16 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5ua02a12z10eee76svi', 1115671, '2024-10-19 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5ux02a32z1008d3f512', 1115671, '2024-10-17 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5v502a52z10l2443aod', 1115671, '2024-10-21 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5wm02a72z10tklj466s', 1115671, '2024-10-22 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5ws02a92z10wodw3y6z', 1115671, '2024-10-23 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5x902ab2z10ohhhzl57', 1115671, '2024-10-04 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5xs02ad2z1079srbiyf', 1115671, '2024-10-24 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5xx02af2z10awu2h1gm', 1115671, '2024-10-25 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5y302ah2z100htcv0xk', 1115671, '2024-10-27 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5y302ak2z10f0vueau9', 1115671, '2024-10-28 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5y302al2z10ahc2cuy9', 1115671, '2024-10-30 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5y402an2z109yzskohl', 1115671, '2024-10-26 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5zc02ap2z10ev57s0dc', 1115671, '2024-10-29 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5zf02ar2z10z2d5yb0h', 1115671, '2024-10-31 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c5zz02at2z10js7wf7tk', 1115671, '2024-11-02 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c60i02av2z10cl3nrn3r', 1115671, '2024-11-03 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c60j02ay2z108aalp3sg', 1115671, '2024-11-04 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c60j02az2z10mv1c75e0', 1115671, '2024-11-05 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c60k02b22z108u5xiasv', 1115671, '2024-11-01 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c60k02b32z10zd8hd9dk', 1115671, '2024-10-20 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c60s02b52z10eoplpyya', 1115671, '2024-11-06 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c61w02b72z10dfxnyjtv', 1115671, '2024-11-07 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c62102b92z10hs6cxegq', 1115671, '2024-11-09 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c62f02bb2z10y898kof9', 1115671, '2024-11-10 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c62v02bd2z10w5daqksx', 1115671, '2024-11-08 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c62z02bf2z10umret86l', 1115671, '2024-11-11 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c62z02bh2z10vt4idn3q', 1115671, '2024-11-14 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c63b02bj2z10anqopspm', 1115671, '2024-11-15 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c63d02bl2z10mr2z2wxy', 1115671, '2024-11-13 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c63g02bn2z10ogfkcup3', 1115671, '2024-11-12 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c64u02bp2z10tu1gc0b9', 1115671, '2024-11-16 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c65302br2z101x3mz9tn', 1115671, '2024-11-19 00:00:00.000', 2126983, 'IDR', 1
    ),
    (
        'cls16c65802bt2z109cznz0k1', 1115671, '2024-11-22 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c65l02bv2z103al2hdni', 1115671, '2024-11-17 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c65t02bx2z1073ibdp07', 1115671, '2024-11-21 00:00:00.000', 2167109, 'IDR', 1
    ),
    (
        'cls16c65w02bz2z10otck5si6', 1115671, '2024-11-20 00:00:00.000', 2149215, 'IDR', 1
    ),
    (
        'cls16c66502c12z1005knt7g6', 1115671, '2024-11-24 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c66b02c32z105vocinn5', 1115671, '2024-11-26 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c66b02c52z10rssygxdy', 1115671, '2024-11-18 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c67902c72z106b1o7lmq', 1115671, '2024-11-28 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c67p02c92z10vnftq0jv', 1115671, '2024-11-25 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c67r02cb2z10gmrsppya', 1115671, '2024-11-23 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c68602cd2z10p85sp4k3', 1115671, '2024-11-29 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c68902cf2z10q1h7hhg7', 1115671, '2024-11-27 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c68902ch2z10rbmqne8h', 1115671, '2024-11-30 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c68r02cj2z107pu2xupg', 1115671, '2024-12-01 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c68s02cl2z10wosd8hr1', 1115671, '2024-12-02 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c68x02cn2z107ler470d', 1115671, '2024-12-03 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c69p02cp2z10cstj3jmf', 1115671, '2024-12-05 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6a702cr2z10i17x8pfn', 1115671, '2024-12-04 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6a902ct2z10u9bwibr4', 1115671, '2024-12-06 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6al02cv2z1068gzdriv', 1115671, '2024-12-10 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6an02cy2z103ll6vu1b', 1115671, '2024-12-11 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6an02cz2z10up9w58la', 1115671, '2024-12-09 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6be02d12z10ucsk3f4q', 1115671, '2024-12-07 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6bf02d42z10lpthe1se', 1115671, '2024-12-08 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6bf02d52z10sfmgew4t', 1115671, '2024-12-12 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c6c302d72z10j8gngvn8', 1115671, '2024-12-15 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c6cq02d92z10bagpg0sy', 1115671, '2024-12-19 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6cq02db2z10npvq6vrn', 1115671, '2024-12-13 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c6d502dd2z10740zpybn', 1115671, '2024-12-18 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6d902df2z10swv7637x', 1115671, '2024-12-16 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6dd02dh2z10my4vasuq', 1115671, '2024-12-14 00:00:00.000', 2050000, 'IDR', 0
    ),
    (
        'cls16c6e702dj2z106s6uanxv', 1115671, '2024-12-20 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6e702dl2z10782ogmts', 1115671, '2024-12-17 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6ea02dn2z10p4t4ofln', 1115671, '2024-12-21 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6em02dp2z109cly186j', 1115671, '2024-12-22 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6f502dr2z101ftrprca', 1115671, '2024-12-23 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6f502dt2z10ddlaya18', 1115671, '2024-12-24 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6fh02dv2z105nkulzb1', 1115671, '2024-12-25 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6fn02dx2z105m5qkubk', 1115671, '2024-12-27 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6ft02dz2z10yrgzxpr4', 1115671, '2024-12-28 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6hb02e32z103w3ws5xx', 1115671, '2024-12-26 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6hb02e42z10w3ljkxih', 1115671, '2024-12-29 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6hb02e52z10c9qoel3x', 1115671, '2024-12-31 00:00:00.000', 2457313, 'IDR', 1
    ),
    (
        'cls16c6hp02e82z10ezsuu6r3', 1115671, '2024-12-30 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6hp02e92z105cnq7sj0', 1115671, '2025-01-01 00:00:00.000', 2455546, 'IDR', 1
    ),
    (
        'cls16c6i902eb2z10afmqer8a', 1115671, '2025-01-02 00:00:00.000', 1368250, 'IDR', 1
    ),
    (
        'cls16c6id02ed2z10bg8m9fpc', 1115671, '2025-01-04 00:00:00.000', 1367944, 'IDR', 1
    ),
    (
        'cls16c6iq02eg2z10nas4cr3y', 1115671, '2025-01-06 00:00:00.000', 1366897, 'IDR', 1
    ),
    (
        'cls16c6iq02eh2z10ba49x57b', 1115671, '2025-01-03 00:00:00.000', 1364268, 'IDR', 1
    ),
    (
        'cls16c6k202ej2z10ydibvj3t', 1115671, '2025-01-05 00:00:00.000', 1365361, 'IDR', 1
    ),
    (
        'cls16c6k302el2z104m6ydzqx', 1115671, '2025-01-07 00:00:00.000', 1369149, 'IDR', 1
    ),
    (
        'cls16c6k302en2z10hb03fmdq', 1115671, '2025-01-09 00:00:00.000', 1368364, 'IDR', 1
    ),
    (
        'cls16c6k302ep2z10gyhhe8lk', 1115671, '2025-01-10 00:00:00.000', 1365515, 'IDR', 1
    ),
    (
        'cls16c6kb02er2z10pdoelq5h', 1115671, '2025-01-08 00:00:00.000', 1369636, 'IDR', 1
    ),
    (
        'cls16c6ku02et2z10xbus8ibj', 1115671, '2025-01-11 00:00:00.000', 1368952, 'IDR', 1
    ),
    (
        'cls16c6l302ev2z10uw56cdpp', 1115671, '2025-01-13 00:00:00.000', 1365794, 'IDR', 1
    ),
    (
        'cls16c6l902ex2z10lnneiyr8', 1115671, '2025-01-12 00:00:00.000', 1365561, 'IDR', 1
    ),
    (
        'cls16c6le02ez2z10y5bmzuib', 1115671, '2025-01-15 00:00:00.000', 1366259, 'IDR', 1
    ),
    (
        'cls16c6mn02f22z104n7wy6ys', 1115671, '2025-01-14 00:00:00.000', 1366681, 'IDR', 1
    ),
    (
        'cls16c6mn02f32z1016cxiyq3', 1115671, '2025-01-17 00:00:00.000', 1366417, 'IDR', 1
    ),
    (
        'cls16c6mn02f52z10xc553zsa', 1115671, '2025-01-18 00:00:00.000', 1369061, 'IDR', 1
    ),
    (
        'cls16c6mo02f72z10vniriuzr', 1115671, '2025-01-16 00:00:00.000', 1366746, 'IDR', 1
    ),
    (
        'cls16c6mv02f92z10zfpc7k7a', 1115671, '2025-01-19 00:00:00.000', 1365039, 'IDR', 1
    ),
    (
        'cls16c6na02fb2z10g2aczao9', 1115671, '2025-01-20 00:00:00.000', 1365742, 'IDR', 1
    ),
    (
        'cls16c6nj02fd2z10yhi3u41y', 1115671, '2025-01-21 00:00:00.000', 1366397, 'IDR', 1
    ),
    (
        'cls16c6np02ff2z10zefso78c', 1115671, '2025-01-22 00:00:00.000', 1370501, 'IDR', 1
    ),
    (
        'cls16c6o202fh2z106i3ebqga', 1115671, '2025-01-23 00:00:00.000', 1375184, 'IDR', 1
    ),
    (
        'cls16c6p602fj2z10hnvovqep', 1115671, '2025-01-24 00:00:00.000', 1379986, 'IDR', 1
    ),
    (
        'cls16c6p802fl2z10ab3l26u5', 1115671, '2025-01-26 00:00:00.000', 1382290, 'IDR', 1
    ),
    (
        'cls16c6pc02fn2z10e4bqukov', 1115671, '2025-01-25 00:00:00.000', 1383365, 'IDR', 1
    ),
    (
        'cls16c6pe02fp2z10j6c57u08', 1115671, '2025-01-27 00:00:00.000', 1384299, 'IDR', 1
    ),
    (
        'cls16c6ph02fr2z10iujc1mar', 1115671, '2025-01-28 00:00:00.000', 1387114, 'IDR', 1
    ),
    (
        'cls16c6pp02ft2z10d7d6nk2a', 1115671, '2025-01-29 00:00:00.000', 1388623, 'IDR', 1
    ),
    (
        'cls16c6q202fv2z10wq0z7bvw', 1115671, '2025-01-31 00:00:00.000', 1391824, 'IDR', 1
    ),
    (
        'cls16c6q702fx2z1095va30kw', 1115671, '2025-02-01 00:00:00.000', 1395254, 'IDR', 1
    ),
    (
        'cls16c6qh02fz2z10ie8p2uta', 1115671, '2025-01-30 00:00:00.000', 1390510, 'IDR', 1
    ),
    (
        'cls16c6rp02g12z10xa243etj', 1115671, '2025-02-03 00:00:00.000', 1398560, 'IDR', 1
    ),
    (
        'cls16c6s602g32z100njavqbo', 1115671, '2025-02-02 00:00:00.000', 1396691, 'IDR', 1
    ),
    (
        'cls16c6s902g52z10a8jnuw7p', 1115671, '2025-02-04 00:00:00.000', 1400497, 'IDR', 1
    ),
    (
        'cls16c6sa02g72z10crfyj1fm', 1115671, '2025-02-05 00:00:00.000', 1401819, 'IDR', 1
    ),
    (
        'cls16c6sa02ga2z10k7ouiacn', 1115671, '2025-02-06 00:00:00.000', 1403243, 'IDR', 1
    ),
    (
        'cls16c6sa02gb2z10wh7gdist', 1115671, '2025-02-07 00:00:00.000', 1406141, 'IDR', 1
    ),
    (
        'cls16c6sk02gd2z10tq1ofc3r', 1115671, '2025-02-08 00:00:00.000', 1408079, 'IDR', 1
    ),
    (
        'cls16c6t302gf2z10wv0aj1t4', 1115671, '2025-02-09 00:00:00.000', 1408087, 'IDR', 1
    ),
    (
        'cls16c6t402gh2z1001k41tsg', 1115671, '2025-02-10 00:00:00.000', 1409470, 'IDR', 1
    ),
    (
        'cls16c6u802gj2z10drgf60yc', 1115671, '2025-02-11 00:00:00.000', 1411202, 'IDR', 1
    ),
    (
        'cls16c6um02gl2z103r91rqen', 1115671, '2025-02-13 00:00:00.000', 1412237, 'IDR', 1
    ),
    (
        'cls16c6un02gn2z1092dtjwgt', 1115671, '2025-02-12 00:00:00.000', 1411959, 'IDR', 1
    ),
    (
        'cls16c6ur02gp2z101b8tl06t', 1115671, '2025-02-14 00:00:00.000', 1412521, 'IDR', 1
    ),
    (
        'cls16c6uy02gr2z10chug4cla', 1115671, '2025-02-17 00:00:00.000', 1413140, 'IDR', 1
    ),
    (
        'cls16c6v402gu2z10qwt2vk7j', 1115671, '2025-02-15 00:00:00.000', 1413211, 'IDR', 1
    ),
    (
        'cls16c6v402gv2z10q8nyt9k9', 1115671, '2025-02-18 00:00:00.000', 1413691, 'IDR', 1
    ),
    (
        'cls16c6vn02gx2z10qp5b3oca', 1115671, '2025-02-16 00:00:00.000', 1412731, 'IDR', 1
    ),
    (
        'cls16c6vp02gz2z101rwo0k11', 1115671, '2025-02-19 00:00:00.000', 1413990, 'IDR', 1
    ),
    (
        'cls16c6wz02h22z105pu612q8', 1115671, '2025-02-20 00:00:00.000', 1414288, 'IDR', 1
    ),
    (
        'cls16c6wz02h32z10rh47034w', 1115671, '2025-02-22 00:00:00.000', 1374998, 'IDR', 1
    ),
    (
        'cls16c6xb02h52z106sqfe211', 1115671, '2025-02-21 00:00:00.000', 1395833, 'IDR', 1
    ),
    (
        'cls16c6xm02h72z10laefpu7l', 1115671, '2025-02-23 00:00:00.000', 1353003, 'IDR', 1
    ),
    (
        'cls16c6xo02h92z107ekgzh3p', 1115671, '2025-02-24 00:00:00.000', 1331427, 'IDR', 1
    ),
    (
        'cls16c6xu02hb2z103y8z7kkc', 1115671, '2025-02-26 00:00:00.000', 1300000, 'IDR', 1
    ),
    (
        'cls16c6y002hd2z10mmi47gi8', 1115671, '2025-02-25 00:00:00.000', 1309843, 'IDR', 1
    ),
    (
        'cls16c6yc02hf2z10mi2byn0j', 1115671, '2025-02-27 00:00:00.000', 1300000, 'IDR', 1
    ),
    (
        'cls16c6yk02hh2z10iaqzxjkn', 1115671, '2025-02-28 00:00:00.000', 1300000, 'IDR', 1
    ),
    (
        'cls16c6zd02hj2z10dk4ze1fz', 1115671, '2025-03-01 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6ze02hl2z1020fycr0o', 1115671, '2025-03-04 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c6zw02hn2z10ausi4yp3', 1115671, '2025-03-02 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c70d02hq2z10dtr90r2w', 1115671, '2025-03-03 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c70d02hr2z10w841er1z', 1115671, '2025-03-05 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c70u02ht2z101s7mtj25', 1115671, '2025-03-07 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c70w02hv2z10b0085jo5', 1115671, '2025-03-08 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c71402hx2z10nxfscl7x', 1115671, '2025-03-09 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c71a02hz2z10r6qf6niv', 1115671, '2025-03-06 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c71u02i12z10rpr4t7o9', 1115671, '2025-03-10 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c72602i32z10q8in32w6', 1115671, '2025-03-12 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c72e02i52z10n1uguu4z', 1115671, '2025-03-11 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c72s02i72z1079agdqb5', 1115671, '2025-03-16 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c72v02i92z10t4skbtl8', 1115671, '2025-03-13 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c73g02ib2z10rm73j374', 1115671, '2025-03-18 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c73i02id2z10ppvokm9v', 1115671, '2025-03-17 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c73t02ig2z109ybbob6i', 1115671, '2025-03-15 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c73t02ih2z104krcqmd9', 1115671, '2025-03-19 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c74602ij2z1043dja4vg', 1115671, '2025-03-23 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c74q02il2z10646l729a', 1115671, '2025-03-21 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c75402in2z10g0exikc9', 1115671, '2025-03-22 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c75e02ip2z10msdtlete', 1115671, '2025-03-24 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c75i02ir2z1042wch52l', 1115671, '2025-03-25 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c76002it2z10bn2p5i2a', 1115671, '2025-03-20 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c76a02iv2z10nv72pqrg', 1115671, '2025-03-27 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c76h02iz2z100tjs78jy', 1115671, '2025-03-26 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c76h02j02z104inc1s5u', 1115671, '2025-03-28 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c76h02j12z10tlko1ezu', 1115671, '2025-03-29 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c78a02j32z10kx9xpq2t', 1115671, '2025-03-30 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c78k02j52z1074ji59jn', 1115671, '2025-03-14 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c78r02j72z10m3jzwt9w', 1115671, '2025-04-03 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c78w02j92z10nbi2jlrg', 1115671, '2025-03-31 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c79902jb2z108104287n', 1115671, '2025-04-01 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c79m02jd2z10gb1zlxl3', 1115671, '2025-04-02 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c79s02jf2z10pj2u9g3r', 1115671, '2025-04-05 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c79w02jh2z10c28ki5sg', 1115671, '2025-04-04 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c7a202jj2z10q8eu1n0g', 1115671, '2025-04-08 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c7ax02jl2z10jqfjcy5r', 1115671, '2025-04-06 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c7b402jn2z103aew86vx', 1115671, '2025-04-07 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c7bk02jp2z105s9bykn7', 1115671, '2025-04-09 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c7bk02jr2z10p8t8yo4n', 1115671, '2025-04-10 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16c7cj02jz2z10dvmagg02', 1574678, '2025-03-21 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jpuh03z32z10rf9za5rg', 1115671, '2025-04-13 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jpuh03z52z103wxbro9a', 1115671, '2025-04-12 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jpuo03z72z10c8onagmr', 1115671, '2025-04-11 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jpux03za2z10ns9qgozj', 1115671, '2025-04-15 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jpux03zb2z10j38bcgmn', 1115671, '2025-04-14 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jpwf03ze2z10ojs7hmae', 1115671, '2025-04-17 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jpwf03zf2z10vn6268d6', 1115671, '2025-04-16 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jpx103zi2z10sxde8lj5', 1115671, '2025-04-18 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jpx103zj2z10u1ssa3y7', 1115671, '2025-04-19 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jpxb03zm2z10xy8u77bs', 1115671, '2025-04-20 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jpxb03zn2z10icegj6ip', 1115671, '2025-04-21 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jpxj03zp2z1059e3oeri', 1115671, '2025-04-23 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jpxp03zr2z10fsetljyg', 1115671, '2025-04-22 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jpxr03zt2z10dmn55c48', 1115671, '2025-04-25 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jpzh03zw2z10nkpf05tc', 1115671, '2025-04-26 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jpzh03zx2z10hw7yzq52', 1115671, '2025-04-24 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jpzr03zz2z10wl1ch2eu', 1115671, '2025-04-27 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jpzv04012z10u06lg3vw', 1115671, '2025-04-28 00:00:00.000', 2473580, 'IDR', 1
    ),
    (
        'cls16jpzy04042z107wg2q66r', 1115671, '2025-04-29 00:00:00.000', 2125272, 'IDR', 1
    ),
    (
        'cls16jpzy04052z10lakf28cz', 1115671, '2025-04-30 00:00:00.000', 2460006, 'IDR', 1
    ),
    (
        'cls16jq0704092z10l05gt9yz', 1115671, '2025-05-01 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq07040a2z10kupy8utx', 1115671, '2025-05-02 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq07040b2z10jnmhmho9', 1115671, '2025-05-03 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq23040d2z10d4t22oxz', 1115671, '2025-05-05 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq24040f2z10uarhqnp0', 1115671, '2025-05-04 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq27040h2z102j5riwma', 1115671, '2025-05-06 00:00:00.000', 2136774, 'IDR', 1
    ),
    (
        'cls16jq29040j2z103qsia5e6', 1115671, '2025-05-07 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq2d040l2z10qn89g0nw', 1115671, '2025-05-08 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq2p040n2z10dgc4nkgb', 1115671, '2025-05-09 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq2r040p2z10766krq5h', 1115671, '2025-05-11 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq2r040s2z10bldiqywz', 1115671, '2025-05-13 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq2s040t2z10p9q989lx', 1115671, '2025-05-10 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq4t040v2z108w6eko50', 1115671, '2025-05-12 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq4v040z2z10hvmfrp5n', 1115671, '2025-05-14 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq4v04112z109vs4zz33', 1115671, '2025-05-15 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq4v04122z10zp8qu2cn', 1115671, '2025-05-16 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq4v04132z10iq5q3fkn', 1115671, '2025-05-17 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq5d04152z10xls0kw9v', 1115671, '2025-05-18 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq5f04172z10dx925d83', 1115671, '2025-05-19 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq5f041a2z1024ylre5w', 1115671, '2025-05-21 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq5f041b2z10mysww94t', 1115671, '2025-05-20 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq79041d2z10avyo2wpq', 1115671, '2025-05-23 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq7d041h2z10lqpxjdaa', 1115671, '2025-05-25 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq7d041i2z101sgptg0a', 1115671, '2025-05-24 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jq7d041j2z10plu5x4oc', 1115671, '2025-05-22 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cls16jv9204sf2z10r5i1vfjj', 1574678, '2024-02-03 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jv9204sg2z106pr26skl', 1574678, '2024-01-31 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jv9204sh2z10m7ac855p', 1574678, '2024-01-30 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jv9204sl2z10scehw7hq', 1574678, '2024-02-01 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jv9204sm2z10be512vfr', 1574678, '2024-02-05 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jv9204sn2z10wk5fz6w0', 1574678, '2024-02-04 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jv9204sq2z109fzgs461', 1574678, '2024-02-07 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jv9204sr2z108uggmwov', 1574678, '2024-02-08 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jv9204st2z10g9x8crh9', 1574678, '2024-02-06 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jvbm04sx2z108gk2slbv', 1574678, '2024-02-09 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jvbm04sz2z10qc0j7jvt', 1574678, '2024-02-13 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jvbm04t02z10128g698i', 1574678, '2024-02-10 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jvbm04t12z10x3m0e31y', 1574678, '2024-02-12 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jvbo04t32z10pzaevkxa', 1574678, '2024-02-11 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jvbo04t52z10cr1yr7w0', 1574678, '2024-02-14 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jvbs04t82z10j3wuq7nn', 1574678, '2024-02-16 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jvbs04t92z10xlh0ik7o', 1574678, '2024-02-02 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jvbu04tb2z106tjadi4c', 1574678, '2024-02-17 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jve404td2z10ptcpx8nf', 1574678, '2024-02-15 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jvee04th2z10bs8aozu0', 1574678, '2024-02-18 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jvee04ti2z10rntorh5n', 1574678, '2024-02-20 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jvee04tj2z10xniw1m0n', 1574678, '2024-02-19 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jvee04tl2z10q3fhivt9', 1574678, '2024-02-22 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jveg04tn2z10nyab543s', 1574678, '2024-02-24 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jvem04tq2z10pl3ufk3x', 1574678, '2024-02-25 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jvem04tr2z10vcm7ubwq', 1574678, '2024-02-21 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jvem04tt2z10ssjjcusx', 1574678, '2024-02-23 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jvgt04tv2z106fvpcfx1', 1574678, '2024-02-26 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jvgt04tx2z10gcl8iid3', 1574678, '2024-02-28 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jvgw04tz2z10jwt5t92t', 1574678, '2024-02-27 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jvh004u22z10io9zg252', 1574678, '2024-02-29 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jvh004u32z10nddbd36q', 1574678, '2024-03-01 00:00:00.000', 5500000, 'IDR', 0
    ),
    (
        'cls16jvhc04u52z1048chx63u', 1574678, '2024-03-03 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvhg04u72z10ccgsmd9p', 1574678, '2024-03-02 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvhh04u92z100qt3b6s3', 1574678, '2024-03-04 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvhk04ub2z10aw6ecjxi', 1574678, '2024-03-05 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvjs04ud2z10v7jsoz6y', 1574678, '2024-03-06 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvjy04uf2z100hxs8jom', 1574678, '2024-03-11 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvk704uh2z107nu3n4cz', 1574678, '2024-03-09 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvkd04uj2z10z1z22iym', 1574678, '2024-03-10 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvki04ul2z10wimae6ed', 1574678, '2024-03-07 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvkm04un2z10x77p51i7', 1574678, '2024-03-08 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvkx04up2z10zy58sj90', 1574678, '2024-03-12 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvl304us2z103iqz1bmc', 1574678, '2024-03-13 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvl304ut2z1005fnh4l0', 1574678, '2024-03-14 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvmi04uv2z10lhh3vlo5', 1574678, '2024-03-16 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvnc04ux2z10uoeg6kc3', 1574678, '2024-03-15 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvo504v02z10rn8n39lz', 1574678, '2024-03-19 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvo504v12z10wnreuany', 1574678, '2024-03-18 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvo504v32z10k2jfyz5t', 1574678, '2024-03-17 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvo704v52z10cehywf8a', 1574678, '2024-03-20 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvp704v72z104mn0ye1t', 1574678, '2024-03-23 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jvp904va2z10n2c5oyb3', 1574678, '2024-03-21 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jvp904vb2z102nketezo', 1574678, '2024-03-22 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jvq704vd2z10faauz7xk', 1574678, '2024-03-25 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jvqm04vf2z10gb3ec4or', 1574678, '2024-03-26 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jvr104vh2z107yg50jhr', 1574678, '2024-03-27 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jvr404vl2z10ljap0tfo', 1574678, '2024-03-30 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jvr404vm2z10yb0c9yf6', 1574678, '2024-03-28 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jvr404vn2z10h6tgudsc', 1574678, '2024-03-24 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jvrv04vp2z10fo5e0rjz', 1574678, '2024-03-29 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jvs204vr2z100grky0cj', 1574678, '2024-03-31 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvs504vt2z10pnlvo9td', 1574678, '2024-04-03 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvsl04vv2z107y09c9ts', 1574678, '2024-04-04 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvt304vx2z10cm5dlfk7', 1574678, '2024-04-02 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jvtn04w02z1041tav43x', 1574678, '2024-04-01 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvtn04w12z10fjm06ht7', 1574678, '2024-04-06 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jvtt04w42z102jh8veqz', 1574678, '2024-04-05 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvtt04w52z10ftbs9j2y', 1574678, '2024-04-08 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvuh04w72z10ljkf7oyn', 1574678, '2024-04-07 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jvul04w92z104y43eyau', 1574678, '2024-04-09 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvum04wb2z101jhwy37k', 1574678, '2024-04-12 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvux04wd2z10t7tdomhg', 1574678, '2024-04-10 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvvp04wf2z10p1ntnxyx', 1574678, '2024-04-11 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvxh04wi2z10h2m8abb2', 1574678, '2024-04-15 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvxh04wj2z10j5x5ludk', 1574678, '2024-04-13 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jvxh04wl2z10xx9ggqax', 1574678, '2024-04-14 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvxh04wn2z10ximlpy8i', 1574678, '2024-04-17 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvyp04wp2z10g8my8q9f', 1574678, '2024-04-16 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jvyr04wr2z10gjmal0ye', 1574678, '2024-04-18 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jvyv04wu2z10zn3j2w1r', 1574678, '2024-04-19 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jvyv04wv2z10in6q0uui', 1574678, '2024-04-20 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jvzh04wx2z10dvf91ktm', 1574678, '2024-04-21 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jw0504wz2z10qp8pia5r', 1574678, '2024-04-22 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jw0704x32z10dj85lw7g', 1574678, '2024-04-24 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jw0704x42z10la46gu3d', 1574678, '2024-04-25 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jw0704x52z10fif9km0l', 1574678, '2024-04-23 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jw1704x72z10u4tr1fm0', 1574678, '2024-04-26 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jw1d04x92z10w466v8ay', 1574678, '2024-04-28 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jw1l04xc2z10vgt79mpy', 1574678, '2024-04-29 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jw1l04xd2z10gkowt0dw', 1574678, '2024-04-27 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jw2704xf2z10kml3kc1e', 1574678, '2024-04-30 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jw2p04xh2z10411jwdrd', 1574678, '2024-05-01 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jw2v04xj2z10c3b37nfi', 1574678, '2024-05-03 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jw2v04xm2z10xg5x2avb', 1574678, '2024-05-02 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jw2v04xn2z1044rze3uk', 1574678, '2024-05-04 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jw3f04xp2z1075dh680c', 1574678, '2024-05-05 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jw3z04xr2z1009qemju7', 1574678, '2024-05-07 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jw4904xt2z10u5q6icm3', 1574678, '2024-05-08 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jw4904xv2z10p5pjcs74', 1574678, '2024-05-06 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jw5g04xx2z10wz2yndua', 1574678, '2024-05-09 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jw5z04xz2z10fl7bqorx', 1574678, '2024-05-10 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jw6104y12z10eeewxc9y', 1574678, '2024-05-11 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jw6104y42z107lnxedos', 1574678, '2024-05-13 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jw6104y52z10m7emag5y', 1574678, '2024-05-12 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jw6f04y72z107iuorotu', 1574678, '2024-05-14 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jw7h04y92z10atng9llh', 1574678, '2024-05-16 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jw7j04yc2z1054buckl8', 1574678, '2024-05-15 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jw7j04yd2z10snwr4nqc', 1574678, '2024-05-17 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jw7v04yf2z10fqpqayqh', 1574678, '2024-05-18 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jw8l04yh2z10fh7agk5j', 1574678, '2024-05-19 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jw8m04yj2z10m1ct40zy', 1574678, '2024-05-20 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jw8n04yl2z10upnup2dn', 1574678, '2024-05-21 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jw8o04yn2z101jh639gr', 1574678, '2024-05-22 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jw8x04yp2z10wkavxisi', 1574678, '2024-05-24 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwa504yr2z10fz9b4i4v', 1574678, '2024-05-23 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwa904yu2z10dazv6akw', 1574678, '2024-05-27 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwa904yv2z106gk48zcs', 1574678, '2024-05-26 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwab04yx2z106ur0lb9a', 1574678, '2024-05-25 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwb104yz2z10to7v1exp', 1574678, '2024-05-28 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwb704z12z10caa6qipa', 1574678, '2024-05-29 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwb904z42z10i8qti9zq', 1574678, '2024-05-30 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwb904z52z105d9f2ex2', 1574678, '2024-06-01 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwb904z72z105d1ixexi', 1574678, '2024-06-02 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwcs04z92z10irerae00', 1574678, '2024-05-31 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwct04zd2z1071ghymyt', 1574678, '2024-06-04 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwct04ze2z107fmhcmn1', 1574678, '2024-06-03 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwct04zf2z1018kwk28f', 1574678, '2024-06-05 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwdf04zh2z105tuol040', 1574678, '2024-06-06 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwdr04zj2z10xoc495jd', 1574678, '2024-06-07 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwdt04zl2z10rm1adftl', 1574678, '2024-06-08 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwdu04zo2z109m7x5ypr', 1574678, '2024-06-11 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwdu04zp2z10f3o9bqce', 1574678, '2024-06-09 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwfj04zr2z10iquzrzpd', 1574678, '2024-06-10 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwfk04zu2z10pg3hwqaa', 1574678, '2024-06-13 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwfk04zv2z1006xj5gel', 1574678, '2024-06-12 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwg004zx2z10hsvr0g4y', 1574678, '2024-06-14 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwg204zz2z10o57bydr2', 1574678, '2024-06-15 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwgk05012z10piwp886j', 1574678, '2024-06-16 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwgm05042z10nxy90fbt', 1574678, '2024-06-18 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwgm05062z103hhphxe5', 1574678, '2024-06-17 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwgm05072z10imhva21b', 1574678, '2024-06-19 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwi405092z1097uzbb8e', 1574678, '2024-06-20 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwig050b2z10k6i6gkui', 1574678, '2024-06-21 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwii050e2z101zrmvx55', 1574678, '2024-06-22 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwii050f2z10qj0f6r83', 1574678, '2024-06-23 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwiw050h2z10p3vg860b', 1574678, '2024-06-28 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwje050j2z10w73f9dvu', 1574678, '2024-06-27 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwjf050l2z102uljwsld', 1574678, '2024-06-26 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwjf050o2z108u9wo62q', 1574678, '2024-06-29 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwjg050p2z10abva4zeh', 1574678, '2024-06-24 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwl2050s2z10ttntk89m', 1574678, '2024-06-25 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwl2050t2z10lwwewvfk', 1574678, '2024-06-30 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwl2050w2z10f73ro3oz', 1574678, '2024-07-04 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwl2050x2z10ofjmyw7r', 1574678, '2024-07-01 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwlo050z2z10agd7ukqm', 1574678, '2024-07-02 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwm805112z10g5u8ijec', 1574678, '2024-07-03 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwmc05142z10bkqokeag', 1574678, '2024-07-05 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwmc05152z10xsu8uc34', 1574678, '2024-07-10 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwmc05172z107oiviyr6', 1574678, '2024-07-07 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwo0051c2z105bup2f02', 1574678, '2024-07-06 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwo0051d2z10n0zyedtz', 1574678, '2024-07-08 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwo0051e2z10iq0qjsqt', 1574678, '2024-07-11 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwo0051f2z1085b1siba', 1574678, '2024-07-09 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwoi051h2z10rg0z9id5', 1574678, '2024-07-12 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwp1051j2z10iimahhdh', 1574678, '2024-07-13 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwp2051l2z10coc6z2qp', 1574678, '2024-07-14 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwp9051n2z10p138wis5', 1574678, '2024-07-16 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwp9051p2z108als1jlg', 1574678, '2024-07-15 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwqx051u2z10rzfm4jhv', 1574678, '2024-07-17 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwqx051v2z10sh7gbhxr', 1574678, '2024-07-19 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwqx051w2z10yn6non9y', 1574678, '2024-07-22 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwqx051x2z10x43siwr0', 1574678, '2024-07-18 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwrf051z2z10qwmoalos', 1574678, '2024-07-20 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwrz05222z101veklwax', 1574678, '2024-07-25 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwrz05232z10rcd3uhmd', 1574678, '2024-07-21 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwrz05252z10kipy9pts', 1574678, '2024-07-23 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwsa05272z10kin2e2kg', 1574678, '2024-07-27 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwtp05292z1015n198j2', 1574678, '2024-07-24 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwts052c2z10oi2w3tq5', 1574678, '2024-07-26 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwts052d2z10ixepyyf1', 1574678, '2024-07-28 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwts052f2z10chns7l6e', 1574678, '2024-07-29 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwu7052h2z10dh0vxeup', 1574678, '2024-07-30 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwum052l2z107812jinj', 1574678, '2024-08-05 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwum052m2z10rea87k17', 1574678, '2024-07-31 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwum052n2z108qntvtye', 1574678, '2024-08-03 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwus052p2z10gx2wdyg8', 1574678, '2024-08-02 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jww2052r2z1095er9l0g', 1574678, '2024-08-04 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwwk052t2z1065iw42xv', 1574678, '2024-08-01 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwwm052w2z10blbkhjqw', 1574678, '2024-08-06 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwwm052x2z10ecaoasb3', 1574678, '2024-08-07 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwx0052z2z107vwr8jiu', 1574678, '2024-08-09 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwx205312z10cnm7xfx5', 1574678, '2024-08-10 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwx805332z10msgqgtbe', 1574678, '2024-08-08 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwxe05352z100k28gnpp', 1574678, '2024-08-11 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwxm05372z108qg2hv3d', 1574678, '2024-08-12 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwyv05392z10w9el08mc', 1574678, '2024-08-14 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwz0053b2z10qd1nj7h3', 1574678, '2024-08-13 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwz2053d2z10z7x3cc15', 1574678, '2024-08-17 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwz6053f2z10nn2ftaxs', 1574678, '2024-08-16 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwzk053h2z10fhq9ilbb', 1574678, '2024-08-15 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jwzm053k2z10o0p350bw', 1574678, '2024-08-21 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jwzm053l2z104e64xga6', 1574678, '2024-08-18 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jx00053n2z109m527gle', 1574678, '2024-08-20 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx06053p2z103qiwtac1', 1574678, '2024-08-24 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx1i053r2z10vrrzs09c', 1574678, '2024-08-23 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx1n053t2z10hfdqb0e0', 1574678, '2024-08-22 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx22053x2z10x3ea8bfd', 1574678, '2024-08-26 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx22053y2z10cphqloaq', 1574678, '2024-08-19 00:00:00.000', 6000000, 'IDR', 0
    ),
    (
        'cls16jx22053z2z10ysbov1xt', 1574678, '2024-08-25 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx2h05412z106l1aj72v', 1574678, '2024-08-28 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx2k05432z10jh4y96so', 1574678, '2024-08-29 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx2r05462z10w98245yp', 1574678, '2024-08-30 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx2r05472z103ohx0sxc', 1574678, '2024-08-27 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx43054a2z10oyl77n6p', 1574678, '2024-08-31 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx43054b2z100300k15y', 1574678, '2024-09-01 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx4k054d2z10nzwikik5', 1574678, '2024-09-02 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx4m054f2z10igw4wsz1', 1574678, '2024-09-04 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx4n054h2z10hjv5oi9h', 1574678, '2024-09-03 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx57054k2z10it9txml2', 1574678, '2024-09-06 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx57054l2z10lvbc0odj', 1574678, '2024-09-05 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx57054n2z10ljc86jg6', 1574678, '2024-09-08 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx57054p2z107iu52n2p', 1574678, '2024-09-10 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx6i054r2z10do8974mh', 1574678, '2024-09-09 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx6j054t2z10zaj2rv7v', 1574678, '2024-09-07 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx78054v2z10790e8nla', 1574678, '2024-09-11 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx7d054x2z10d5eagap0', 1574678, '2024-09-12 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx7d054z2z10mpleziwa', 1574678, '2024-09-13 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx7s05512z108bgac2jr', 1574678, '2024-09-14 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx7v05532z10g36yzaht', 1574678, '2024-09-17 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx7w05552z103h7kfvi7', 1574678, '2024-09-16 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx7w05572z10plqpnvqq', 1574678, '2024-09-15 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx8w05592z10an8xm0xk', 1574678, '2024-09-18 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx8y055b2z10a553scju', 1574678, '2024-09-19 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jx9n055d2z10jrztym2l', 1574678, '2024-09-23 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxa1055f2z10k9vl18h0', 1574678, '2024-09-24 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxa1055h2z106kw3dpwz', 1574678, '2024-09-22 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxan055l2z10xo471i6r', 1574678, '2024-09-20 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxan055n2z10s25jvi5a', 1574678, '2024-09-25 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxan055o2z10klou62wr', 1574678, '2024-09-30 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxan055p2z10zwl9iih8', 1574678, '2024-09-26 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxbp055r2z10h3hlvzxd', 1574678, '2024-09-29 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxbp055t2z10u2ubhmkd', 1574678, '2024-09-27 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxc2055v2z10op6p57ti', 1574678, '2024-09-28 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxcn055x2z1034vtl6xq', 1574678, '2024-10-01 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxct055z2z10yyhy9v4k', 1574678, '2024-10-03 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxdb05642z10lldgtat7', 1574678, '2024-10-07 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxdb05652z10kjkgy0z3', 1574678, '2024-10-06 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxdb05662z10358wb0by', 1574678, '2024-10-02 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxdb05672z10v7psaqdz', 1574678, '2024-10-05 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxe305692z103n7u3zlp', 1574678, '2024-10-04 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxe4056b2z10bidn24hu', 1574678, '2024-10-08 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxej056d2z10nsurx0nc', 1574678, '2024-10-09 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxf1056f2z10f1ej9qne', 1574678, '2024-10-10 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxfb056h2z10u0xkhq7f', 1574678, '2024-10-11 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxfl056j2z105ya0pbyc', 1574678, '2024-10-14 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxfr056l2z10ydslfksq', 1574678, '2024-10-12 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxft056n2z10ltr9ll2q', 1574678, '2024-10-13 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxfw056p2z106xylc4j1', 1574678, '2024-10-15 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxgk056r2z10436b0xp6', 1574678, '2024-10-16 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxgl056t2z10eruczc99', 1574678, '2024-10-17 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxgx056v2z10mfjbm4uv', 1574678, '2024-10-18 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxhk056x2z10j9e30ct9', 1574678, '2024-10-20 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxhw056z2z10baxmxgg5', 1574678, '2024-10-21 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxhx05712z10t5ebpxti', 1574678, '2024-10-19 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxi505732z109u4bvptj', 1574678, '2024-10-22 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxii05752z106t497rgm', 1574678, '2024-09-21 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxil05772z1043ba880p', 1574678, '2024-10-26 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxj505792z10hzfvkxmv', 1574678, '2024-10-24 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxj7057b2z10rmxn1i6m', 1574678, '2024-10-25 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxjd057d2z1079wy5jmv', 1574678, '2024-10-28 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxk3057f2z10mjf22k4x', 1574678, '2024-10-23 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxkf057h2z104t93jjgn', 1574678, '2024-10-27 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxkl057k2z10g0wu98k7', 1574678, '2024-10-29 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxkl057l2z10mkv951bf', 1574678, '2024-10-30 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxl0057n2z10kpjnx6oy', 1574678, '2024-11-02 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxl5057p2z10jqcyvo0a', 1574678, '2024-11-03 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxlf057r2z103eprqtcy', 1574678, '2024-10-31 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxll057t2z103u44pw0y', 1574678, '2024-11-01 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxlp057v2z10mshsa33l', 1574678, '2024-11-04 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxmr057x2z10ol8w9uct', 1574678, '2024-11-06 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxmv057z2z10557xx405', 1574678, '2024-11-05 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxn705812z10imf6w70o', 1574678, '2024-11-07 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxn905832z100kz3s9bc', 1574678, '2024-11-08 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxnf05852z1006c73a77', 1574678, '2024-11-09 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxnt05872z10k919ztsy', 1574678, '2024-11-10 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxnv05892z10vf4fomae', 1574678, '2024-11-12 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxo1058b2z10hgv8gff8', 1574678, '2024-11-11 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxo5058d2z1080bq8lek', 1574678, '2024-11-15 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxpb058g2z1026w94mfl', 1574678, '2024-11-16 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxpb058h2z108qlsfwe9', 1574678, '2024-11-19 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxps058j2z1039x3punf', 1574678, '2024-11-18 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxpv058l2z10b8ju75zr', 1574678, '2024-11-17 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxq0058n2z10t92x2r8r', 1574678, '2024-11-20 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxqg058p2z103fmvm72g', 1574678, '2024-11-13 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxqh058s2z10iyvp9yx8', 1574678, '2024-11-25 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxqh058t2z109g93q0tw', 1574678, '2024-11-26 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxqh058v2z10quyjkmmy', 1574678, '2024-11-27 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxrr058x2z102ouy64tb', 1574678, '2024-11-30 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxrx058z2z10dceku5c1', 1574678, '2024-11-29 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxsc05912z107zfufbji', 1574678, '2024-11-28 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxsq05932z10o2mnanv1', 1574678, '2024-12-01 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxsr05952z10qowf6mj1', 1574678, '2024-11-24 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxt105972z105f750zgv', 1574678, '2024-11-23 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxt5059a2z10qsjl1zmn', 1574678, '2024-11-22 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxt5059b2z1073dfkgjp', 1574678, '2024-12-02 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxt7059d2z108evjkyml', 1574678, '2024-12-04 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxuc059f2z10sf4p1938', 1574678, '2024-12-03 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxuk059h2z10m8qkvoeg', 1574678, '2024-12-05 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxuy059j2z104vjukpb5', 1574678, '2024-11-21 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxvb059m2z1091ucslym', 1574678, '2024-12-06 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxvb059n2z109leyujz1', 1574678, '2024-12-07 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxvh059p2z10j8htdbz8', 1574678, '2024-12-08 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxvp059r2z10w15kp33r', 1574678, '2024-12-10 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxvv059u2z10f1hwowgo', 1574678, '2024-12-09 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxvv059v2z10jhqj5fc6', 1574678, '2024-12-11 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxwy059x2z10grhr4zsl', 1574678, '2024-12-13 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxxh059z2z10zjs7uvue', 1574678, '2024-12-12 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxy105a12z10886jqf4x', 1574678, '2024-12-16 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxy205a32z10mct52olz', 1574678, '2024-12-15 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxy305a52z10615n0dxi', 1574678, '2024-12-17 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxyg05a72z109urvponl', 1574678, '2024-12-19 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxyn05a92z10dmal838z', 1574678, '2024-12-21 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxyo05ab2z105camx7du', 1574678, '2024-12-14 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxz005ad2z102438f8em', 1574678, '2024-12-20 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jxzt05af2z10lk127zz5', 1574678, '2024-12-22 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jy0105ah2z10zxk0lqsd', 1574678, '2024-12-18 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jy0l05aj2z10xtsl0l4k', 1574678, '2024-12-24 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jy0o05al2z10gxolhf36', 1574678, '2024-12-26 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jy0u05an2z10troxfv6w', 1574678, '2024-12-23 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jy1105ap2z10n27qvtz1', 1574678, '2024-12-27 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jy1805ar2z10mt16198g', 1574678, '2024-12-25 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jy1d05at2z10ugh8n1sw', 1574678, '2024-12-29 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jy1g05av2z10y8exc60s', 1574678, '2024-12-31 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jy2b05ax2z106f6lgygq', 1574678, '2024-12-30 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jy2q05az2z102jan0amr', 1574678, '2025-01-02 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy3b05b12z1017g95jfm', 1574678, '2025-01-03 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy3c05b32z102n9fv5o6', 1574678, '2025-01-01 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy3g05b52z10g3dhanex', 1574678, '2024-12-28 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jy3m05b72z10l6g3um2a', 1574678, '2025-01-06 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy3s05b92z10wysbcf9h', 1574678, '2025-01-07 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy3y05bb2z10x654wf5x', 1574678, '2025-01-05 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy4205bd2z1032w73d1i', 1574678, '2025-01-08 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy4w05bf2z10sad6bi9z', 1574678, '2025-01-09 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy5605bh2z10jkyxhckr', 1574678, '2025-01-11 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy5w05bj2z106mtm49rk', 1574678, '2025-01-12 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy5x05bl2z10u8mtz6mw', 1574678, '2025-01-13 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy6605bo2z108h62kkjq', 1574678, '2025-01-17 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy6605bp2z10eqvzjwvq', 1574678, '2025-01-14 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy6805br2z106ha08027', 1574678, '2025-01-15 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy6g05bt2z10smp8h1x1', 1574678, '2025-01-18 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy6s05bv2z10tye6qqlt', 1574678, '2025-01-10 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy7i05bx2z10a9ic8yde', 1574678, '2025-01-21 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy7w05bz2z10e3dj2rg3', 1574678, '2025-01-22 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy8e05c12z107xn9995b', 1574678, '2025-01-19 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy8e05c32z10694jkcpy', 1574678, '2025-01-04 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy8i05c52z10s8gt3akd', 1574678, '2025-01-16 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy8m05c82z10ixc83w0p', 1574678, '2025-01-24 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy8m05c92z105yc6xvqv', 1574678, '2025-01-20 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy9205cb2z104fit36ut', 1574678, '2025-01-25 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jy9a05cd2z10jaqs92lq', 1574678, '2025-01-27 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jya405cf2z10ckzcogk2', 1574678, '2025-01-28 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jyam05ch2z10xgerbgd6', 1574678, '2025-01-26 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyb205cj2z10pl14v9gj', 1574678, '2025-01-29 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jyb405cl2z10xp6hq3rn', 1574678, '2025-01-30 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jyb805co2z1073fekjno', 1574678, '2025-01-31 00:00:00.000', 5200000, 'IDR', 0
    ),
    (
        'cls16jyb805cp2z10c6hiaf2y', 1574678, '2024-11-14 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jybe05cr2z10uvyf66hr', 1574678, '2025-02-01 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyc205ct2z10d29mikfz', 1574678, '2025-02-02 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyc405cv2z100t17u7ph', 1574678, '2025-02-04 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jycg05cx2z10czk4xqf1', 1574678, '2025-02-03 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyd005cz2z10t6mua8ql', 1574678, '2025-02-05 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jydi05d12z10t4d322eb', 1574678, '2025-02-07 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jydo05d32z10w3nmg94a', 1574678, '2025-02-06 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jydo05d52z1019xg99ew', 1574678, '2025-02-08 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jydq05d72z10pb1an0gs', 1574678, '2025-02-09 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jydw05d92z1066rla630', 1574678, '2025-02-10 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyei05db2z10sdq3ibp9', 1574678, '2025-02-12 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyem05dd2z10susta05i', 1574678, '2025-02-14 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyeu05df2z10lwoojkbd', 1574678, '2025-02-13 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyfe05dh2z10i36bm0iq', 1574678, '2025-02-15 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyfy05dj2z10ivn132au', 1574678, '2025-02-16 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyg205dm2z10am1vv99z', 1574678, '2025-01-23 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyg205dn2z10o872ne36', 1574678, '2025-02-11 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyg405dp2z102qpund7a', 1574678, '2025-02-17 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jygi05dr2z109dms98kz', 1574678, '2025-02-20 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyh805dt2z10tvhwj954', 1574678, '2025-02-18 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyha05dv2z10stircs6b', 1574678, '2025-02-19 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyha05dx2z101xcjpe7a', 1574678, '2025-02-22 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyi105dz2z10bwfwpvgy', 1574678, '2025-02-21 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyi805e12z10wcwrjxcd', 1574678, '2025-02-24 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyio05e42z10jsntkexe', 1574678, '2025-02-23 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyio05e52z10c1fa4v8c', 1574678, '2025-02-25 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyio05e72z10ebjvacgn', 1574678, '2025-02-27 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyj905e92z10mdlam759', 1574678, '2025-02-28 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyk005ec2z10nij73xfl', 1574678, '2025-02-26 00:00:00.000', 5200000, 'IDR', 1
    ),
    (
        'cls16jyk005ed2z10dkjn0y21', 1574678, '2025-03-01 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyk005ef2z10ahddbf6m', 1574678, '2025-03-03 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyks05eh2z106rcez973', 1574678, '2025-03-04 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyl005ej2z10nj3omshq', 1574678, '2025-03-02 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jylg05el2z10w5ostw6b', 1574678, '2025-03-05 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jylk05en2z10zpgb7me3', 1574678, '2025-03-06 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyll05ep2z10tgmejy3b', 1574678, '2025-03-08 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyly05er2z10cn3bb9ep', 1574678, '2025-03-07 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jymv05et2z10x7plu8na', 1574678, '2025-03-09 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jymy05ev2z10kuwz1aaq', 1574678, '2025-03-10 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jynf05ex2z10vxeloxb8', 1574678, '2025-03-11 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyns05ez2z1061dou1y0', 1574678, '2025-03-13 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jynx05f12z106bg8wfow', 1574678, '2025-03-12 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyoa05f32z10ephe0lhk', 1574678, '2025-03-15 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyoc05f52z1049xbfpmw', 1574678, '2025-03-14 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyoh05f72z10v18npa3u', 1574678, '2025-03-16 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyow05f92z10n6bueqj7', 1574678, '2025-03-17 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jypg05fb2z10kr0xj19k', 1574678, '2025-03-18 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jypp05fd2z10bcgj4ex3', 1574678, '2025-03-20 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyqg05fh2z106istl5ma', 1574678, '2025-03-22 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyqh05fj2z10a5wpywkw', 1574678, '2025-03-23 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyqs05fl2z10rpyff0nl', 1574678, '2025-03-19 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyr005fn2z101bokjjff', 1574678, '2025-03-24 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyr205fp2z10qb9umds1', 1574678, '2025-03-25 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyrq05fr2z10v04x0lv6', 1574678, '2025-03-28 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jys005ft2z10itmlaeke', 1574678, '2025-03-27 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jysd05fv2z10hm68jqyi', 1574678, '2025-03-29 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyt005fy2z10p8mzer5a', 1574678, '2025-03-31 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyt005fz2z101kh5e1yi', 1574678, '2025-03-26 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyt605g12z101oc5ukai', 1574678, '2025-03-30 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyta05g32z108okyiiiu', 1574678, '2025-04-01 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jytk05g52z10oiza7xvh', 1574678, '2025-04-03 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jytu05g72z10jivot1zj', 1574678, '2025-04-02 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyub05g92z10mgr8xi37', 1574678, '2025-04-06 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyuk05gb2z107ebg1xvr', 1574678, '2025-04-05 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyv705gd2z102rnlw1gv', 1574678, '2025-04-04 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyvf05gf2z1018ufhldr', 1574678, '2025-04-08 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyvj05gh2z10okvoxinn', 1574678, '2025-04-07 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyvs05gj2z10zytiqyd6', 1574678, '2025-04-09 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyvt05gl2z10i52ses84', 1574678, '2025-04-11 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyw105gn2z10jx8bmtiy', 1574678, '2025-04-10 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jywh05gp2z106kxlj8z6', 1574678, '2025-04-12 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jywx05gr2z104nskbdn8', 1574678, '2025-04-13 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyx305gt2z10s26rx4o3', 1574678, '2025-04-14 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyy405gx2z10j0h3ekas', 1574678, '2025-04-16 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyy405gy2z10wen8h24e', 1574678, '2025-04-15 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyy405gz2z1093kriver', 1574678, '2025-04-19 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jyyh05h12z10ro82to0d', 1574678, '2025-04-20 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz0805h32z105l8j13z6', 1574678, '2025-04-18 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz0905h52z108op72b0r', 1574678, '2025-04-17 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz0y05h72z10ktf7udvc', 1574678, '2025-04-21 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz1h05h92z102rfrlx12', 1574678, '2025-04-25 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz1n05hb2z101axkmpix', 1574678, '2025-04-24 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz3b05hd2z10lpjmuc3w', 1574678, '2025-04-27 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz3y05hf2z10yy2w832k', 1574678, '2025-04-22 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz4005hi2z10vinh04zy', 1574678, '2025-04-28 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz4005hj2z10nzutqspp', 1574678, '2025-04-23 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz4d05hl2z106dav21ya', 1574678, '2025-04-26 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz4v05hn2z10dep3kekx', 1574678, '2025-04-30 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz5505hp2z1062cuq7kf', 1574678, '2025-04-29 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz5b05hr2z10bk0f9oiu', 1574678, '2025-05-01 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz5w05ht2z104zm5wax3', 1574678, '2025-05-02 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz6505hv2z10wpwoqyvz', 1574678, '2025-05-04 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz6d05hx2z10nrf2yzwq', 1574678, '2025-05-05 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz6j05hz2z10svwv9qo7', 1574678, '2025-05-03 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz6l05i12z10j5pb3cd9', 1574678, '2025-05-07 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz6x05i32z104nc71zw8', 1574678, '2025-05-06 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz7f05i52z104gpiidmv', 1574678, '2025-05-08 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz7r05i72z106gpxf1gu', 1574678, '2025-05-11 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz8305i92z10ot4rkgyr', 1574678, '2025-05-10 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz8r05ib2z10j2pbewfg', 1574678, '2025-05-09 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz8t05id2z10pvlw607n', 1574678, '2025-05-12 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz9705if2z10c3soqrfu', 1574678, '2025-05-14 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz9b05ii2z106zh4syqr', 1574678, '2025-05-15 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz9b05ij2z10xfxevn9g', 1574678, '2025-05-13 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jz9r05il2z104j1ordr3', 1574678, '2025-05-16 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jzac05in2z103rledomu', 1574678, '2025-05-18 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jzag05ip2z10e80q0t6e', 1574678, '2025-05-17 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jzan05ir2z10ogzhjz02', 1574678, '2025-05-20 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jzbf05it2z10bmfbtirb', 1574678, '2025-05-19 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jzbj05iv2z10icq2y6cw', 1574678, '2025-05-22 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jzbu05ix2z105mn1lkqp', 1574678, '2025-05-21 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jzbx05iz2z10z3ncwxuq', 1574678, '2025-05-25 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jzbz05j12z109hk1zp6i', 1574678, '2025-05-24 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jzcb05j32z10nzf3wxg5', 1574678, '2025-05-23 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cls16jziy05j52z10prlzsuku', 1587920, '2024-01-30 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jziy05j82z10pojcmx3x', 1587920, '2024-02-02 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jziy05j92z10mgf53gqs', 1587920, '2024-02-03 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jziy05jb2z10iwety44a', 1587920, '2024-01-31 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jziy05je2z10dn0xwsb4', 1587920, '2024-02-05 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jziy05jf2z10xk6w7d5l', 1587920, '2024-02-04 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jziy05ji2z10e7ps3abl', 1587920, '2024-02-06 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jziy05jj2z10w1tqxw06', 1587920, '2024-02-07 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jziz05jl2z10vo3w99j6', 1587920, '2024-02-08 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jzlz05jn2z1001ftccmn', 1587920, '2024-02-09 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jzm505jp2z102ep2zuaa', 1587920, '2024-02-10 00:00:00.000', 3450000, 'IDR', 0
    ),
    (
        'cls16jzm605jt2z10vw9srxld', 1587920, '2024-02-01 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jzm605ju2z10pj6juu51', 1587920, '2024-02-13 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jzm605jv2z10krk2y52p', 1587920, '2024-02-11 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jzme05jx2z10s5j0bn2p', 1587920, '2024-02-14 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jzme05k12z10lu52uaqy', 1587920, '2024-02-12 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jzme05k22z10s40aqx96', 1587920, '2024-02-16 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jzme05k32z10a6e6zp2y', 1587920, '2024-02-15 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jzor05k52z10pzrd767n', 1587920, '2024-02-17 00:00:00.000', 3450000, 'IDR', 0
    ),
    (
        'cls16jzou05k72z106bwrbb45', 1587920, '2024-02-18 00:00:00.000', 3450000, 'IDR', 0
    ),
    (
        'cls16jzou05k92z10ag5mdjc1', 1587920, '2024-02-19 00:00:00.000', 3450000, 'IDR', 0
    ),
    (
        'cls16jzou05kb2z10v1jdqgyv', 1587920, '2024-02-20 00:00:00.000', 3450000, 'IDR', 0
    ),
    (
        'cls16jzp705kd2z10u99hib5q', 1587920, '2024-02-22 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jzpc05kg2z10oinspb2g', 1587920, '2024-02-23 00:00:00.000', 3450000, 'IDR', 0
    ),
    (
        'cls16jzpc05kh2z10qc4hwucn', 1587920, '2024-02-21 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jzpd05kj2z101ikx4g8w', 1587920, '2024-02-24 00:00:00.000', 3450000, 'IDR', 0
    ),
    (
        'cls16jzpg05kl2z10xx6d3idc', 1587920, '2024-02-25 00:00:00.000', 3450000, 'IDR', 0
    ),
    (
        'cls16jzrs05kn2z10txla58lo', 1587920, '2024-02-26 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jzrw05kp2z10ymer9895', 1587920, '2024-02-27 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jzry05kr2z108br2fcwc', 1587920, '2024-02-28 00:00:00.000', 3450000, 'IDR', 1
    ),
    (
        'cls16jzry05kt2z10ot1n2j70', 1587920, '2024-02-29 00:00:00.000', 3450000, 'IDR', 0
    ),
    (
        'cls16jzs405kv2z10phsd2oig', 1587920, '2024-03-02 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16jzs605kx2z100va54rmu', 1587920, '2024-03-03 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16jzs605kz2z10h8odxf6i', 1587920, '2024-03-01 00:00:00.000', 3750000, 'IDR', 0
    ),
    (
        'cls16jzs805l22z10x8vywasi', 1587920, '2024-03-04 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16jzs805l32z10korphqkb', 1587920, '2024-03-05 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16jzu905l62z10f7wz77uw', 1587920, '2024-03-06 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16jzu905l72z10bptbul3n', 1587920, '2024-03-08 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16jzua05l92z10bbgkif7k', 1587920, '2024-03-07 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16jzue05lb2z103c4bhgz8', 1587920, '2024-03-09 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16jzum05ld2z107oge8j7p', 1587920, '2024-03-10 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16jzuo05lf2z10x81vubn4', 1587920, '2024-03-11 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16jzuo05lh2z102j9krjx6', 1587920, '2024-03-12 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16jzus05lj2z10kag0fp0g', 1587920, '2024-03-13 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16jzuu05ll2z10ttuo85u2', 1587920, '2024-03-14 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16jzwm05ln2z10az5312ii', 1587920, '2024-03-15 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16jzwm05lp2z10ogv2vsh1', 1587920, '2024-03-16 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16jzws05lr2z10ba0ia1mm', 1587920, '2024-03-17 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16jzwu05lt2z105vlfjj5y', 1587920, '2024-03-18 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16jzx305lv2z10fobuoxjd', 1587920, '2024-03-19 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16jzx805lx2z10youz7kua', 1587920, '2024-03-23 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16jzx805lz2z10mklhog96', 1587920, '2024-03-21 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16jzxe05m22z109v243xl7', 1587920, '2024-03-22 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16jzxe05m32z10mlo6ye46', 1587920, '2024-03-20 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16jzyw05m52z10cw6zpdtj', 1587920, '2024-03-25 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16jzz205m72z10yh54686u', 1587920, '2024-03-26 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16jzzg05ma2z10h0gmcn85', 1587920, '2024-03-24 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16jzzg05mb2z101274ayi9', 1587920, '2024-03-27 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16jzzk05md2z10jtq0k0cy', 1587920, '2024-03-28 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k00005mf2z10ziqilkda', 1587920, '2024-03-29 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k00205mi2z100i7uxmnx', 1587920, '2024-03-30 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k00205mj2z105nvjl23n', 1587920, '2024-03-31 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k00205ml2z103z6amfak', 1587920, '2024-04-01 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k01i05mn2z10yggfv4dd', 1587920, '2024-04-02 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k01r05mp2z10qkbi18bv', 1587920, '2024-04-03 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k02005mr2z10cp7aw4zz', 1587920, '2024-04-04 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k02205mt2z10dyf12hpc', 1587920, '2024-04-07 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k02805mv2z103me5wlfa', 1587920, '2024-04-06 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k02u05mz2z10bdzcnsd1', 1587920, '2024-04-11 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k02u05n02z109dwerj64', 1587920, '2024-04-05 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k02u05n12z10moydsc77', 1587920, '2024-04-10 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k02y05n32z10xikik0dc', 1587920, '2024-04-09 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k03t05n52z10v8u8ew1z', 1587920, '2024-04-08 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k04d05n82z10n5jxoc1m', 1587920, '2024-04-13 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k04d05n92z108t8yaf9y', 1587920, '2024-04-12 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k04m05nb2z10hds1lzil', 1587920, '2024-04-14 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k04s05nd2z10bkvbxtrz', 1587920, '2024-04-15 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k05d05nf2z10tib9wcfq', 1587920, '2024-04-18 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k05g05ni2z10yrfkm3el', 1587920, '2024-04-16 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k05g05nk2z10zmalq1w0', 1587920, '2024-04-17 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k05g05nl2z1047fm39mq', 1587920, '2024-04-19 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k06705nn2z10xcbahbab', 1587920, '2024-04-22 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k07105np2z10nl13bns2', 1587920, '2024-04-23 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k07105nr2z10htdqjcoa', 1587920, '2024-04-24 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k07105nt2z10f9uz2bo9', 1587920, '2024-04-20 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k07505nv2z10trb2p2bg', 1587920, '2024-04-21 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k08505nz2z10lyq9l4u9', 1587920, '2024-04-30 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k08505o02z10rdtw6suq', 1587920, '2024-04-28 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k08505o12z106suszsxd', 1587920, '2024-04-26 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k08705o32z10qv628vjo', 1587920, '2024-04-27 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k08j05o52z105119knub', 1587920, '2024-04-25 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k09n05o72z10nfruvwmx', 1587920, '2024-04-29 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k09p05o92z10ckjccw3c', 1587920, '2024-05-01 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k09q05oc2z10gfg8miud', 1587920, '2024-05-03 00:00:00.000', 5699727, 'IDR', 0
    ),
    (
        'cls16k09q05od2z10gmnr8z5a', 1587920, '2024-05-02 00:00:00.000', 5380047, 'IDR', 0
    ),
    (
        'cls16k0ar05oh2z10gi01wuki', 1587920, '2024-05-06 00:00:00.000', 5450794, 'IDR', 0
    ),
    (
        'cls16k0ar05oi2z10u0annqxw', 1587920, '2024-05-05 00:00:00.000', 5435514, 'IDR', 0
    ),
    (
        'cls16k0ar05oj2z10f4cpabq3', 1587920, '2024-05-04 00:00:00.000', 4813604, 'IDR', 0
    ),
    (
        'cls16k0b505ol2z106o16p3wt', 1587920, '2024-05-08 00:00:00.000', 4942951, 'IDR', 0
    ),
    (
        'cls16k0b605on2z101v47hu07', 1587920, '2024-05-07 00:00:00.000', 4929826, 'IDR', 0
    ),
    (
        'cls16k0bw05op2z10ru9gdxcg', 1587920, '2024-05-09 00:00:00.000', 5255444, 'IDR', 1
    ),
    (
        'cls16k0c505os2z10erazo5au', 1587920, '2024-05-10 00:00:00.000', 4903466, 'IDR', 1
    ),
    (
        'cls16k0c505ot2z101vt8ji76', 1587920, '2024-05-11 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0c905ov2z10o121jnzg', 1587920, '2024-05-12 00:00:00.000', 4878349, 'IDR', 0
    ),
    (
        'cls16k0d805oy2z1021ygbfdc', 1587920, '2024-05-13 00:00:00.000', 4460001, 'IDR', 0
    ),
    (
        'cls16k0d805oz2z1019g7s0sj', 1587920, '2024-05-14 00:00:00.000', 4500696, 'IDR', 0
    ),
    (
        'cls16k0da05p12z10023q1brf', 1587920, '2024-05-15 00:00:00.000', 4545746, 'IDR', 0
    ),
    (
        'cls16k0df05p32z10mf1axpu0', 1587920, '2024-05-16 00:00:00.000', 4592541, 'IDR', 0
    ),
    (
        'cls16k0ds05p52z102sax0tsq', 1587920, '2024-05-17 00:00:00.000', 4646212, 'IDR', 0
    ),
    (
        'cls16k0ed05p72z10dqqk6mji', 1587920, '2024-05-19 00:00:00.000', 4732818, 'IDR', 0
    ),
    (
        'cls16k0en05p92z10qopmkai6', 1587920, '2024-05-18 00:00:00.000', 4690177, 'IDR', 0
    ),
    (
        'cls16k0eo05pb2z10olin54dr', 1587920, '2024-05-20 00:00:00.000', 5221059, 'IDR', 0
    ),
    (
        'cls16k0eq05pd2z103wgg1asx', 1587920, '2024-05-21 00:00:00.000', 4730638, 'IDR', 1
    ),
    (
        'cls16k0fn05pg2z10j8nj89e0', 1587920, '2024-05-22 00:00:00.000', 4776184, 'IDR', 1
    ),
    (
        'cls16k0fn05ph2z10eivis0bx', 1587920, '2024-05-24 00:00:00.000', 5578137, 'IDR', 1
    ),
    (
        'cls16k0fn05pj2z10s2fy51pw', 1587920, '2024-05-23 00:00:00.000', 4817184, 'IDR', 1
    ),
    (
        'cls16k0fp05pl2z10vc0zn9aj', 1587920, '2024-05-26 00:00:00.000', 7080607, 'IDR', 1
    ),
    (
        'cls16k0g905pn2z10rqocalu3', 1587920, '2024-05-27 00:00:00.000', 7131833, 'IDR', 1
    ),
    (
        'cls16k0gr05pp2z10zaf95a3k', 1587920, '2024-05-28 00:00:00.000', 6826953, 'IDR', 1
    ),
    (
        'cls16k0h405pr2z10i0il9smf', 1587920, '2024-05-29 00:00:00.000', 7037478, 'IDR', 0
    ),
    (
        'cls16k0h705pu2z108wm6tqjk', 1587920, '2024-05-30 00:00:00.000', 6095286, 'IDR', 0
    ),
    (
        'cls16k0h705pv2z10h0imt97o', 1587920, '2024-05-25 00:00:00.000', 5610449, 'IDR', 1
    ),
    (
        'cls16k0hx05px2z107dul1odk', 1587920, '2024-06-01 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k0i305pz2z101jdatk99', 1587920, '2024-05-31 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k0i705q12z103a28xatf', 1587920, '2024-06-02 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0i705q32z10yxh2vslx', 1587920, '2024-06-03 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0iv05q52z10543lnvm0', 1587920, '2024-06-04 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0j705q72z10p6wsfycm', 1587920, '2024-06-05 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0jj05q92z10d1eaa4kg', 1587920, '2024-06-07 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0jr05qb2z10uul4gz07', 1587920, '2024-06-06 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0jv05qd2z10nyzai7mw', 1587920, '2024-06-08 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0ka05qf2z10acxl7jor', 1587920, '2024-06-09 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0kt05qh2z106nut1x0y', 1587920, '2024-06-10 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0kv05qj2z102w53yhnd', 1587920, '2024-06-11 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0kv05ql2z10vrh4yp8x', 1587920, '2024-06-12 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0lh05qn2z10tp3s930g', 1587920, '2024-06-13 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0lr05qp2z10t7ni4hfe', 1587920, '2024-06-14 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0lz05qr2z10k5pzsxxw', 1587920, '2024-06-15 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0m705qt2z105rv6vm97', 1587920, '2024-06-16 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0md05qv2z105pashm9x', 1587920, '2024-06-17 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0mq05qx2z10fo35alx7', 1587920, '2024-06-18 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0nc05qz2z107awmgue1', 1587920, '2024-06-19 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0nc05r12z100gd33wov', 1587920, '2024-06-20 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k0nh05r32z1015gfcm2s', 1587920, '2024-06-21 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k0o305r52z104hraggae', 1587920, '2024-06-22 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k0o505r72z10o1mrjafi', 1587920, '2024-06-23 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k0oj05r92z10sdo1zlpj', 1587920, '2024-06-24 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k0ol05rb2z10io2uo9es', 1587920, '2024-06-25 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k0ox05rd2z10gwb12b05', 1587920, '2024-06-26 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k0p305rf2z10x808el7o', 1587920, '2024-06-27 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k0px05rj2z10k5iw9kf7', 1587920, '2024-07-01 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k0px05rk2z10g4a18fr4', 1587920, '2024-06-29 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k0px05rl2z10rflpq0g8', 1587920, '2024-06-28 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k0qo05rn2z10178j1zc7', 1587920, '2024-06-30 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k0qt05rp2z10aemrmmlc', 1587920, '2024-07-03 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0r805rr2z10pgeb4pcj', 1587920, '2024-07-02 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0r905rt2z10vpgci6xs', 1587920, '2024-07-04 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0r905rv2z10y30otujc', 1587920, '2024-07-06 00:00:00.000', 6503360, 'IDR', 0
    ),
    (
        'cls16k0rl05rx2z101kscyys5', 1587920, '2024-07-05 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k0sd05rz2z10602oz6nz', 1587920, '2024-07-07 00:00:00.000', 6521560, 'IDR', 0
    ),
    (
        'cls16k0si05s12z10kvuvrc45', 1587920, '2024-07-09 00:00:00.000', 6563683, 'IDR', 0
    ),
    (
        'cls16k0sj05s32z10p1hzqbwu', 1587920, '2024-07-08 00:00:00.000', 6551269, 'IDR', 0
    ),
    (
        'cls16k0t705s52z109yppz0rs', 1587920, '2024-07-11 00:00:00.000', 6452532, 'IDR', 1
    ),
    (
        'cls16k0ta05s72z10st911r8m', 1587920, '2024-07-10 00:00:00.000', 6439460, 'IDR', 1
    ),
    (
        'cls16k0tl05s92z10j2pz0fpm', 1587920, '2024-07-12 00:00:00.000', 6468401, 'IDR', 1
    ),
    (
        'cls16k0tt05sc2z10a1ycjsoa', 1587920, '2024-07-13 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0tt05sd2z10nvtt3dfv', 1587920, '2024-07-14 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k0tx05sf2z10qog55j8s', 1587920, '2024-07-15 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k0uz05sh2z103gx3bqwf', 1587920, '2024-07-16 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k0v105sk2z10pery1h7d', 1587920, '2024-07-18 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k0v105sl2z10ue4579c0', 1587920, '2024-07-17 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k0vm05sn2z10kvu4o8oc', 1587920, '2024-07-19 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0vz05sp2z10o9ngayhp', 1587920, '2024-07-21 00:00:00.000', 6429726, 'IDR', 1
    ),
    (
        'cls16k0w705sr2z10v2qolh9w', 1587920, '2024-07-20 00:00:00.000', 5521093, 'IDR', 1
    ),
    (
        'cls16k0wb05st2z107yf62wr2', 1587920, '2024-07-22 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0wc05sv2z10e1pkj6or', 1587920, '2024-07-23 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0wd05sx2z10b1uu5fi4', 1587920, '2024-07-24 00:00:00.000', 5721397, 'IDR', 1
    ),
    (
        'cls16k0xp05t12z10hg1kye6s', 1587920, '2024-07-26 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0xp05t22z105doy0djx', 1587920, '2024-07-25 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0xp05t32z1039evl9ux', 1587920, '2024-07-28 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0y305t52z10ds74ih8b', 1587920, '2024-07-27 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0yi05t72z106rkfxf7y', 1587920, '2024-07-29 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0yl05t92z108etouzxd', 1587920, '2024-07-30 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k0yt05tb2z10d03u6o7t', 1587920, '2024-07-31 00:00:00.000', 4468560, 'IDR', 0
    ),
    (
        'cls16k0yv05td2z10edi8ccp1', 1587920, '2024-08-02 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k0yz05tf2z101c0fk871', 1587920, '2024-08-01 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k10f05th2z10rz3gau1v', 1587920, '2024-08-04 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k10h05tk2z101wzblndy', 1587920, '2024-08-03 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k10h05tl2z10kr6u3qei', 1587920, '2024-08-08 00:00:00.000', 5320324, 'IDR', 0
    ),
    (
        'cls16k10j05tn2z10szts09xn', 1587920, '2024-08-09 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k10x05tp2z10w31odmf9', 1587920, '2024-08-10 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k11105tr2z10ijlrz24u', 1587920, '2024-08-12 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k11905tt2z10ml2si8c6', 1587920, '2024-08-11 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k11e05tv2z10lr9867j0', 1587920, '2024-08-13 00:00:00.000', 5645820, 'IDR', 1
    ),
    (
        'cls16k11f05tx2z10z9weadzo', 1587920, '2024-08-14 00:00:00.000', 6706893, 'IDR', 0
    ),
    (
        'cls16k12v05tz2z10icn3nkq8', 1587920, '2024-08-15 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k12y05u32z102x730it9', 1587920, '2024-08-16 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k12y05u42z10hlnxh0n6', 1587920, '2024-08-18 00:00:00.000', 7500977, 'IDR', 0
    ),
    (
        'cls16k12y05u52z106lqi0t2x', 1587920, '2024-08-17 00:00:00.000', 4250000, 'IDR', 0
    ),
    (
        'cls16k13b05u72z1066htrae3', 1587920, '2024-08-19 00:00:00.000', 7532683, 'IDR', 0
    ),
    (
        'cls16k13h05u92z10lguqhr43', 1587920, '2024-08-20 00:00:00.000', 6878046, 'IDR', 1
    ),
    (
        'cls16k13n05ub2z10c8so9i6k', 1587920, '2024-08-21 00:00:00.000', 6911487, 'IDR', 1
    ),
    (
        'cls16k13u05ud2z10gjdntht2', 1587920, '2024-08-22 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k13v05uf2z10efgyvvwi', 1587920, '2024-08-07 00:00:00.000', 5297042, 'IDR', 0
    ),
    (
        'cls16k15c05uh2z10q1bvt0q6', 1587920, '2024-08-06 00:00:00.000', 5273121, 'IDR', 0
    ),
    (
        'cls16k15q05uk2z1005mq1ieg', 1587920, '2024-08-24 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k15q05ul2z105d8w1j07', 1587920, '2024-08-05 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k15q05un2z10z56oox0q', 1587920, '2024-08-23 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k15w05up2z10kx1gqth8', 1587920, '2024-08-25 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k16a05ur2z10bgihidl8', 1587920, '2024-08-26 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k16c05uu2z1071qdapdv', 1587920, '2024-08-27 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k16c05uv2z1022l0rbgz', 1587920, '2024-08-28 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k16c05ux2z105vz2uiwu', 1587920, '2024-08-29 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k17z05uz2z10zeh4eepn', 1587920, '2024-08-30 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k18j05v12z10g8bm3twa', 1587920, '2024-09-01 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k18k05v32z10abi0o46c', 1587920, '2024-08-31 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k18k05v52z10fcgq6rrj', 1587920, '2024-09-02 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k18o05v72z10mmgkuacd', 1587920, '2024-09-03 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k18w05va2z10047uscym', 1587920, '2024-09-06 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k18w05vb2z106730vby5', 1587920, '2024-09-05 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k19205vd2z10t43ws203', 1587920, '2024-09-04 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k19605vf2z10kn4cpvlb', 1587920, '2024-09-07 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1ai05vh2z10wedm8ebi', 1587920, '2024-09-08 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1b205vj2z101aqq0tdy', 1587920, '2024-09-10 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1b705vl2z10e2atknvq', 1587920, '2024-09-09 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1bg05vn2z100q05gp7z', 1587920, '2024-09-11 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1bi05vr2z10kl08iydj', 1587920, '2024-09-13 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1bi05vs2z10rpa2uixu', 1587920, '2024-09-14 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1bi05vt2z10mau6ioce', 1587920, '2024-09-12 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1bu05vv2z109bw0l54i', 1587920, '2024-09-15 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1c005vx2z102rxydoh6', 1587920, '2024-09-17 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1dd05vz2z10i09ajvhx', 1587920, '2024-09-16 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1dj05w12z10bn6on7y9', 1587920, '2024-09-18 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1dt05w32z10quhxesmk', 1587920, '2024-09-19 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1e605w52z10o8b5qksb', 1587920, '2024-09-21 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1e705w82z10y2bw1gna', 1587920, '2024-09-20 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1e705w92z10ag5xar8x', 1587920, '2024-09-22 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1e805wc2z10rz2ndldj', 1587920, '2024-09-23 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1e805wd2z10w52k262n', 1587920, '2024-09-25 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1eu05wf2z10ql8fccqu', 1587920, '2024-09-24 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1g005wh2z1067vjyif7', 1587920, '2024-09-26 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1gk05wk2z10qdhpzztq', 1587920, '2024-09-27 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1gk05wl2z101tgfk3o0', 1587920, '2024-09-28 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1gx05wn2z10tulun5lr', 1587920, '2024-09-29 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1gy05wq2z10zu2ewn9w', 1587920, '2024-10-01 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1gy05wr2z10trvi8ql6', 1587920, '2024-09-30 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1gy05wu2z10zo7vzt77', 1587920, '2024-10-02 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1gy05wv2z103wjw2rhd', 1587920, '2024-10-03 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1hs05wx2z10oysghhdb', 1587920, '2024-10-04 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1im05wz2z10yqnw645r', 1587920, '2024-10-05 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1j605x12z10de666j60', 1587920, '2024-10-07 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1je05x32z10mhs8jg7b', 1587920, '2024-10-06 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1jh05x52z10k8s7qpbp', 1587920, '2024-10-08 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1jo05x82z10t27gmnfj', 1587920, '2024-10-09 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1jo05xa2z100dtze9de', 1587920, '2024-10-10 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1jo05xc2z10956znt96', 1587920, '2024-10-11 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1jo05xd2z10cfjblq4l', 1587920, '2024-10-12 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1kh05xf2z101ye2alni', 1587920, '2024-10-13 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1l005xh2z10mq90ippg', 1587920, '2024-10-14 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1ls05xj2z10kp1yh4gn', 1587920, '2024-10-15 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1m405xl2z10hehku4lw', 1587920, '2024-10-17 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1ma05xn2z1075q3rlzx', 1587920, '2024-10-16 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1mc05xp2z105jrfhdnu', 1587920, '2024-10-18 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1mc05xr2z10ftqb6ln8', 1587920, '2024-10-19 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1mg05xu2z105i8k3oys', 1587920, '2024-10-20 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1mg05xv2z1062xrnh7d', 1587920, '2024-10-21 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1nd05xx2z1094xd2lw7', 1587920, '2024-10-22 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1nv05xz2z10i961vxi2', 1587920, '2024-10-23 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1o605y12z10mcr9n1ey', 1587920, '2024-10-24 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1oc05y32z104uwetdlg', 1587920, '2024-10-25 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1ou05y52z10gqhnsi6i', 1587920, '2024-10-27 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1oz05y72z10v8m26xky', 1587920, '2024-10-29 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1p005y92z10g3nj5pkn', 1587920, '2024-10-28 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1p005yb2z10l6wq9g6x', 1587920, '2024-10-26 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1pb05yd2z105iybuo9o', 1587920, '2024-10-30 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1pt05yf2z10an70da9x', 1587920, '2024-10-31 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1q005yh2z108lgq65bu', 1587920, '2024-11-03 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1qk05yj2z10kgbuu59k', 1587920, '2024-11-01 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1qx05yl2z10xkgt8z4v', 1587920, '2024-11-02 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1r505yn2z10m70mlbw5', 1587920, '2024-11-04 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1ro05yp2z10r2f3azw4', 1587920, '2024-11-05 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1rp05yr2z10g6tk3bc6', 1587920, '2024-11-07 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1rr05yt2z10h06zqabb', 1587920, '2024-11-06 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1rr05yv2z109bo08amv', 1587920, '2024-11-08 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1s805yx2z10poucpvql', 1587920, '2024-11-11 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1sg05yz2z10fpy0y36t', 1587920, '2024-11-09 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1t505z12z10g067lecr', 1587920, '2024-11-10 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1to05z32z10f3kav7bm', 1587920, '2024-11-12 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1tq05z52z10v5mmila0', 1587920, '2024-11-13 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1u205z72z10zuwe4dwr', 1587920, '2024-11-14 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1u805zb2z102tq54cvs', 1587920, '2024-11-16 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1u805zc2z103u1bfv7m', 1587920, '2024-11-18 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1u805zd2z10qwwizv1e', 1587920, '2024-11-15 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1uq05zf2z10wqwydzxk', 1587920, '2024-11-17 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1uu05zh2z1055gi44zo', 1587920, '2024-11-19 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1vq05zj2z108k1772u5', 1587920, '2024-11-20 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1w805zl2z10ig51fczf', 1587920, '2024-11-21 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1wa05zn2z10kswfvo1d', 1587920, '2024-11-22 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1wr05zp2z1039fuyc51', 1587920, '2024-11-23 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1wx05zr2z10wgw0x46c', 1587920, '2024-11-24 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1wx05zt2z10giq1vcyz', 1587920, '2024-11-25 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1wx05zv2z104x8vl6rx', 1587920, '2024-11-26 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1xa05zy2z10mzuhtfwu', 1587920, '2024-11-29 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1xb05zz2z10p6wfuvpj', 1587920, '2024-11-28 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1y706012z1052r661a7', 1587920, '2024-11-27 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1yo06042z107w9x0kip', 1587920, '2024-12-02 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1yo06052z10ak4q2kp1', 1587920, '2024-11-30 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1zp06072z1069ug3mto', 1587920, '2024-12-03 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1zq06092z10fruyiqik', 1587920, '2024-12-01 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1zr060b2z10g3omqjjs', 1587920, '2024-12-04 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k1zr060d2z109aqwnb4e', 1587920, '2024-12-06 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k209060f2z109hxjkai2', 1587920, '2024-12-05 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k20b060h2z10u4p0kxah', 1587920, '2024-12-07 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k217060j2z10epjm1s5g', 1587920, '2024-12-08 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k21l060l2z10xdpvt7r5', 1587920, '2024-12-09 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k21p060n2z10ihp4m4o1', 1587920, '2024-12-10 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k229060p2z10wuili59t', 1587920, '2024-12-11 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k22c060t2z10bqr9icoe', 1587920, '2024-12-13 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k22c060u2z10x0nnx0pa', 1587920, '2024-12-12 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k22c060v2z10kgdb5xc2', 1587920, '2024-12-14 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k22p060x2z1072hxmbsu', 1587920, '2024-12-15 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k22t060z2z102qc4jmh5', 1587920, '2024-12-16 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k24106122z102mimixj3', 1587920, '2024-12-17 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k24106132z100hmp0hv0', 1587920, '2024-12-18 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k24506152z10ugxkmo9a', 1587920, '2024-12-20 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k24x06172z10i8mhybpr', 1587920, '2024-12-19 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k24z06192z10ovxkeppp', 1587920, '2024-12-22 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k24z061d2z10tqvbg8f6', 1587920, '2024-12-23 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k24z061e2z102x9x0r2s', 1587920, '2024-12-21 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k24z061f2z109joytbwg', 1587920, '2024-12-24 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k25d061h2z106xl3zpvq', 1587920, '2024-12-25 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k26h061j2z10usjqcvg5', 1587920, '2024-12-27 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k26j061m2z10tf4skxz6', 1587920, '2024-12-29 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k26j061n2z10hjpsmjr7', 1587920, '2024-12-26 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k27f061q2z109ygklq22', 1587920, '2024-12-28 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k27f061r2z10qk208jzu', 1587920, '2024-12-30 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k27l061v2z10c6kbce42', 1587920, '2024-12-31 00:00:00.000', 6890509, 'IDR', 1
    ),
    (
        'cls16k27l061w2z10tg7nm2ec', 1587920, '2025-01-03 00:00:00.000', 3825521, 'IDR', 1
    ),
    (
        'cls16k27l061x2z10i6bwsdcd', 1587920, '2025-01-01 00:00:00.000', 6885554, 'IDR', 1
    ),
    (
        'cls16k281061z2z10olt67p81', 1587920, '2025-01-02 00:00:00.000', 3836687, 'IDR', 1
    ),
    (
        'cls16k28v06212z10y9wil4gl', 1587920, '2025-01-05 00:00:00.000', 3828585, 'IDR', 1
    ),
    (
        'cls16k28z06242z1063khf3ks', 1587920, '2025-01-06 00:00:00.000', 3832893, 'IDR', 1
    ),
    (
        'cls16k28z06252z10pjp7jii1', 1587920, '2025-01-04 00:00:00.000', 3835828, 'IDR', 1
    ),
    (
        'cls16k29s06282z10f34izr5j', 1587920, '2025-01-07 00:00:00.000', 3839208, 'IDR', 1
    ),
    (
        'cls16k29s06292z103t7gnzie', 1587920, '2025-01-08 00:00:00.000', 3840573, 'IDR', 1
    ),
    (
        'cls16k2a3062b2z10bfdbe5n3', 1587920, '2025-01-11 00:00:00.000', 3838655, 'IDR', 1
    ),
    (
        'cls16k2a5062e2z10pg7y0vce', 1587920, '2025-01-10 00:00:00.000', 3829017, 'IDR', 1
    ),
    (
        'cls16k2a5062f2z10rioe23q0', 1587920, '2025-01-12 00:00:00.000', 3829146, 'IDR', 1
    ),
    (
        'cls16k2aj062h2z10qth0l34s', 1587920, '2025-01-09 00:00:00.000', 3837005, 'IDR', 1
    ),
    (
        'cls16k2b7062j2z1019poaiag', 1587920, '2025-01-13 00:00:00.000', 3829799, 'IDR', 1
    ),
    (
        'cls16k2bh062m2z10yhagrrg8', 1587920, '2025-01-15 00:00:00.000', 3831103, 'IDR', 1
    ),
    (
        'cls16k2bh062n2z10f3ir0uwn', 1587920, '2025-01-14 00:00:00.000', 3832285, 'IDR', 1
    ),
    (
        'cls16k2cb062q2z10hoonx9a8', 1587920, '2025-01-17 00:00:00.000', 3831341, 'IDR', 1
    ),
    (
        'cls16k2cb062r2z10dy2kq5so', 1587920, '2025-01-16 00:00:00.000', 3832469, 'IDR', 1
    ),
    (
        'cls16k2cy062t2z10kg9ketaq', 1587920, '2025-01-18 00:00:00.000', 3838586, 'IDR', 1
    ),
    (
        'cls16k2cz062w2z10ljid33ya', 1587920, '2025-01-22 00:00:00.000', 3842439, 'IDR', 1
    ),
    (
        'cls16k2cz062x2z10gc12wac9', 1587920, '2025-01-20 00:00:00.000', 3829167, 'IDR', 1
    ),
    (
        'cls16k2dh062z2z10bk2fv3mp', 1587920, '2025-01-21 00:00:00.000', 3830922, 'IDR', 1
    ),
    (
        'cls16k2do06312z10o9e1tmmh', 1587920, '2025-01-19 00:00:00.000', 3827282, 'IDR', 1
    ),
    (
        'cls16k2dv06332z10otekliul', 1587920, '2025-01-23 00:00:00.000', 3855586, 'IDR', 1
    ),
    (
        'cls16k2dz06352z10bu6wfx3x', 1587920, '2025-01-25 00:00:00.000', 3878497, 'IDR', 1
    ),
    (
        'cls16k2es06382z10v73iu0i7', 1587920, '2025-01-28 00:00:00.000', 3920522, 'IDR', 0
    ),
    (
        'cls16k2es06392z10sp6xbfn4', 1587920, '2025-01-24 00:00:00.000', 3869068, 'IDR', 1
    ),
    (
        'cls16k2fj063b2z109ekj7hbn', 1587920, '2025-01-26 00:00:00.000', 3875598, 'IDR', 1
    ),
    (
        'cls16k2fl063d2z10galcq7if', 1587920, '2025-01-27 00:00:00.000', 3899419, 'IDR', 0
    ),
    (
        'cls16k2fm063f2z102toynic7', 1587920, '2025-01-30 00:00:00.000', 4018342, 'IDR', 0
    ),
    (
        'cls16k2g5063h2z102g9bbsbu', 1587920, '2025-01-29 00:00:00.000', 3955864, 'IDR', 0
    ),
    (
        'cls16k2g5063j2z10shr7xchq', 1587920, '2025-01-31 00:00:00.000', 4092811, 'IDR', 0
    ),
    (
        'cls16k2gh063l2z10y15g0exd', 1587920, '2025-02-01 00:00:00.000', 3911988, 'IDR', 1
    ),
    (
        'cls16k2gm063n2z10qh4ydwc1', 1587920, '2025-02-03 00:00:00.000', 3921305, 'IDR', 1
    ),
    (
        'cls16k2h5063p2z10gtk1er38', 1587920, '2025-02-02 00:00:00.000', 3916047, 'IDR', 1
    ),
    (
        'cls16k2ha063r2z10lhez5urw', 1587920, '2025-02-06 00:00:00.000', 3934505, 'IDR', 1
    ),
    (
        'cls16k2i5063t2z10ug2jrwle', 1587920, '2025-02-04 00:00:00.000', 3926745, 'IDR', 1
    ),
    (
        'cls16k2ia063v2z10j2vj22jw', 1587920, '2025-02-07 00:00:00.000', 3942697, 'IDR', 1
    ),
    (
        'cls16k2ia063x2z10gsl0zb1v', 1587920, '2025-02-05 00:00:00.000', 3930482, 'IDR', 1
    ),
    (
        'cls16k2ii063z2z10wyf5jwbp', 1587920, '2025-02-08 00:00:00.000', 3948186, 'IDR', 1
    ),
    (
        'cls16k2ip06412z10c8zd6ml2', 1587920, '2025-02-09 00:00:00.000', 3948309, 'IDR', 1
    ),
    (
        'cls16k2j106432z10wna2uh8y', 1587920, '2025-02-10 00:00:00.000', 3952230, 'IDR', 1
    ),
    (
        'cls16k2j906452z101fveefae', 1587920, '2025-02-11 00:00:00.000', 3957128, 'IDR', 1
    ),
    (
        'cls16k2ji06472z10ftuu7utv', 1587920, '2025-02-13 00:00:00.000', 3960029, 'IDR', 1
    ),
    (
        'cls16k2jo06492z101vsbf4e3', 1587920, '2025-02-14 00:00:00.000', 3960825, 'IDR', 1
    ),
    (
        'cls16k2la064d2z10cbcn2tjp', 1587920, '2025-02-12 00:00:00.000', 3959249, 'IDR', 1
    ),
    (
        'cls16k2la064e2z102w9hdwz5', 1587920, '2025-02-16 00:00:00.000', 3961413, 'IDR', 1
    ),
    (
        'cls16k2la064f2z10vx90vbu9', 1587920, '2025-02-17 00:00:00.000', 3962562, 'IDR', 1
    ),
    (
        'cls16k2lq064i2z10t7t3vwva', 1587920, '2025-02-15 00:00:00.000', 3962761, 'IDR', 1
    ),
    (
        'cls16k2lq064j2z10kk1ssoqi', 1587920, '2025-02-21 00:00:00.000', 3914031, 'IDR', 1
    ),
    (
        'cls16k2m4064l2z103llbalbj', 1587920, '2025-02-18 00:00:00.000', 3964107, 'IDR', 1
    ),
    (
        'cls16k2m4064n2z104kbdld09', 1587920, '2025-02-20 00:00:00.000', 3965780, 'IDR', 1
    ),
    (
        'cls16k2mm064q2z10ynvx7m8q', 1587920, '2025-02-19 00:00:00.000', 3964944, 'IDR', 1
    ),
    (
        'cls16k2mm064r2z100d5rk4h1', 1587920, '2025-02-23 00:00:00.000', 3793933, 'IDR', 1
    ),
    (
        'cls16k2nn064t2z1055xaxry2', 1587920, '2025-02-22 00:00:00.000', 3855608, 'IDR', 1
    ),
    (
        'cls16k2ns064w2z10lo37c1v8', 1587920, '2025-02-25 00:00:00.000', 3672908, 'IDR', 1
    ),
    (
        'cls16k2ns064x2z10m5e9xc5w', 1587920, '2025-02-24 00:00:00.000', 3733430, 'IDR', 1
    ),
    (
        'cls16k2o5064z2z10211plis9', 1587920, '2025-02-26 00:00:00.000', 3611594, 'IDR', 1
    ),
    (
        'cls16k2oa06512z104m71qwql', 1587920, '2025-02-27 00:00:00.000', 3550484, 'IDR', 1
    ),
    (
        'cls16k2oq06532z10xj9tavvg', 1587920, '2025-02-28 00:00:00.000', 3489235, 'IDR', 1
    ),
    (
        'cls16k2oq06552z10ybt49gsg', 1587920, '2025-03-01 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2p806572z10u2h6tx9j', 1587920, '2025-03-02 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2pc06592z10zostirac', 1587920, '2025-03-03 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2qa065b2z1036f0cgfc', 1587920, '2025-03-04 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2qg065d2z10bgnnj9gh', 1587920, '2025-03-06 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2qo065f2z10qlmjco7t', 1587920, '2025-03-07 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2qv065h2z10stx60iwh', 1587920, '2025-03-08 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2r4065j2z10lvezn9g3', 1587920, '2025-03-05 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2r7065l2z10xx6dq9y1', 1587920, '2025-03-09 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2rb065n2z109medps4f', 1587920, '2025-03-10 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2ro065p2z100wp54ubu', 1587920, '2025-03-11 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2ru065r2z10ej50m3fc', 1587920, '2025-03-12 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2ss065t2z10w1mjueqy', 1587920, '2025-03-13 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2sw065v2z10dxlifmqt', 1587920, '2025-03-14 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2t0065x2z10alt4fsrb', 1587920, '2025-03-15 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2ta065z2z108a6yi3l6', 1587920, '2025-03-16 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2ti06612z10lcso2w65', 1587920, '2025-03-17 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2tu06632z10hh7x8j91', 1587920, '2025-03-18 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2u006652z10mkoo0lbg', 1587920, '2025-03-19 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2u806682z1083r16ck3', 1587920, '2025-03-21 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2u806692z10ojb63520', 1587920, '2025-03-20 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2vc066b2z10wm67um3r', 1587920, '2025-03-22 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2vj066d2z107zq71ykx', 1587920, '2025-03-23 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2vo066f2z10vqikbr0h', 1587920, '2025-03-24 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2vq066h2z10rbl59fq8', 1587920, '2025-03-25 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2w6066j2z10ylpi6dtp', 1587920, '2025-03-27 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2wa066l2z1096zw974y', 1587920, '2025-03-26 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2wn066n2z10dn0tv1w0', 1587920, '2025-03-28 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2wo066q2z1048jxxqkk', 1587920, '2025-03-29 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2wo066r2z10wuvem3x1', 1587920, '2025-03-30 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2y4066t2z100sw600gw', 1587920, '2025-03-31 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2y8066w2z10w2g718nt', 1587920, '2025-04-03 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2y8066x2z10pjvmv3yx', 1587920, '2025-04-02 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2ya066z2z10mf8ycxpe', 1587920, '2025-04-01 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2yq06712z10gevswsnc', 1587920, '2025-04-04 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2yu06732z10kl4gadyg', 1587920, '2025-04-05 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2z406752z10nfbvp3pe', 1587920, '2025-04-06 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2zg06772z1005755c5x', 1587920, '2025-04-07 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k2zg06792z1097qg78nd', 1587920, '2025-04-09 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k30q067b2z10hhf2wv8e', 1587920, '2025-04-08 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k30s067e2z10j2jhrrab', 1587920, '2025-04-10 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k30s067g2z1001wtioxr', 1587920, '2025-04-11 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k30s067h2z10wh26blik', 1587920, '2025-04-13 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k318067j2z10p5e8fbwd', 1587920, '2025-04-15 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k31g067l2z10uw677lgv', 1587920, '2025-04-12 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k31m067n2z105ctjgq4x', 1587920, '2025-04-17 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k322067p2z107qog4pqk', 1587920, '2025-04-18 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k325067r2z106kwg54qi', 1587920, '2025-04-19 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k330067t2z10avzjcw8e', 1587920, '2025-04-20 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k33c067x2z10688urxtx', 1587920, '2025-04-21 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k33c067y2z101qzdrbn4', 1587920, '2025-04-22 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k33c067z2z10sr532qhk', 1587920, '2025-04-23 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k33w06812z101mabj3m7', 1587920, '2025-04-24 00:00:00.000', 4429101, 'IDR', 1
    ),
    (
        'cls16k34106832z10hl0lmtuw', 1587920, '2025-04-25 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k34206852z10elweu49p', 1587920, '2025-04-26 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k34p06872z10flnfe7qh', 1587920, '2025-04-27 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k34s06892z10okb6cbj4', 1587920, '2025-04-14 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k35p068b2z10s3c20tsy', 1587920, '2025-04-29 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k35y068e2z10n1zyyffl', 1587920, '2025-04-28 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k35y068f2z107k2x4d7q', 1587920, '2025-05-01 00:00:00.000', 4702761, 'IDR', 1
    ),
    (
        'cls16k35y068h2z10dfuhrdfg', 1587920, '2025-04-30 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k36a068j2z10zx6u1nca', 1587920, '2025-05-02 00:00:00.000', 6431147, 'IDR', 1
    ),
    (
        'cls16k36v068m2z10gzsahjj4', 1587920, '2025-05-03 00:00:00.000', 6367012, 'IDR', 1
    ),
    (
        'cls16k36v068n2z1076k1ngrd', 1587920, '2025-05-04 00:00:00.000', 6055766, 'IDR', 1
    ),
    (
        'cls16k37h068p2z10amdip0y7', 1587920, '2025-05-06 00:00:00.000', 6265735, 'IDR', 1
    ),
    (
        'cls16k37i068r2z10pi0mh9n2', 1587920, '2025-05-05 00:00:00.000', 6516035, 'IDR', 1
    ),
    (
        'cls16k382068t2z10gyzkqs49', 1587920, '2025-04-16 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cls16k38k068x2z106fbkcs83', 1587920, '2025-05-09 00:00:00.000', 6657995, 'IDR', 1
    ),
    (
        'cls16k38k068y2z10z4jkfed6', 1587920, '2025-05-07 00:00:00.000', 5952496, 'IDR', 1
    ),
    (
        'cls16k38k068z2z10qej3jgi2', 1587920, '2025-05-08 00:00:00.000', 6600418, 'IDR', 1
    ),
    (
        'cls16k39406912z10nvw7dyud', 1587920, '2025-05-10 00:00:00.000', 5638500, 'IDR', 1
    ),
    (
        'cls16k39h06932z10xa4if8bl', 1587920, '2025-05-11 00:00:00.000', 5691627, 'IDR', 1
    ),
    (
        'cls16k39j06952z10yek8z7ws', 1587920, '2025-05-12 00:00:00.000', 5888421, 'IDR', 1
    ),
    (
        'cls16k39p06972z10dxvqau27', 1587920, '2025-05-13 00:00:00.000', 5111358, 'IDR', 1
    ),
    (
        'cls16k39w06992z106an2eqey', 1587920, '2025-05-14 00:00:00.000', 5505527, 'IDR', 1
    ),
    (
        'cls16k3af069b2z10gg87g8mu', 1587920, '2025-05-15 00:00:00.000', 5796273, 'IDR', 1
    ),
    (
        'cls16k3b1069f2z10xiv4htjy', 1587920, '2025-05-18 00:00:00.000', 6305362, 'IDR', 1
    ),
    (
        'cls16k3b1069g2z107epifiua', 1587920, '2025-05-17 00:00:00.000', 5217187, 'IDR', 1
    ),
    (
        'cls16k3b1069h2z10y1cnjuwj', 1587920, '2025-05-21 00:00:00.000', 5779386, 'IDR', 1
    ),
    (
        'cls16k3bo069j2z10dcvxi4oe', 1587920, '2025-05-24 00:00:00.000', 6542969, 'IDR', 1
    ),
    (
        'cls16k3c2069m2z10sfffumdw', 1587920, '2025-05-20 00:00:00.000', 5990253, 'IDR', 1
    ),
    (
        'cls16k3c2069n2z10hpy3yuua', 1587920, '2025-05-22 00:00:00.000', 5654110, 'IDR', 1
    ),
    (
        'cls16k3c3069p2z108g9b3vvq', 1587920, '2025-05-19 00:00:00.000', 5724965, 'IDR', 1
    ),
    (
        'cls16k3cl069r2z10fxen9mrx', 1587920, '2025-05-23 00:00:00.000', 5227488, 'IDR', 1
    ),
    (
        'cls16k3d1069t2z10v2px2yyx', 1587920, '2025-05-25 00:00:00.000', 7398376, 'IDR', 1
    ),
    (
        'cls16k3dk069v2z10dzx0yw3o', 1587920, '2025-05-16 00:00:00.000', 5071807, 'IDR', 1
    ),
    (
        'cltc5lrsd00ovtc36a263zgci', 1115668, '2025-05-26 00:00:00.000', 2634169, 'IDR', 1
    ),
    (
        'cltc5lrt300oztc363xrgl2n0', 1115668, '2025-05-27 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lrtb00p3tc36z28e6kp7', 1115668, '2025-05-28 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lruc00p7tc36hsvk7s4t', 1115668, '2025-05-29 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lruc00p9tc36r9tzx2sn', 1115668, '2025-05-30 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lrut00pbtc369frc3j17', 1115668, '2025-06-03 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lruu00pdtc36gbhalxvv', 1115668, '2025-05-31 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lrvg00pftc36yp980wii', 1115668, '2025-06-04 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lrvn00phtc36igto4idw', 1115668, '2025-06-01 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lrvp00pjtc36zrj5ubt2', 1115668, '2025-06-05 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lrw300pltc36oc9a1gyb', 1115668, '2025-06-02 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lrw600pntc36gaffub96', 1115668, '2025-06-06 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lrx200pqtc360zuougwb', 1115668, '2025-06-07 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lrx200prtc3654c4cg7e', 1115668, '2025-06-10 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lrxk00pttc36m49fnoda', 1115668, '2025-06-08 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lrxm00pwtc367y440o0y', 1115668, '2025-06-09 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lrxm00pxtc361boy1wwf', 1115668, '2025-06-11 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lry300pztc36plo6a692', 1115668, '2025-06-12 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lrye00q1tc36dxbaznwt', 1115668, '2025-06-13 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lryg00q3tc36982r65d8', 1115668, '2025-06-15 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lryk00q5tc36n9w1rt18', 1115668, '2025-06-14 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lrza00q8tc36g0js3x5j', 1115668, '2025-06-16 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lrza00q9tc36t5wgy6e4', 1115668, '2025-06-17 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lrzq00qbtc36dq2chxbv', 1115668, '2025-06-19 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lrzx00qdtc36y1gceuli', 1115668, '2025-06-18 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5ls0300qftc361idgxp9g', 1115668, '2025-06-20 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5ls0k00qhtc36nzb5zq8y', 1115668, '2025-06-21 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5ls0q00qjtc36ymmna6jc', 1115668, '2025-06-22 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5ls0t00qltc369lascz88', 1115668, '2025-06-23 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5ls0v00qntc36ttocmcb7', 1115668, '2025-06-24 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5ls1f00qptc364cppi9ul', 1115668, '2025-06-25 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5ls1m00qrtc36mnmt7pd3', 1115668, '2025-06-26 00:00:00.000', 2500000, 'IDR', 1
    ),
    (
        'cltc5lvak01frtc36wwc43vuj', 1115671, '2025-05-26 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvb201fttc36agk40xfn', 1115671, '2025-05-27 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvb301fvtc36olr9oq3x', 1115671, '2025-05-28 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvbn01fztc36m5dcnlpi', 1115671, '2025-05-30 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvbv01g1tc36zpbiyayf', 1115671, '2025-05-31 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvc101g3tc36vekagwbo', 1115671, '2025-05-29 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvc201g5tc3656qw92jt', 1115671, '2025-06-01 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvcf01g7tc36dexi3uc4', 1115671, '2025-06-02 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvct01g9tc364dkf03qk', 1115671, '2025-06-03 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvd901gbtc362i46guz1', 1115671, '2025-06-04 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvdb01gdtc36ogf5bweq', 1115671, '2025-06-05 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvdo01gftc36sje83r06', 1115671, '2025-06-06 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvdu01ghtc36waay6ggt', 1115671, '2025-06-08 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvdx01gjtc36m9mr83d1', 1115671, '2025-06-09 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lve601gltc3658aoantd', 1115671, '2025-06-10 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lve901gntc366u1k2bib', 1115671, '2025-06-07 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvel01gptc3617fy2f7w', 1115671, '2025-06-12 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvf101grtc36y8rt9bwh', 1115671, '2025-06-13 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvfe01gttc362t9p5i5f', 1115671, '2025-06-14 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvfg01gvtc3667q7m9vt', 1115671, '2025-06-11 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvfr01gxtc36l8zr6mkj', 1115671, '2025-06-15 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvfz01gztc36kfwgy4im', 1115671, '2025-06-17 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvg501h1tc36h5pim7bf', 1115671, '2025-06-16 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvg801h3tc36yualopmm', 1115671, '2025-06-18 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvge01h5tc36sjj0go42', 1115671, '2025-06-19 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvgs01h7tc36h5ahrfm9', 1115671, '2025-06-20 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvha01h9tc36bjuz1ifz', 1115671, '2025-06-21 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvhu01hctc36gjt4iqen', 1115671, '2025-06-22 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvhu01hdtc36r9bbtkug', 1115671, '2025-06-23 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvhz01hftc36xdy1nak1', 1115671, '2025-06-24 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvi201hhtc363vbm2qeb', 1115671, '2025-06-25 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5lvie01hjtc36oi7e27gs', 1115671, '2025-06-26 00:00:00.000', 2050000, 'IDR', 1
    ),
    (
        'cltc5m1xq02xdtc368z7mpenk', 1574678, '2025-05-26 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m1y402xftc36zf7f3nr6', 1574678, '2025-05-27 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m1ya02xhtc36g96k6ozp', 1574678, '2025-05-28 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m1z202xjtc36psuaj3z4', 1574678, '2025-05-29 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m1z302xltc361i7dr2wc', 1574678, '2025-05-30 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m1z802xntc36upnkec0l', 1574678, '2025-05-31 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m1z902xptc36ncx91tip', 1574678, '2025-06-01 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m1zb02xrtc36t8dogfym', 1574678, '2025-06-02 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m1zh02xttc36d4iukbp6', 1574678, '2025-06-03 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m1zv02xvtc36kt5u8uwb', 1574678, '2025-06-04 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m20402xxtc36uown0d2w', 1574678, '2025-06-05 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m20c02xztc36uupf6wlf', 1574678, '2025-06-06 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m21902y1tc36a7cz66h7', 1574678, '2025-06-07 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m21a02y4tc36z2webj6j', 1574678, '2025-06-10 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m21a02y5tc367y5cbm3q', 1574678, '2025-06-08 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m21d02y7tc363yr7nprc', 1574678, '2025-06-09 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m21j02y9tc36oc8bi9yl', 1574678, '2025-06-11 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m21l02ybtc36nsddudfi', 1574678, '2025-06-12 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m22002ydtc366g3ss1re', 1574678, '2025-06-13 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m22e02yftc36a4ih21yf', 1574678, '2025-06-14 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m22h02yhtc36odyqfnba', 1574678, '2025-06-15 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m23d02yjtc36wskpwx1s', 1574678, '2025-06-16 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m23h02yltc36lwqzdnhi', 1574678, '2025-06-17 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m23m02yntc36728rg7ee', 1574678, '2025-06-18 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m23r02yqtc3692jlule1', 1574678, '2025-06-20 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m23r02yrtc36erwdh9rl', 1574678, '2025-06-19 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m23u02yttc36puhkmml6', 1574678, '2025-06-21 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m24g02yvtc365is0nmej', 1574678, '2025-06-22 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m24l02yxtc36nq1gkkoa', 1574678, '2025-06-23 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m24n02yztc36cix3pxh2', 1574678, '2025-06-25 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m25c02z1tc36wbai9jgu', 1574678, '2025-06-24 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m25l02z3tc36oejtly0b', 1574678, '2025-06-26 00:00:00.000', 6000000, 'IDR', 1
    ),
    (
        'cltc5m58303o4tc36iobb8l2h', 1587920, '2025-05-26 00:00:00.000', 8602383, 'IDR', 1
    ),
    (
        'cltc5m58c03o7tc36cfjfzfzh', 1587920, '2025-05-27 00:00:00.000', 8368305, 'IDR', 1
    ),
    (
        'cltc5m58i03o9tc36afba3f0e', 1587920, '2025-05-28 00:00:00.000', 8358563, 'IDR', 1
    ),
    (
        'cltc5m58r03obtc36y71liou1', 1587920, '2025-05-29 00:00:00.000', 8190300, 'IDR', 1
    ),
    (
        'cltc5m59a03odtc368ygsttt1', 1587920, '2025-05-30 00:00:00.000', 6697459, 'IDR', 1
    ),
    (
        'cltc5m59m03oftc36mi6l5w27', 1587920, '2025-05-31 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m59r03ohtc36zrzn38wa', 1587920, '2025-06-01 00:00:00.000', 4326141, 'IDR', 1
    ),
    (
        'cltc5m59t03ojtc36z90gpd4u', 1587920, '2025-06-02 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5a003oltc36xvyqb7xf', 1587920, '2025-06-04 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5ab03ontc36mw7tdvbm', 1587920, '2025-06-03 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5ae03optc36tf057rxa', 1587920, '2025-06-05 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5an03ortc36fdm5bmmj', 1587920, '2025-06-06 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5aq03ottc36q2n0l5f4', 1587920, '2025-06-07 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5bi03ovtc36sphnxdg5', 1587920, '2025-06-08 00:00:00.000', 4309202, 'IDR', 1
    ),
    (
        'cltc5m5bo03oxtc36hdatamm5', 1587920, '2025-06-09 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5bw03oztc36scs592j4', 1587920, '2025-06-10 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5bz03p1tc36x1vhb3a1', 1587920, '2025-06-11 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5c303p3tc36y785v0hu', 1587920, '2025-06-12 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5cg03p5tc36sl9rnnjp', 1587920, '2025-06-13 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5cj03p7tc36gsi1vxq6', 1587920, '2025-06-14 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5cs03p9tc36npue896x', 1587920, '2025-06-15 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5ct03pbtc36z30kjfwd', 1587920, '2025-06-16 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5dq03pdtc366u3axmkg', 1587920, '2025-06-17 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5ds03pftc362bk1mqrj', 1587920, '2025-06-18 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5dz03phtc36kdx5kfm1', 1587920, '2025-06-19 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5e403pjtc365o2u4wgj', 1587920, '2025-06-20 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5e503pltc36xz06hv9r', 1587920, '2025-06-21 00:00:00.000', 4798576, 'IDR', 1
    ),
    (
        'cltc5m5el03pntc36b1222kpp', 1587920, '2025-06-22 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5em03pptc3626mxwjhc', 1587920, '2025-06-23 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5er03prtc36y8zynrm5', 1587920, '2025-06-24 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5f503pttc36fktyht48', 1587920, '2025-06-25 00:00:00.000', 4250000, 'IDR', 1
    ),
    (
        'cltc5m5fv03pvtc36cfiavmj2', 1587920, '2025-06-26 00:00:00.000', 4250000, 'IDR', 1
    );
/*!40000 ALTER TABLE `VillaPricing` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `_prisma_migrations` (
    `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL, `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL, `finished_at` datetime(3) DEFAULT NULL, `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL, `logs` text COLLATE utf8mb4_unicode_ci, `rolled_back_at` datetime(3) DEFAULT NULL, `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP, `applied_steps_count` int unsigned NOT NULL DEFAULT '0', PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */
;
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */
;

UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */
;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */
;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */
;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */
;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */
;

-- Dump completed on 2024-03-13 16:37:14