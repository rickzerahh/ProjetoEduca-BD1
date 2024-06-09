CREATE TRIGGER AtualizaQuantidadeLivroAposPedido
AFTER INSERT ON Pedido
FOR EACH ROW
BEGIN
    DECLARE isbn INT;
    DECLARE quant_venda INT;

   -- Diminui a quantidade de livros quando um pedido é feito
    SET isbn = CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(NEW.Status_do_Produto, '(', -1), ',', 1) AS UNSIGNED);

    UPDATE Livros
    SET Quant_para_venda = Quant_para_venda - 1
    WHERE ISBN = isbn;
END$$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER VerificaDisponibilidadeLivroAntesPedido
BEFORE INSERT ON Pedido
FOR EACH ROW
BEGIN
    DECLARE isbn INT;
    DECLARE quant_venda INT;

    -- Extrai o ISBN do livro do Status_do_Produto do pedido
    SET isbn = CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(NEW.Status_do_Produto, '(', -1), ',', 1) AS UNSIGNED);

 
    SELECT Quant_para_venda INTO quant_venda
    FROM Livros
    WHERE ISBN = isbn;

 
    IF quant_venda <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Livro indisponível para venda';
    END IF;
END$$

DELIMITER ;







