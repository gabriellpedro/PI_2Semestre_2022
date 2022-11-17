/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para books
CREATE DATABASE IF NOT EXISTS `books` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `books`;

-- Copiando estrutura para tabela books.books
CREATE TABLE IF NOT EXISTS `books` (
  `id_book` int(11) NOT NULL AUTO_INCREMENT,
  `isbn10` varchar(10) DEFAULT NULL,
  `isbn13` varchar(13) DEFAULT NULL,
  `category` varchar(15) DEFAULT NULL,
  `editora` varchar(30) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `creators` varchar(40) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_book`),
  UNIQUE KEY `isbn10` (`isbn10`),
  UNIQUE KEY `isbn13` (`isbn13`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela books.book_user
CREATE TABLE IF NOT EXISTS `book_user` (
  `id_control` int(11) NOT NULL AUTO_INCREMENT,
  `date_boor` date DEFAULT NULL,
  `date_devolution` date DEFAULT NULL,
  `id_book` int(11) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_control`),
  KEY `id_book` (`id_book`),
  KEY `cpf` (`cpf`),
  CONSTRAINT `book_user_ibfk_1` FOREIGN KEY (`id_book`) REFERENCES `books` (`id_book`),
  CONSTRAINT `book_user_ibfk_2` FOREIGN KEY (`cpf`) REFERENCES `user` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela books.donation
CREATE TABLE IF NOT EXISTS `donation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_control` int(11) NOT NULL,
  `isbn` varchar(80) NOT NULL,
  `title` varchar(40) NOT NULL,
  `city` varchar(30) NOT NULL,
  `cep` int(11) NOT NULL,
  `phone` varchar(17) NOT NULL,
  `email` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(30) NOT NULL,
  `image` char(1) NOT NULL,
  `dateTime` date NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`items`)),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_control` (`id_control`),
  UNIQUE KEY `isbn` (`isbn`),
  CONSTRAINT `donation_ibfk_1` FOREIGN KEY (`id_control`) REFERENCES `book_user` (`id_control`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela books.login
CREATE TABLE IF NOT EXISTS `login` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para procedure books.Procedure_View_User
DELIMITER //
CREATE PROCEDURE `Procedure_View_User`()
BEGIN
	SELECT 
		cpf AS CPF,
		name AS Nome,
		type_user AS TipoUsuario,
		adress AS Endereco,
		phone AS Contato,
		email AS Email
	FROM 
		user;
	END//
DELIMITER ;

-- Copiando estrutura para tabela books.register
CREATE TABLE IF NOT EXISTS `register` (
  `id_register` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_register`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela books.stock
CREATE TABLE IF NOT EXISTS `stock` (
  `id_stock` int(11) NOT NULL AUTO_INCREMENT,
  `id_book` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_register` date NOT NULL,
  `date_update` date NOT NULL,
  PRIMARY KEY (`id_stock`),
  KEY `id_book` (`id_book`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`id_book`) REFERENCES `books` (`id_book`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para função books.Update_Password
DELIMITER //
CREATE FUNCTION `Update_Password`(id INT, s VARCHAR(20)) RETURNS varchar(20) CHARSET utf8mb4
BEGIN
	UPDATE register
	SET PASSWORD = s
	WHERE id_register = id;
	
	RETURN s;
END//
DELIMITER ;

-- Copiando estrutura para tabela books.user
CREATE TABLE IF NOT EXISTS `user` (
  `cpf` int(11) NOT NULL,
  `type_user` varchar(15) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `adress` varchar(40) DEFAULT NULL,
  `cep` int(11) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para trigger books.TG_AFTER_INSERT
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER TG_AFTER_INSERT AFTER INSERT 
	ON book_user
	FOR EACH ROW
	BEGIN
		DECLARE contador INT;
		SELECT COUNT(*) INTO contador FROM stock WHERE id_book = NEW.id_book;
		IF contador = 0 THEN
			INSERT INTO stock(id_book, quantity, date_register, date_update) 
			VALUES(NEW.id_book, 1, CURDATE(), CURDATE());
		ELSEIF contador > 0 THEN
			UPDATE stock
			SET quantity = quantity + 1
			WHERE id_book = NEW.id_book;
		END IF; 
 	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
