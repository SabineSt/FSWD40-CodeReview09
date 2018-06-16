-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 16. Jun 2018 um 15:29
-- Server-Version: 10.1.32-MariaDB
-- PHP-Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr09_sabine_steiger_carrental`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `address`
--

CREATE TABLE `address` (
  `address_ID` int(11) NOT NULL,
  `street_name` varchar(30) DEFAULT NULL,
  `house_no` int(11) DEFAULT NULL,
  `fk_postal_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `address`
--

INSERT INTO `address` (`address_ID`, `street_name`, `house_no`, `fk_postal_code`) VALUES
(1, 'Längenfeldgasse', 13, NULL),
(2, 'Kettenbrückengasse', 13, NULL),
(3, 'Hietzinger Hptstr.', 24, NULL),
(4, 'Linke Wienzeile', 67, NULL),
(5, 'Wiener Straße', 66, NULL),
(6, 'Neubaugasse', 98, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `car`
--

CREATE TABLE `car` (
  `car_ID` int(11) NOT NULL,
  `license_plate_no` varchar(30) DEFAULT NULL,
  `brand` varchar(30) DEFAULT NULL,
  `fk_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `car`
--

INSERT INTO `car` (`car_ID`, `license_plate_no`, `brand`, `fk_status`) VALUES
(1, '26738', 'VW', NULL),
(2, 'I4932', 'Audi', NULL),
(3, 'CRISP9', 'BMW', NULL),
(4, '45398', 'Hyundai', NULL),
(5, '23409', 'Porsche', NULL),
(6, '48Z94', 'Skoda', NULL),
(7, '99999', 'Ford', NULL),
(8, '96382', 'Opel', NULL),
(9, '897JE', 'Bentley', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cash`
--

CREATE TABLE `cash` (
  `cash_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `cash`
--

INSERT INTO `cash` (`cash_ID`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `credit_card`
--

CREATE TABLE `credit_card` (
  `credit_card_ID` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `credit_card_no` int(11) DEFAULT NULL,
  `CVV` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `credit_card`
--

INSERT INTO `credit_card` (`credit_card_ID`, `first_name`, `last_name`, `credit_card_no`, `CVV`) VALUES
(2, 'Peter', 'Hubert', 12345678, 876),
(3, 'Lukas', 'Himmel', 98473829, 888),
(4, 'Maria', 'Schubert', 98976583, 654),
(5, 'Amadea', 'Mozart', 98703879, 654),
(6, 'Lulu', 'Hub', 22224768, 567),
(7, 'Mark', 'Schober', 56478392, 352),
(8, 'Leslie', 'Miles', 55533378, 345),
(9, 'Herbert', 'Müller', 87456738, 999),
(10, 'Sisi', 'Kaiser', 12398067, 543);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `customer_ID` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `telephone_no` int(11) DEFAULT NULL,
  `e_mail` varchar(30) DEFAULT NULL,
  `fk_address_ID` int(11) DEFAULT NULL,
  `fk_reservation_ID` int(11) DEFAULT NULL,
  `fk_invoice_ID` int(11) DEFAULT NULL,
  `fk_lended_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `customer`
--

INSERT INTO `customer` (`customer_ID`, `first_name`, `last_name`, `telephone_no`, `e_mail`, `fk_address_ID`, `fk_reservation_ID`, `fk_invoice_ID`, `fk_lended_ID`) VALUES
(1, 'Peter', 'Hubert', 9873458, 'peter.hubert@aon.at', NULL, NULL, NULL, NULL),
(2, 'Lukas', 'Himmel', 94873, 'himmel.himmel@aon.at', NULL, NULL, NULL, NULL),
(3, 'Maria', 'Schubert', 999876, 'miaomiao@aon.at', NULL, NULL, NULL, NULL),
(4, 'Amadea', 'Mozart', 947385, 'mozartsnoten@aon.at', NULL, NULL, NULL, NULL),
(5, 'Lulu', 'Hub', 888333, 'hubhub@gmail.at', NULL, NULL, NULL, NULL),
(6, 'Mark', 'Schober', 234567, 'markymark@gmail.at', NULL, NULL, NULL, NULL),
(7, 'Leslie', 'Miles', 234234, 'gotheextramile@gmail.at', NULL, NULL, NULL, NULL),
(8, 'Herbert', 'Müller', 578432, 'müllberge@aon.at', NULL, NULL, NULL, NULL),
(9, 'Sisi', 'Kaiser', 3334445, 'Kasierin4sure@aon.at', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `invoice`
--

CREATE TABLE `invoice` (
  `invoice_ID` int(11) NOT NULL,
  `fk_invoice_advanced` int(11) DEFAULT NULL,
  `fk_invoice_additional` int(11) DEFAULT NULL,
  `fk_reservation_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `invoice`
--

INSERT INTO `invoice` (`invoice_ID`, `fk_invoice_advanced`, `fk_invoice_additional`, `fk_reservation_ID`) VALUES
(1, NULL, NULL, NULL),
(2, NULL, NULL, NULL),
(3, NULL, NULL, NULL),
(4, NULL, NULL, NULL),
(5, NULL, NULL, NULL),
(6, NULL, NULL, NULL),
(7, NULL, NULL, NULL),
(8, NULL, NULL, NULL),
(9, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `invoice_additional`
--

CREATE TABLE `invoice_additional` (
  `invoice_additional_ID` int(11) NOT NULL,
  `amount` decimal(30,2) DEFAULT NULL,
  `fk_status_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `invoice_additional`
--

INSERT INTO `invoice_additional` (`invoice_additional_ID`, `amount`, `fk_status_ID`) VALUES
(1, '450.89', NULL),
(2, '450.89', NULL),
(3, '500.99', NULL),
(4, '501.23', NULL),
(5, '333.89', NULL),
(6, '564.76', NULL),
(7, '230.56', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `invoice_advanced`
--

CREATE TABLE `invoice_advanced` (
  `invoice_advances_ID` int(11) NOT NULL,
  `amount` decimal(30,2) DEFAULT NULL,
  `fk_reservation_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `invoice_advanced`
--

INSERT INTO `invoice_advanced` (`invoice_advances_ID`, `amount`, `fk_reservation_ID`) VALUES
(2, '899.09', NULL),
(3, '345.10', NULL),
(4, '345.88', NULL),
(5, '345.20', NULL),
(6, '456.78', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lended`
--

CREATE TABLE `lended` (
  `lended_ID` int(11) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `fk_office_ID` int(11) DEFAULT NULL,
  `fk_customer_ID` int(11) DEFAULT NULL,
  `fk_car_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `lended`
--

INSERT INTO `lended` (`lended_ID`, `start_date`, `end_date`, `fk_office_ID`, `fk_customer_ID`, `fk_car_ID`) VALUES
(0, '2017-06-02 16:20:00', '2017-07-02 00:16:00', NULL, NULL, NULL),
(1, '2018-04-11 06:07:00', '2018-05-16 06:16:00', NULL, NULL, NULL),
(2, '2018-06-02 17:35:00', '2018-06-14 07:16:00', NULL, NULL, NULL),
(3, '2016-05-09 06:11:00', '2016-07-10 06:40:00', NULL, NULL, NULL),
(4, '2017-08-22 11:31:00', '2017-09-08 19:44:00', NULL, NULL, NULL),
(5, '2018-01-03 20:49:00', '2018-02-03 19:29:00', NULL, NULL, NULL),
(6, '2018-07-04 06:30:00', '2018-09-05 13:16:00', NULL, NULL, NULL),
(7, '2018-07-08 18:42:00', '2018-08-09 05:17:00', NULL, NULL, NULL),
(8, '2017-08-09 00:52:00', '2017-06-06 04:00:00', NULL, NULL, NULL),
(9, '2016-07-09 11:29:00', '2017-03-04 16:33:00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `office_location`
--

CREATE TABLE `office_location` (
  `office_ID` int(11) NOT NULL,
  `fk_address` int(11) DEFAULT NULL,
  `fk_car_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `office_location`
--

INSERT INTO `office_location` (`office_ID`, `fk_address`, `fk_car_ID`) VALUES
(1, NULL, NULL),
(2, NULL, NULL),
(3, NULL, NULL),
(4, NULL, NULL),
(5, NULL, NULL),
(6, NULL, NULL),
(7, NULL, NULL),
(8, NULL, NULL),
(9, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `payment`
--

CREATE TABLE `payment` (
  `payment_ID` int(11) NOT NULL,
  `fk_payment_type_ID` int(11) DEFAULT NULL,
  `fk_pay_invoice_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `payment`
--

INSERT INTO `payment` (`payment_ID`, `fk_payment_type_ID`, `fk_pay_invoice_ID`) VALUES
(1, NULL, NULL),
(2, NULL, NULL),
(3, NULL, NULL),
(4, NULL, NULL),
(5, NULL, NULL),
(6, NULL, NULL),
(7, NULL, NULL),
(8, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `payment_type`
--

CREATE TABLE `payment_type` (
  `payment_type_ID` int(11) NOT NULL,
  `fk_credit_card` int(11) DEFAULT NULL,
  `fk_transfer` int(11) DEFAULT NULL,
  `fk_cash` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `payment_type`
--

INSERT INTO `payment_type` (`payment_type_ID`, `fk_credit_card`, `fk_transfer`, `fk_cash`) VALUES
(1, NULL, NULL, NULL),
(2, NULL, NULL, NULL),
(3, NULL, NULL, NULL),
(4, NULL, NULL, NULL),
(5, NULL, NULL, NULL),
(6, NULL, NULL, NULL),
(7, NULL, NULL, NULL),
(8, NULL, NULL, NULL),
(9, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `reservation`
--

CREATE TABLE `reservation` (
  `reservation_ID` int(11) NOT NULL,
  `reservation_date` date DEFAULT NULL,
  `usage_start_date` date DEFAULT NULL,
  `usage_end_date` date DEFAULT NULL,
  `fk_office_ID` int(11) DEFAULT NULL,
  `fk_car_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `reservation`
--

INSERT INTO `reservation` (`reservation_ID`, `reservation_date`, `usage_start_date`, `usage_end_date`, `fk_office_ID`, `fk_car_ID`) VALUES
(1, '2017-08-08', '2017-12-13', '2017-12-30', NULL, NULL),
(2, '2017-12-06', '2018-01-05', '2018-02-20', NULL, NULL),
(3, '2018-01-07', '2018-02-28', '2018-03-21', NULL, NULL),
(4, '2017-07-04', '2017-12-12', '2018-01-26', NULL, NULL),
(5, '2018-03-05', '2018-03-30', '2018-04-09', NULL, NULL),
(6, '2018-01-01', '2018-03-12', '2018-03-31', NULL, NULL),
(7, '2018-04-17', '2018-05-06', '2018-06-20', NULL, NULL),
(8, '2018-04-09', '2018-06-13', '2018-06-28', NULL, NULL),
(9, '2018-06-01', '2018-06-02', '2018-06-15', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `status`
--

CREATE TABLE `status` (
  `status_ID` int(11) NOT NULL,
  `status_start_ID` int(11) DEFAULT NULL,
  `status_end_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `status`
--

INSERT INTO `status` (`status_ID`, `status_start_ID`, `status_end_ID`) VALUES
(1, NULL, NULL),
(2, NULL, NULL),
(3, NULL, NULL),
(4, NULL, NULL),
(5, NULL, NULL),
(6, NULL, NULL),
(7, NULL, NULL),
(8, NULL, NULL),
(9, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `status_end`
--

CREATE TABLE `status_end` (
  `status_end_ID` int(11) NOT NULL,
  `KM` int(11) DEFAULT NULL,
  `carrosserie` varchar(70) DEFAULT NULL,
  `gasoline_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `status_end`
--

INSERT INTO `status_end` (`status_end_ID`, `KM`, `carrosserie`, `gasoline_status`) VALUES
(1, 150, 'complete', 9),
(2, 200, 'complete', 14),
(3, 200, 'complete', 12),
(4, 300, 'gas error', 1),
(5, 555, 'complete', 12),
(6, 240, 'complete', 23),
(7, 1201, 'complete', 30);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `status_start`
--

CREATE TABLE `status_start` (
  `status_start_ID` int(11) NOT NULL,
  `KM` int(11) DEFAULT NULL,
  `carrosserie` varchar(70) DEFAULT NULL,
  `gasoline_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `status_start`
--

INSERT INTO `status_start` (`status_start_ID`, `KM`, `carrosserie`, `gasoline_status`) VALUES
(1, 110, 'complete', 45),
(2, 120, 'complete', 33),
(3, 140, 'complete', 33),
(4, 450, 'complete', 12),
(5, 200, 'complete', 37),
(6, 1090, 'complete', 50);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `transfer`
--

CREATE TABLE `transfer` (
  `transfer_ID` int(11) NOT NULL,
  `account_no` int(11) DEFAULT NULL,
  `bank_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `transfer`
--

INSERT INTO `transfer` (`transfer_ID`, `account_no`, `bank_name`, `last_name`, `first_name`) VALUES
(1, 2147483647, 'Erste Bank', 'Berg', 'Hummel'),
(2, 395758395, 'Austrian', 'Berger', 'Holle'),
(3, 39485748, 'Bawag', 'Wespe', 'Mariechen'),
(4, 38495738, 'Bawag', 'Peter', 'Hummel'),
(5, 93748495, 'Erste Bank', 'Rosa', 'Winke'),
(6, 2147483647, 'Hello Bank', 'Hoffnung', 'Gestern');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `zip_state`
--

CREATE TABLE `zip_state` (
  `postal_code` int(11) NOT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `zip_state`
--

INSERT INTO `zip_state` (`postal_code`, `city`, `state`) VALUES
(1390, 'Graz', 'Steiermark'),
(2345, 'Klagenfurt', 'Carinthia'),
(3456, 'Ufersen', 'Oberöstereich'),
(3874, 'Göttlesbrunn', 'Niederösterreich'),
(4758, 'Vienna', 'Vienna'),
(5432, 'Vienna', 'Vienna'),
(7894, 'Vienna', 'Vienna'),
(9898, 'Schönabrunn', 'Niederösterreich'),
(9984, 'Bruck', 'Niederösterreich');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_ID`),
  ADD KEY `fk_postal_code` (`fk_postal_code`);

--
-- Indizes für die Tabelle `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_ID`),
  ADD KEY `fk_status` (`fk_status`);

--
-- Indizes für die Tabelle `cash`
--
ALTER TABLE `cash`
  ADD PRIMARY KEY (`cash_ID`);

--
-- Indizes für die Tabelle `credit_card`
--
ALTER TABLE `credit_card`
  ADD PRIMARY KEY (`credit_card_ID`);

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_ID`),
  ADD KEY `fk_address_ID` (`fk_address_ID`),
  ADD KEY `fk_invoice_ID` (`fk_invoice_ID`),
  ADD KEY `fk_lended_ID` (`fk_lended_ID`),
  ADD KEY `fk_reservation_ID` (`fk_reservation_ID`);

--
-- Indizes für die Tabelle `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_ID`),
  ADD KEY `fk_invoice_additional` (`fk_invoice_additional`),
  ADD KEY `fk_invoice_advanced` (`fk_invoice_advanced`),
  ADD KEY `fk_reservation_ID` (`fk_reservation_ID`);

--
-- Indizes für die Tabelle `invoice_additional`
--
ALTER TABLE `invoice_additional`
  ADD PRIMARY KEY (`invoice_additional_ID`),
  ADD KEY `fk_status_ID` (`fk_status_ID`);

--
-- Indizes für die Tabelle `invoice_advanced`
--
ALTER TABLE `invoice_advanced`
  ADD PRIMARY KEY (`invoice_advances_ID`),
  ADD KEY `fk_reservation_ID` (`fk_reservation_ID`);

--
-- Indizes für die Tabelle `lended`
--
ALTER TABLE `lended`
  ADD PRIMARY KEY (`lended_ID`),
  ADD KEY `fk_car_ID` (`fk_car_ID`),
  ADD KEY `fk_customer_ID` (`fk_customer_ID`),
  ADD KEY `fk_office_ID` (`fk_office_ID`);

--
-- Indizes für die Tabelle `office_location`
--
ALTER TABLE `office_location`
  ADD PRIMARY KEY (`office_ID`),
  ADD KEY `fk_address` (`fk_address`),
  ADD KEY `fk_car_ID` (`fk_car_ID`);

--
-- Indizes für die Tabelle `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_ID`),
  ADD KEY `fk_payment_type_ID` (`fk_payment_type_ID`),
  ADD KEY `fk_pay_invoice_ID` (`fk_pay_invoice_ID`);

--
-- Indizes für die Tabelle `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`payment_type_ID`),
  ADD KEY `fk_cash` (`fk_cash`),
  ADD KEY `fk_credit_card` (`fk_credit_card`),
  ADD KEY `fk_transfer` (`fk_transfer`);

--
-- Indizes für die Tabelle `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_ID`);

--
-- Indizes für die Tabelle `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_ID`),
  ADD KEY `status_start_ID` (`status_start_ID`),
  ADD KEY `status_end_ID` (`status_end_ID`);

--
-- Indizes für die Tabelle `status_end`
--
ALTER TABLE `status_end`
  ADD PRIMARY KEY (`status_end_ID`);

--
-- Indizes für die Tabelle `status_start`
--
ALTER TABLE `status_start`
  ADD PRIMARY KEY (`status_start_ID`);

--
-- Indizes für die Tabelle `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`transfer_ID`);

--
-- Indizes für die Tabelle `zip_state`
--
ALTER TABLE `zip_state`
  ADD PRIMARY KEY (`postal_code`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`fk_postal_code`) REFERENCES `zip_state` (`postal_code`);

--
-- Constraints der Tabelle `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`fk_status`) REFERENCES `status` (`status_ID`);

--
-- Constraints der Tabelle `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`fk_address_ID`) REFERENCES `address` (`address_ID`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`fk_invoice_ID`) REFERENCES `invoice` (`invoice_ID`),
  ADD CONSTRAINT `customer_ibfk_3` FOREIGN KEY (`fk_lended_ID`) REFERENCES `lended` (`lended_ID`),
  ADD CONSTRAINT `customer_ibfk_4` FOREIGN KEY (`fk_reservation_ID`) REFERENCES `reservation` (`reservation_ID`);

--
-- Constraints der Tabelle `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`fk_invoice_additional`) REFERENCES `invoice_additional` (`invoice_additional_ID`),
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`fk_invoice_additional`) REFERENCES `invoice_additional` (`invoice_additional_ID`),
  ADD CONSTRAINT `invoice_ibfk_3` FOREIGN KEY (`fk_invoice_additional`) REFERENCES `invoice_additional` (`invoice_additional_ID`),
  ADD CONSTRAINT `invoice_ibfk_4` FOREIGN KEY (`fk_invoice_advanced`) REFERENCES `invoice_advanced` (`invoice_advances_ID`),
  ADD CONSTRAINT `invoice_ibfk_5` FOREIGN KEY (`fk_reservation_ID`) REFERENCES `reservation` (`reservation_ID`);

--
-- Constraints der Tabelle `invoice_additional`
--
ALTER TABLE `invoice_additional`
  ADD CONSTRAINT `invoice_additional_ibfk_1` FOREIGN KEY (`fk_status_ID`) REFERENCES `status` (`status_ID`);

--
-- Constraints der Tabelle `invoice_advanced`
--
ALTER TABLE `invoice_advanced`
  ADD CONSTRAINT `invoice_advanced_ibfk_1` FOREIGN KEY (`fk_reservation_ID`) REFERENCES `reservation` (`reservation_ID`);

--
-- Constraints der Tabelle `lended`
--
ALTER TABLE `lended`
  ADD CONSTRAINT `lended_ibfk_1` FOREIGN KEY (`fk_car_ID`) REFERENCES `car` (`car_ID`),
  ADD CONSTRAINT `lended_ibfk_2` FOREIGN KEY (`fk_customer_ID`) REFERENCES `customer` (`customer_ID`),
  ADD CONSTRAINT `lended_ibfk_3` FOREIGN KEY (`fk_office_ID`) REFERENCES `office_location` (`office_ID`);

--
-- Constraints der Tabelle `office_location`
--
ALTER TABLE `office_location`
  ADD CONSTRAINT `office_location_ibfk_1` FOREIGN KEY (`fk_address`) REFERENCES `address` (`address_ID`),
  ADD CONSTRAINT `office_location_ibfk_2` FOREIGN KEY (`fk_car_ID`) REFERENCES `car` (`car_ID`),
  ADD CONSTRAINT `office_location_ibfk_3` FOREIGN KEY (`fk_address`) REFERENCES `address` (`address_ID`),
  ADD CONSTRAINT `office_location_ibfk_4` FOREIGN KEY (`fk_car_ID`) REFERENCES `car` (`car_ID`);

--
-- Constraints der Tabelle `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`fk_payment_type_ID`) REFERENCES `payment_type` (`payment_type_ID`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`fk_pay_invoice_ID`) REFERENCES `invoice` (`invoice_ID`);

--
-- Constraints der Tabelle `payment_type`
--
ALTER TABLE `payment_type`
  ADD CONSTRAINT `payment_type_ibfk_1` FOREIGN KEY (`fk_cash`) REFERENCES `cash` (`cash_ID`),
  ADD CONSTRAINT `payment_type_ibfk_2` FOREIGN KEY (`fk_credit_card`) REFERENCES `credit_card` (`credit_card_ID`),
  ADD CONSTRAINT `payment_type_ibfk_3` FOREIGN KEY (`fk_cash`) REFERENCES `cash` (`cash_ID`),
  ADD CONSTRAINT `payment_type_ibfk_4` FOREIGN KEY (`fk_credit_card`) REFERENCES `credit_card` (`credit_card_ID`),
  ADD CONSTRAINT `payment_type_ibfk_5` FOREIGN KEY (`fk_transfer`) REFERENCES `transfer` (`transfer_ID`);

--
-- Constraints der Tabelle `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `status_ibfk_1` FOREIGN KEY (`status_start_ID`) REFERENCES `status_start` (`status_start_ID`),
  ADD CONSTRAINT `status_ibfk_2` FOREIGN KEY (`status_end_ID`) REFERENCES `status_end` (`status_end_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
