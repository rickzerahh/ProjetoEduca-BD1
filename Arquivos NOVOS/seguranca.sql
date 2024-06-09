 
CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'admin_password';

 
CREATE USER 'read_only_user'@'localhost' IDENTIFIED BY 'readonly_password';

 
GRANT ALL PRIVILEGES ON beta.* TO 'admin_user'@'localhost';

 
GRANT SELECT ON beta.* TO 'read_only_user'@'localhost';

 
FLUSH PRIVILEGES;

CREATE TABLE Controle_Acesso (
    usuario VARCHAR(45) PRIMARY KEY,
    permissao VARCHAR(10) -- 'admin' ou 'leitura'
);
 
INSERT INTO Controle_Acesso (usuario, permissao) VALUES
('admin_user', 'admin'),
('read_only_user', 'leitura');

DELIMITER $$

CREATE TRIGGER VerificaPermissaoInsercaoLivro
BEFORE INSERT ON Livros
FOR EACH ROW
BEGIN
    DECLARE permissao_usuario VARCHAR(10);

  
    SELECT permissao INTO permissao_usuario
    FROM Controle_Acesso
    WHERE usuario = CURRENT_USER();

 
    IF permissao_usuario <> 'admin' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Permissão negada para inserir dados na tabela Livros';
    END IF;
END$$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER VerificaPermissaoAtualizacaoLivro
BEFORE UPDATE ON Livros
FOR EACH ROW
BEGIN
    DECLARE permissao_usuario VARCHAR(10);

    -- Obter a permissão do usuário
    SELECT permissao INTO permissao_usuario
    FROM Controle_Acesso
    WHERE usuario = CURRENT_USER();

    -- Verificar permissão
    IF permissao_usuario <> 'admin' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Permissão negada para atualizar dados na tabela Livros';
    END IF;
END$$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER VerificaPermissaoExclusaoLivro
BEFORE DELETE ON Livros
FOR EACH ROW
BEGIN
    DECLARE permissao_usuario VARCHAR(10);

    -- Obter a permissão do usuário
    SELECT permissao INTO permissao_usuario
    FROM Controle_Acesso
    WHERE usuario = CURRENT_USER();

    -- Verificar permissão
    IF permissao_usuario <> 'admin' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Permissão negada para excluir dados na tabela Livros';
    END IF;
END$$

DELIMITER ;


