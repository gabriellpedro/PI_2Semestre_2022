DELIMITER $$
CREATE OR REPLACE PROCEDURE Procedure_View_User()
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
	END $$
DELIMITER ;
		

DELIMITER $$
CREATE OR REPLACE FUNCTION Update_Password(id INT, s VARCHAR(20)) RETURNS VARCHAR(20)
BEGIN
	UPDATE register
	SET PASSWORD = s
	WHERE id_register = id;
	
	RETURN s;
END $$
DELIMITER ;

 

DELIMITER $$
CREATE OR REPLACE TRIGGER TG_AFTER_INSERT AFTER INSERT 
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
 	END $$
 DELIMITER ;
 
 
