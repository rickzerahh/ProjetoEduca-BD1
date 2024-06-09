DELIMITER //

CREATE PROCEDURE CalcularTotalVendasLivro (
    IN isbn_livro VARCHAR(13),
    OUT total_vendas DOUBLE
)
BEGIN
    SELECT qtd_venda * valor_livro
    INTO total_vendas
    FROM Livro
    WHERE ISBN = isbn_livro;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE InserirNovoLivro (
    IN novo_isbn VARCHAR(13),
    IN novo_ano_lancamento DATE,
    IN nova_edicao INT,
    IN novo_titulo INT,
    IN nova_editora INT,
    IN nova_qtd_venda DOUBLE,
    IN nova_qtd_emprestimo DOUBLE,
    IN novo_autor INT,
    IN novo_valor DOUBLE,
    IN novo_tipo INT,
    IN nova_biblioteca VARCHAR,
    OUT isbn_inserido VARCHAR(13)
)
BEGIN
    INSERT INTO Livro (ISBN, ano_lancamento, edicao, titulo_livro, editora, qtd_venda, qtd_emprestimo, autor, valor_livro, Livro_TIPO, fk_Biblioteca_ID_biblioteca)
    VALUES (novo_isbn, novo_ano_lancamento, nova_edicao, novo_titulo, nova_editora, nova_qtd_venda, nova_qtd_emprestimo, novo_autor, novo_valor, novo_tipo, nova_biblioteca);
    
    SET isbn_inserido = novo_isbn;
END //

DELIMITER ;
