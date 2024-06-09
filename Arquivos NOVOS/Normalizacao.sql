CREATE DATABASE beta;

USE beta;

CREATE TABLE Nacionalidade (
    ID_nascionalidade VARCHAR(2) PRIMARY KEY,
    Nascionalidade VARCHAR(45)
);

CREATE TABLE Autor (
    ID_autor INT PRIMARY KEY auto_increment,
    Nome_autor VARCHAR(45),
    Data_nasci_aut DATE,
    Sexo CHAR,
    ID_nascionalidade VARCHAR(2),
    FOREIGN KEY (ID_nascionalidade) REFERENCES Nacionalidade(ID_nascionalidade)
);

CREATE TABLE Livros (
    ISBN INT PRIMARY KEY auto_increment,
    Ano_lancamento INT,
    Edicao VARCHAR(45),
    Titulo_livro VARCHAR(45),
    Editora VARCHAR(45),
    Quant_para_venda INT,
    Quant_para_emprestimo INT,
    Preco DOUBLE,
    ID_autor INT,
    FOREIGN KEY (ID_autor) REFERENCES Autor(ID_autor)
);

CREATE TABLE Aluno (
    Matricula_aluno INT PRIMARY KEY auto_increment,
    Nome_aluno VARCHAR(45),
    Sobrenome_aluno VARCHAR(45),
    Email_aluno VARCHAR(45)
);

CREATE TABLE Disciplina (
    ID_disciplina INT PRIMARY KEY auto_increment,
    Nome_disciplina VARCHAR(45)
);

CREATE TABLE Professor (
    ID_professor INT PRIMARY KEY auto_increment,
    Nome_professor VARCHAR(45),
    Professor_especializacao VARCHAR(45),
    Telefone_professor INT
);

CREATE TABLE Pedido (
    ID_do_Pedido INT PRIMARY KEY auto_increment,
    Data DATE,
    ID_do_Cliente INT
);

CREATE TABLE Pedido_Produto (
    ID_do_Pedido INT,
    ISBN INT,
    Status_do_Produto VARCHAR(45),
    PRIMARY KEY (ID_do_Pedido, ISBN),
    FOREIGN KEY (ID_do_Pedido) REFERENCES Pedido(ID_do_Pedido),
    FOREIGN KEY (ISBN) REFERENCES Livros(ISBN)
);
