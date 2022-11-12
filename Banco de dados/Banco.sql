CREATE DATABASE books

use books

/*DROP TABLE books;
DROP TABLE stock;
DROP TABLE user;
DROP TABLE book_user;
*/


/*INSERT INTO books VALUES(3,3,3, "acao", "aaaaaa", "adwad", "abbba", 111);
INSERT INTO user VALUES(1111111111, "dawd", "dwadwad", "dwadwa", 1111, 21321321, "dwadwada");
INSERT INTO book_user(date_boor, date_devolution, id_book, cpf) VALUES(CURDATE(), CURDATE(), 3, 1111111111);

INSERT INTO books VALUES(4,4,4, "acao", "aaaaaa", "adwad", "abbba", 111);
INSERT INTO user VALUES(2222222222, "dawd", "dwadwad", "dwadwa", 1111, 21321321, "dwadwada");
INSERT INTO book_user(date_boor, date_devolution, id_book, cpf) VALUES(CURDATE(), CURDATE(), 4, 2222222222);
*/

create table books(
	id_book INT AUTO_INCREMENT UNIQUE PRIMARY KEY NOT NULL,
	isbn10 VARCHAR(10) UNIQUE,
	isbn13 VARCHAR(13) UNIQUE,
	category varchar(15),
	editora varchar(30),
	name varchar(40),
	creators varchar(40),
	pages INT
);


CREATE TABLE stock(
	id_stock INT AUTO_INCREMENT UNIQUE PRIMARY KEY NOT NULL,
	id_book INT NOT NULL,
	quantity INT NOT NULL,
	date_register DATE NOT NULL,
	date_update DATE NOT NULL,
	FOREIGN KEY (id_book) REFERENCES books(id_book)
);


create table user(
	cpf int(11) unique primary key,
	type_user varchar(15),
	name varchar(40),
	adress varchar(40),
	cep int,
	phone int,
	email varchar(50)
);


create table book_user(
	id_control int AUTO_INCREMENT UNIQUE PRIMARY KEY,
	date_boor date,
	date_devolution date,
	id_book int,
	cpf int(11),
	foreign key (id_book) references books(id_book),
	foreign key (cpf) references user(cpf)
);



CREATE TABLE donation(
	id int AUTO_INCREMENT UNIQUE PRIMARY KEY NOT NULL,
	isbn VARCHAR(80) NOT NULL UNIQUE,
	title VARCHAR(40) NOT NULL,
	city VARCHAR(30) NOT NULL,
	cep INT NOT NULL,
	phone VARCHAR(17) NOT NULL,
	email VARCHAR(50) NOT NULL,
	description TEXT(250) NOT NULL,
	category VARCHAR(30) NOT NULL,
	image CHAR NOT NULL,
	dateTime DATE NOT NULL,
	items JSON NOT NULL
);


CREATE TABLE login(
	id_user INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	email VARCHAR(50) NOT NULL,
	password VARCHAR(20) NOT NULL
);



CREATE TABLE register(
	id_register INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	user VARCHAR(20) NOT NULL,
	email VARCHAR(50) NOT NULL,
	password VARCHAR(20)
);


CREATE VIEW vw_register AS SELECT * FROM register;
CREATE VIEW vw_books AS SELECT id, isbn, title, description, category FROM donation;

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'boorbook';
GRANT ALL PRIVILEGES ON * . * TO 'admin'@'localhost' IDENTIFIED BY 'boorbook';

CREATE USER 'bookuser'@'localhost' IDENTIFIED BY 'boorbook';
GRANT SELECT ON * . * TO 'bookuser'@'localhost' IDENTIFIED BY 'boorbook';
