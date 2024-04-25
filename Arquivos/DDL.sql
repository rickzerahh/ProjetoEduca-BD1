DROP SCHEMA IF EXISTS beta;
CREATE SCHEMA beta;
USE beta;

/* Lógico_1: */

CREATE TABLE Livro (
    ISBN INT PRIMARY KEY,
    Ano_lancamento INT,
    Edicao INT,
    Titulo_livro VARCHAR(45),
    Editora VARCHAR(45),
    Quant_para_venda INT,
    Quant_para_emprestimo INT,
    _Preco DOUBLE,
    Nome_autor VARCHAR(45)    
);

CREATE TABLE Biblioteca (
    Telefone_biblioteca INT
);

CREATE TABLE Autor (
    ID_autor INT PRIMARY KEY,
    Nome_autor VARCHAR(45),
    Data_nasci_aut DATE,
    Sexo CHAR,
    Nascionalidade VARCHAR(45),
    ID_nascionalidade VARCHAR(3)
);

CREATE TABLE Aluno (
    Matricula_aluno INT PRIMARY KEY,
    Nome_aluno VARCHAR(45),
    Sobrenome_aluno VARCHAR(45),
    Email_aluno VARCHAR(45)
);

CREATE TABLE Disciplina (
    ID_disciplina INT PRIMARY KEY,
    Nome_disciplina VARCHAR(45)
   
);

CREATE TABLE Curso (
    ID_curso INT PRIMARY KEY,
    Nome_curso VARCHAR(45)
);

CREATE TABLE Professor (
    ID_professor INT PRIMARY KEY,
    Nome_professor VARCHAR(45),
    Professor_especializacao VARCHAR(45),
    Telefone_professor VARCHAR(45)
);

CREATE TABLE Pedido (
    ID_do_Pedido INT PRIMARY KEY,
    Data DATE,
    ID_do_Cliente INT,
    Status_do_Produto VARCHAR(45)
);

CREATE TABLE Cliente (
    ID_do_Cliente INT PRIMARY KEY,
    Senha VARCHAR(45),
    Email VARCHAR(45),
    Endereco VARCHAR(45),
    Nome VARCHAR(45)
);

CREATE TABLE Pagamento (
	Pedido_numero INT PRIMARY KEY,
    Forma VARCHAR(45) ,
    Valor DOUBLE,
    Data DATE
    );

CREATE TABLE Funcionario (
    ID_funcionario INT PRIMARY KEY,
    Funcao VARCHAR(45),
    Nome_funcionario VARCHAR(45),
    Telefone_funcionario VARCHAR(45)
);

CREATE TABLE Gerente (
    ID_gerente INT PRIMARY KEY,
    Nome_gerente VARCHAR(45),
    Telefone_gerente VARCHAR(45)
);

CREATE TABLE escreve (
    fk_Livro_ISBN INT,
    fk_Autor_ID_autor INT
);

CREATE TABLE Compra (
    fk_Pedido_ID_do_Pedido INT,
    fk_Livro_ISBN INT
);

CREATE TABLE NotaAlunoDisciplina (
    fk_Aluno_Matricula_aluno INT,
    fk_Disciplina_ID_disciplina INT,
    Periodo VARCHAR(6),
    Nota DOUBLE
);

CREATE TABLE Contem (
    fk_Curso_ID_curso INT,
    fk_Disciplina_ID_disciplina INT
);

CREATE TABLE Ensina (
    fk_Disciplina_ID_disciplina INT,
    fk_Professor_ID_professor INT
);

CREATE TABLE Realiza (
    fk_Cliente_ID_do_Cliente INT,
    fk_Pedido_ID_do_Pedido INT
);

CREATE TABLE Efetua (
    fk_Pagamento_Pedido_numero INT,
    fk_Cliente_ID_do_Cliente INT
);

CREATE TABLE Supervisiona (
    fk_Funcionario_ID_funcionario INT,
    fk_Gerente_ID_gerente INT
);

CREATE TABLE Trabalha (
    fk_Funcionario_ID_funcionario INT
);

CREATE TABLE Para_emprestimo (
    fk_Livro_ISBN INT,
    fk_Aluno_Matricula_aluno INT,
    data_retirada DATE,
    data_devolucao DATE
);
 
ALTER TABLE escreve ADD CONSTRAINT FK_escreve_1
    FOREIGN KEY (fk_Livro_ISBN)
    REFERENCES Livro (ISBN)
    ON DELETE SET NULL;
 
