CREATE TABLE Nacionalidade (
    ID_nacionalidade VARCHAR(2) PRIMARY KEY,
    Nacionalidade VARCHAR(45)
);

CREATE TABLE Autor (
    ID_autor INT PRIMARY KEY,
    Nome_autor VARCHAR(45),
    Data_nasci_aut DATE,
    Sexo CHAR,
    ID_nacionalidade VARCHAR(2),
    FOREIGN KEY (ID_nacionalidade) REFERENCES Nacionalidade(ID_nacionalidade)
);

CREATE TABLE Livro (
    ISBN INT PRIMARY KEY,
    Ano_lancamento INT,
    Edicao VARCHAR(45),
    Titulo_livro VARCHAR(45),
    Editora VARCHAR(45),
    Preco DOUBLE,
    Livro_TIPO VARCHAR(45)
);

CREATE TABLE Biblioteca (
    ID_biblioteca INT PRIMARY KEY AUTO_INCREMENT,
    Telefone_biblioteca INT
);

CREATE TABLE Aluno (
    Matricula_aluno INT PRIMARY KEY,
    Nome_aluno VARCHAR(45),
    Sobrenome_aluno VARCHAR(45),
    Email_aluno VARCHAR(45)
);

CREATE TABLE Disciplina (
    ID_disciplina INT PRIMARY KEY,
    Nome_disciplina VARCHAR(45),
    Nota_disciplina DOUBLE
);

CREATE TABLE Curso (
    ID_curso INT PRIMARY KEY,
    Nome_curso VARCHAR(45)
);

CREATE TABLE Professor (
    ID_professor INT PRIMARY KEY,
    Nome_professor VARCHAR(45),
    Professor_especializacao VARCHAR(45),
    Telefone_professor INT
);

CREATE TABLE Pedido (
    ID_do_Pedido INT PRIMARY KEY,
    Data DATE,
    ID_do_Cliente INT,
    Status_do_Produto VARCHAR(45),
    FOREIGN KEY (ID_do_Cliente) REFERENCES Cliente(ID_do_Cliente)
);

CREATE TABLE Cliente (
    ID_do_Cliente INT PRIMARY KEY,
    Senha INT,
    Email VARCHAR(45),
    Endereco VARCHAR(45),
    Nome VARCHAR(45)
);

CREATE TABLE Pagamento (
    ID_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    Forma VARCHAR(45),
    Valor DOUBLE,
    Data DATE
);

CREATE TABLE Funcionario (
    Funcao VARCHAR(45),
    ID_funcionario INT PRIMARY KEY,
    Nome_funcionario VARCHAR(45),
    Telefone_funcionario INT
);

CREATE TABLE Gerente (
    ID_gerente INT PRIMARY KEY,
    Nome_gerente VARCHAR(45),
    Telefone_gerente INT
);

CREATE TABLE escreve (
    fk_Livro_ISBN INT,
    fk_Autor_ID_autor INT,
    FOREIGN KEY (fk_Livro_ISBN) REFERENCES Livro(ISBN) ON DELETE SET NULL,
    FOREIGN KEY (fk_Autor_ID_autor) REFERENCES Autor(ID_autor) ON DELETE SET NULL
);
