-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
-- 
-- Host: localhost
-- Generation Time: Nov 14, 2017 at 04:55 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

DROP DATABASE IF EXISTS gstore;
CREATE DATABASE gstore;
-- DROP USER IF EXISTS 'gsuser'@'localhost'; 
-- CREATE USER 'gsuser'@'localhost' IDENTIFIED BY 'gspass';
-- GRANT ALL ON gstore.* TO 'gsuser'@'localhost';
-- FLUSH PRIVILEGES;
USE gstore;

-- 40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT 
-- 40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS 
-- 40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION 
-- 40101 SET NAMES utf8mb4 

-- 
-- Database: `gstore`
-- 
-- --------------------------------------------------------

-- 
-- Table structure for table `PRODUCT`
--

CREATE TABLE `PRODUCT` (
  `Product_id` int(11) NOT NULL AUTO_INCREMENT,
  `Product_name` varchar(100) NOT NULL,
  `Units` int(11) NOT NULL DEFAULT '0',
  `Picture` varchar(100) NOT NULL DEFAULT 'No_image_available.svg',
  `Weight` double NOT NULL,
  `Category_id` int(11) NOT NULL, -- Removed FK
  `Price` double NOT NULL,
  `Product_description` text,
  `Manufacturer_id` int(11) NOT NULL, -- Removed FK
  PRIMARY KEY (`Product_id`)  -- Definir `Product_id` como clave primaria.
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- 
-- Table structure for table `USER`
--

CREATE TABLE `USER` (
    `user_id` varchar(20) NOT NULL,
    `email_id` varchar(100) NOT NULL,
    `password` varchar(255) NOT NULL,
    `rol` varchar(5) NOT NULL,
    `first_name` varchar(50) NOT NULL,
    `last_name` varchar(50) DEFAULT NULL,
    `mobile_no` varchar(20) DEFAULT NULL,
    `token` varchar(180) DEFAULT NULL,
    PRIMARY KEY (`user_id`)  -- Definir `user_id` como clave primaria.
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- AUTO_INCREMENT for table `PRODUCT`
--

ALTER TABLE `PRODUCT`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

COMMIT;