ALTER TABLE escreve ADD CONSTRAINT FK_escreve_2
    FOREIGN KEY (fk_Autor_ID_autor)
    REFERENCES Autor (ID_autor)
    ON DELETE SET NULL;
 
ALTER TABLE Compra ADD CONSTRAINT FK_Compra_1
    FOREIGN KEY (fk_Pedido_ID_do_Pedido)
    REFERENCES Pedido (ID_do_Pedido)
    ON DELETE RESTRICT;
 
ALTER TABLE Compra ADD CONSTRAINT FK_Compra_2
    FOREIGN KEY (fk_Livro_ISBN)
    REFERENCES Livro (ISBN)
    ON DELETE SET NULL;
 
ALTER TABLE NotaAlunoDisciplina ADD CONSTRAINT FK_NotaAlunoDisciplina_2
    FOREIGN KEY (fk_Aluno_Matricula_aluno)
    REFERENCES Aluno (Matricula_aluno)
    ON DELETE SET NULL;
 
ALTER TABLE NotaAlunoDisciplina ADD CONSTRAINT FK_NotaAlunoDisciplina_3
    FOREIGN KEY (fk_Disciplina_ID_disciplina)
    REFERENCES Disciplina (ID_disciplina)
    ON DELETE SET NULL;
 
ALTER TABLE Contem ADD CONSTRAINT FK_Contem_1
    FOREIGN KEY (fk_Curso_ID_curso)
    REFERENCES Curso (ID_curso)
    ON DELETE RESTRICT;
 
ALTER TABLE Contem ADD CONSTRAINT FK_Contem_2
    FOREIGN KEY (fk_Disciplina_ID_disciplina)
    REFERENCES Disciplina (ID_disciplina)
    ON DELETE SET NULL;
 
ALTER TABLE Ensina ADD CONSTRAINT FK_Ensina_1
    FOREIGN KEY (fk_Disciplina_ID_disciplina)
    REFERENCES Disciplina (ID_disciplina)
    ON DELETE SET NULL;
 
ALTER TABLE Ensina ADD CONSTRAINT FK_Ensina_2
    FOREIGN KEY (fk_Professor_ID_professor)
    REFERENCES Professor (ID_professor)
    ON DELETE SET NULL;
 
ALTER TABLE Realiza ADD CONSTRAINT FK_Realiza_1
    FOREIGN KEY (fk_Cliente_ID_do_Cliente)
    REFERENCES Cliente (ID_do_Cliente)
    ON DELETE RESTRICT;
 
ALTER TABLE Realiza ADD CONSTRAINT FK_Realiza_2
    FOREIGN KEY (fk_Pedido_ID_do_Pedido)
    REFERENCES Pedido (ID_do_Pedido)
    ON DELETE SET NULL;
 
ALTER TABLE Efetua ADD CONSTRAINT FK_Efetua_1
    FOREIGN KEY (fk_Pagamento_Pedido_numero)
    REFERENCES Pagamento (Pedido_numero)
    ON DELETE RESTRICT;
 
ALTER TABLE Efetua ADD CONSTRAINT FK_Efetua_2
    FOREIGN KEY (fk_Cliente_ID_do_Cliente)
    REFERENCES Cliente (ID_do_Cliente)
    ON DELETE RESTRICT;
 
ALTER TABLE Supervisiona ADD CONSTRAINT FK_Supervisiona_1
    FOREIGN KEY (fk_Funcionario_ID_funcionario)
    REFERENCES Funcionario (ID_funcionario)
    ON DELETE SET NULL;
 
ALTER TABLE Supervisiona ADD CONSTRAINT FK_Supervisiona_2
    FOREIGN KEY (fk_Gerente_ID_gerente)
    REFERENCES Gerente (ID_gerente)
    ON DELETE SET NULL;
 
ALTER TABLE Trabalha ADD CONSTRAINT FK_Trabalha_1
    FOREIGN KEY (fk_Funcionario_ID_funcionario)
    REFERENCES Funcionario (ID_funcionario)
    ON DELETE SET NULL;
 
ALTER TABLE Para_emprestimo ADD CONSTRAINT FK_Para_emprestimo_1
    FOREIGN KEY (fk_Livro_ISBN)
    REFERENCES Livro (ISBN)
    ON DELETE SET NULL;
 
ALTER TABLE Para_emprestimo ADD CONSTRAINT FK_Para_emprestimo_2
    FOREIGN KEY (fk_Aluno_Matricula_aluno)
    REFERENCES Aluno (Matricula_aluno)
    ON DELETE SET NULL;