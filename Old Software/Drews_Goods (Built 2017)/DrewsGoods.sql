/*
	Assignment:			OOP
	Author:				Drew Gillies
	Date of creation:	03-03-2019
	Filename:			DrewsGoods.sql
	Version:			0.01

	 ___________________________________________________________________________________________________________________
	|													CHANGELOG														|
	|	V0.01		01-03-2019		Initial creation																	|
	|___________________________________________________________________________________________________________________|

*/

USE MASTER
GO

if db_id('DrewsGoods') IS NOT NULL
	DROP DATABASE DrewsGoods


CREATE DATABASE DrewsGoods
GO

USE DrewsGoods
GO


CREATE TABLE accounts (
	id					INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	username			VARCHAR(30) NOT NULL UNIQUE,
	passwordHash		CHAR(32) NOT NULL,
);

CREATE TABLE items (
	id					INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	name				VARCHAR(100) NOT NULL UNIQUE,
	stock				INT NOT NULL,
	price				MONEY NOT NULL
);

/* INSERT queries */
INSERT INTO accounts(username, passwordHash)
	VALUES 
		('Drew', '246e5c761bbdcbe49cdfd53202943351'),
		('admin', '21232f297a57a5a743894a0e4a801fc3');

INSERT INTO items(name, stock, price)
	VALUES 
		('Test item 1', 69, 69.00),
		('MyBPC Merch', 9999, 420.00);
