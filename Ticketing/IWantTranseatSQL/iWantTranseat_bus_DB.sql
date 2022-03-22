CREATE DATABASE `iwanttranseat_db`;

USE `iwanttranseat_db`;

/* Drivers Table */
CREATE TABLE `drivers` (
	`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	`driverFirstname` VARCHAR(20) NOT NULL,
	`driverLastname` VARCHAR(20) NOT NULL,
	`driverStatus` VARCHAR(20) NOT NULL,
	`isDeleted` BOOLEAN DEFAULT false
);

/* Schedule Table */
CREATE TABLE `schedule` (
	`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	`travel_from` VARCHAR(20) NOT NULL,
	`travel_to` VARCHAR(20) NOT NULL,
	`travel_date` DATE NOT NULL,
	`departure` TIME NOT NULL,
	`arrival` TIME NOT NULL,
	`fare` int NOT NULL,
	`isDeleted` BOOLEAN DEFAULT false
);

/* PassengerDetails Table */
CREATE TABLE `passenger`(
	`user_id` INT NOT NULL AUTO_INCREMENT,
	`firstname` VARCHAR(20) NOT NULL,
	`lastname` VARCHAR(20),
	`email` VARCHAR(30),
	`phone_number` VARCHAR(20), 
	`age` VARCHAR(3),
	`password` VARCHAR(20),
	`birth_date` VARCHAR(8),
	`isDeleted` BOOLEAN,
	`date_created` DATE,
	PRIMARY KEY (user_id)
);

/* BusDetails Table */
CREATE TABLE `bus`(
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `bus_name` VARCHAR (15),
    `bus_type` VARCHAR (15),
    `bus_seats` VARCHAR (2),
    `bus_number` VARCHAR (6),
    `plate_number` VARCHAR (8),
	`date_created` TIMESTAMP,
    `date_modified` TIMESTAMP,
    `is_deleted` BOOLEAN
);

SELECT * FROM `bus`;
SELECT * FROM `bus` WHERE `is_deleted` <> 1;


/* ConductorDetails Table */
CREATE TABLE `conductor` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `conductor_firstname` VARCHAR (15),
    `conductor_lastname` VARCHAR (15),
    `conductor_email` VARCHAR (30),
    `conductor_birthday` DATE,
    `contact_number`  VARCHAR (13),
    `date_hired` DATE,
    `date_created` TIMESTAMP,
    `date_modified` TIMESTAMP,
    `is_deleted` BOOLEAN
);

SELECT * FROM `conductor`;
SELECT * FROM `conductor` WHERE `is_deleted` <> 1;


/* Conductor and Driver Table*/
CREATE TABLE `bus_personnel` (
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`firstname` VARCHAR(20) NOT NULL,
`lastname` VARCHAR(20) NOT NULL,
`position` VARCHAR(20) NOT NULL,
`status` VARCHAR(20) NOT NULL,
`isDeleted` BOOLEAN
);

