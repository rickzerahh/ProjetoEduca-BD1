USE beta;

INSERT INTO Aluno (Matricula_aluno, Nome_aluno, Sobrenome_aluno, Email_aluno)
VALUES (1001, 'João', 'Costa', 'joao.costa@email.com'),
       (1002, 'Maria', 'Frente', 'maria.frente@email.com'),
       (1003, 'João', 'Oliveira', 'joao@email.com'),
       (1004, 'Maria', 'Costa', 'maria@email.com'),
       (1005, 'Carlos', 'Pereira', 'carlos@email.com'),
       (1006, 'Juliana', 'Rodrigues', 'juliana@email.com'),
       (1007, 'Lucas', 'Martins', 'lucas@email.com'),
       (1008, 'Camila', 'Gomes', 'camila@email.com'),
       (1009, 'Fernando', 'Almeida', 'fernando@email.com'),
       (1010, 'Amanda', 'Ferreira', 'amanda@email.com'); 

INSERT INTO Disciplina (ID_disciplina, Nome_disciplina)
VALUES (1, 'Matemática'),
       (2, 'História'),
       (3, 'Português'),
       (4, 'Biologia'),
       (5, 'Química'),
       (6, 'Física'),
       (7, 'Geografia'),
       (8, 'Artes'),
       (9, 'Educação Física'),
       (10, 'Inglês'),
       (11, 'Filosofia'),
       (12, 'Sociologia'),
       (13, 'Espanhol'),
       (14, 'Literatura'),
       (15, 'Informática'),
       (16, 'Economia'),
       (17, 'Administração'),
       (18, 'Direito'),
       (19, 'Primeiros Socorros'),
       (20, 'Mecanica');

INSERT INTO Curso (ID_curso, Nome_curso)
VALUES (1, 'Engenharia Civil'),
       (2, 'Administração'),
       (3, 'Medicina'),
       (4, 'Direito'),
       (5, 'Ciência da Computação'),
       (6, 'Economia'),
       (7, 'Arquitetura'),
       (8, 'Psicologia'),
       (9, 'Marketing'),
       (10, 'Contabilidade');


INSERT INTO Autor (ID_autor, Nome_autor, Data_nasci_aut, Sexo, Nascionalidade, ID_nascionalidade)
VALUES (1, 'Lucas Rodolfo', '1985-05-12','M', 'Brasileiro', 'BRA'),
       (2, 'Assis Tiago', '1983-07-02','M', 'Brasileiro', 'BRA'),
	   (3, 'Sergio Murilo', '1947-01-01', 'M', 'Brasileiro', 'BRA'),
       (4, 'Diego Pinheiro', '1980-03-10', 'M', 'Brasileiro', 'BRA'),
       (5, 'Ana Eliza', '1970-10-18', 'F', 'Brasileiro', 'BRA'),
       (6, 'Pedro Henrique', '1987-08-22', 'M', 'Brasileiro', 'BRA'),
       (7, 'JK Rowling', '1960-06-22', 'F', 'Inglesa', 'ING'),
       (8, 'Marcos', '1985-03-03', 'M', 'Brasileiro', 'BRA');
       
       
INSERT INTO Livro (ISBN, Ano_lancamento, Edicao, Titulo_livro, Editora, Quant_para_venda, Quant_para_emprestimo, _Preco, Nome_autor)
VALUES (1, 2024, 7, 'Banco de Dados I', 'UNICAP', 10, 20, 300.00 , 'Lucas Rodolfo'), 	 
         (2, 2023, 5, 'Banco de Dados II', 'UNICAP', 10, 20, 200.00 , 'Lucas Rodolfo'), 	 
         (3, 2020, 10, 'Compiladores', 'UNICAP', 10, 20, 70.50 , 'Assis Tiago'), 	 
         (4, 2019, 4, 'Redes I', 'UNICAP', 10, 20, 80.50 , 'Pedro Henrique'), 	 
         (5, 2015, 12, 'MIPS minha vida', 'UNICAP', 2, 8, 500.70 , 'Sergio Murilo'), 	 
         (6, 2004, 15, 'Arquitetura dos computadores', 'UNICAP', 5, 10, 200.00 , 'Sergio Murilo'), 	 
         (7, 2016, 3, 'Engenharia de Software I', 'UNICAP', 8, 14, 200.00 , 'Diego Pinheiro'), 	 
         (8, 2017, 4, 'Engenharia de Software II', 'UNICAP', 5, 10, 150.00 , 'Diego Pinheiro'), 	 
         (9, 2019, 2, 'Engenharia de Software III', 'UNICAP', 3, 8, 100.00 , 'Diego Pinheiro'), 	 
         (10, 2020, 7, 'Estrutura de dados I', 'UNICAP', 10, 20, 170.00 , 'Ana Eliza'), 	 
         (11, 2020, 10, 'Estrutura de dados II', 'UNICAP', 10, 20, 170.00 , 'Ana Eliza'), 	 
         (12, 2021, 13, 'Harry Potter e a computacao', 'UNICAP', 30, 10, 50.00 , 'JK Rowling'), 	 
         (13, 2022, 6, 'Harry Potter e JAVA', 'UNICAP', 5, 5, 40.00 , 'JK Rowling'), 	 
         (14, 2016, 5, 'Harry Potter e Python', 'UNICAP', 8, 10, 60.00 , 'JK Rowling'), 	 
         (15, 2014, 2, 'Grafos', 'UNICAP', 2, 20, 700.00 , 'Marcos'), 	 
         (16, 2019, 2, 'Computacao Grafica', 'UNICAP', 7, 17, 200.00 , 'Marcos'); 	 
		
INSERT INTO Cliente (ID_do_Cliente, Nome, Email, Endereco, Senha)
VALUES (1010, 'João Silva', 'joao.silva@email.com', 'Rua A, N°123', '123456'),
	(1020, 'Maria Santos', 'maria.santos@email.com', 'Rua B, N°456', 'abcdef'),
	(1030, 'Pedro Oliveira', 'pedro.oliveira@email.com', 'Rua C, N°789', 'senha123'),
	(1040, 'Ana Souza', 'ana.souza@email.com', 'Rua D, N°1011', '987654'),
	(1050, 'Carlos Pereira', 'carlos.pereira@email.com', 'Rua E,N°1415', '654321'),
	(1060, 'Julia Costa', 'julia.costa@email.com', 'Rua F, N°1213', 'costa123'),
	(1070, 'Rafael Martins', 'rafael.martins@email.com', 'Rua G, N°1617', 'rafa789'),
	(1080, 'Camila Ferreira', 'camila.ferreira@email.com', 'Rua H, N°1819', 'ferreira456'),
	(1090, 'Lucas Rodrigues', 'lucas.rodrigues@email.com', 'Rua I, N°2021', '321senha'),
	(1100, 'Letícia Almeida', 'leticia.almeida@email.com', 'Rua J,N°2223', 'almeida789');

INSERT INTO Pagamento (Pedido_numero, Forma, Valor, Data)
VALUES (1, 'cartao de credito', 50.00, '2024-12-01'),
	(2, 'transferencia bancária', 80.00,'2024-04-06'),
	(3, 'cartao de debito', 30.00, '2024-08-10'),
	(4, 'payPal', 65.00, '2024-11-20'),
	(5, 'Pix', 90.00, '2024-03-07'),
    (6, 'cartao de credito', 50.00, '2024-12-01'),
	(7, 'transferencia bancária', 80.00,'2024-04-06'),
	(8, 'cartao de debito', 30.00, '2024-08-10'),
	(9, 'payPal', 65.00, '2024-11-20'),
	(10, 'Pix', 90.00, '2024-03-07');

INSERT INTO Funcionario (Funcao, ID_funcionario, Nome_funcionario, telefone_funcionario)
VALUES ('bibliotecario', 001, 'Pedro Souza', '1234-5678'),
	('atendente', 002, 'Ana Oliveira', '2345-6789'),
	('Estagiario', 003, 'Lucas Santos', '3456-7891'),
	('Zelador', 004, 'Maria Silva', '4567-8912'),
	('seguranca', 005, 'João Pereira', '5678-9123');

INSERT INTO Gerente (ID_gerente, Nome_gerente, telefone_gerente)
VALUES  ('006', 'Carlos Rodrigues', '6789-1234'),
		('201', 'Antonio Feliz', '99887-7667'),
        ('202', 'Sebastiao Triste', '99887-7668');

 
     INSERT INTO Biblioteca (Telefone_biblioteca)
VALUES (993477651);

INSERT INTO Professor (ID_professor, Nome_professor, Professor_especializacao, Telefone_professor)
VALUES (101, 'Professor Lucas', 'Matemática e Economia', 987654321),
       (102, 'Professor Carlos', 'História e Direito', 987654322),
       (103, 'Carlos Oliveira', 'Português', '3456789012'),
       (104, 'Ana Costa', 'Biologia e Primeiros Socorros', '4567890123'),
       (105, 'Pedro Pereira', 'Química', '5678901234'),
       (106, 'Juliana Rodrigues', 'Física e Mecanica', '6789012345'),
       (107, 'Lucas Martins', 'Geografia', '7890123456'),
       (108, 'Camila Gomes', 'Artes', '8901234567'),
       (109, 'Fernanda Almeida', 'Educação Física', '9012345678'),
       (110, 'Rafaela Ferreira', 'Inglês', '0123456789'),
       (111, 'Gustavo Santos', 'Filosofia', '1111111111'),
       (112, 'Amanda Oliveira', 'Sociologia', '2222222222'),
       (113, 'Marcelo Costa', 'Espanhol', '3333333333'),
       (114, 'Bruno Rodrigues', 'Literatura', '4444444444'),
       (115, 'Carolina Lima', 'Informática e Administração', '5555555555');

     INSERT INTO Ensina (fk_Disciplina_ID_disciplina, fk_Professor_ID_professor)
VALUES (1, 101),
       (16, 101),
       (2, 102),
       (18, 102),
       (3, 103),
       (4, 104),
       (19, 104),
       (5, 105),
       (6, 106),
       (20, 106),
       (7, 107),
       (8, 108),
       (9, 109),
       (10, 110),
       (11, 111),
       (12, 112),
       (13, 113),
       (14, 114),
       (15, 115),
       (17, 115);

INSERT INTO Contem (fk_Curso_ID_curso, fk_Disciplina_ID_disciplina)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10);
       
       INSERT INTO Pedido (ID_do_Pedido, Data, ID_do_Cliente, Status_do_Produto)
   VALUES (0001, '2024-04-01', 1010, 'Pendente - (1, Banco de Dados I)'),
	(0002, '2024-04-02', 1020, 'Pendente - (2, Banco de Dados II'),
	(0003, '2024-04-03', 1030, 'Entregue - (3, Compiladores)'),
	(0004, '2024-04-04', 1040, 'Pendente - (4, Redes I)'),
	(0005, '2024-04-05', 1050, 'Entregue - (5, MIPS minha vida)'),
	(0006, '2024-04-06', 1060, 'Pendente - (6, Arquitetura dos computadores)' ),
	(0007, '2024-04-07', 1070, 'Pendente - (7, Engenharia de Software I)'),
	(0008, '2024-04-08', 1080, 'Entregue - (8, Engenharia de Software II)'),
	(0009, '2024-04-09', 1090, 'Pendente - (9, Engenharia de Software III)'),
	(0010, '2024-04-10', 1100, 'Entregue - (10, Estrutura de dados I)');
    
       INSERT INTO para_emprestimo (fk_Livro_ISBN, fk_Aluno_Matricula_aluno, data_retirada, data_devolucao)
    VALUES 
    (1, 1007, '2024-04-25', '2024-05-10'),
    (10, 1002, '2024-04-26', '2024-05-12'),
    (8, 1010, '2024-04-27', '2024-05-15'),
    (4, 1009, '2024-04-28', '2024-05-20'),
    (16, 1005, '2024-04-29', '2024-05-25'),
    (9, 1008, '2024-04-30', '2024-05-30'),
    (7, 1001, '2024-05-01', '2024-06-05'),
    (3, 1006, '2024-05-02', '2024-06-10'),
    (5, 1004, '2024-05-03', '2024-06-15'),
    (12, 1003, '2024-05-04', '2024-06-20');

INSERT INTO NotaAlunoDisciplina (fk_Aluno_Matricula_aluno, fk_Disciplina_ID_disciplina, Periodo, Nota)
VALUES  (1001, 1, 2024.1, 8.0),  
        (1001, 2, 2024.1, 7.5), 
        (1001, 3, 2024.2, 9.0),  
        (1001, 4, 2017.1, 8.5),  
        (1001, 5, 2023.2, 7.0),  
        (1001, 6, 2017.2, 6.5),  
        (1001, 7, 2024.2, 9.5), 
        (1001, 8, 2024.2, 8.0),  
        (1001, 9, 2022.1, 7.5),  
        (1001, 10, 2020.2, 8.5), 
        (1001, 11, 2019.2, 5.0), 
        (1001, 12, 2022.2, 6.0), 
        (1001, 13, 2017.1, 4.0), 
        (1001, 14, 2024.2, 7.0), 
        (1001, 15, 2018.2, 8.0), 
        (1001, 16, 2016.2, 6.5), 
        (1001, 17, 2018.1, 8.5), 
        (1001, 18, 2023.2, 5.5), 
        (1001, 19, 2022.1, 7.5), 
        (1001, 20, 2022.1, 8.0); 

INSERT INTO NotaAlunoDisciplina (fk_Aluno_Matricula_aluno, fk_Disciplina_ID_disciplina, Periodo, Nota)
VALUES  (1002, 1, 2019.2, 7.0),  
        (1002, 2, 2018.1, 8.5),  
        (1002, 3, 2024.2, 8.0), 
        (1002, 4, 2020.1, 7.5), 
        (1002, 5, 2018.2, 9.0), 
        (1002, 6, 2018.1, 8.5), 
        (1002, 7, 2021.1, 7.0),  
        (1002, 8, 2023.2, 6.5),  
        (1002, 9, 2017.2, 8.0),  
        (1002, 10, 2019.2, 7.5), 
        (1002, 11, 2020.1, 6.5),
        (1002, 12, 2024.2, 7.0), 
        (1002, 13, 2017.1, 5.0), 
        (1002, 14, 2024.2, 8.0), 
        (1002, 15, 2016.1, 7.5), 
        (1002, 16, 2019.2, 7.0), 
        (1002, 17, 2023.2, 6.0), 
        (1002, 18, 2022.2, 4.5), 
        (1002, 19, 2021.1, 8.5), 
        (1002, 20, 2017.1, 7.0); 
        
INSERT INTO NotaAlunoDisciplina (fk_Aluno_Matricula_aluno, fk_Disciplina_ID_disciplina, Periodo, Nota)
VALUE   (1003, 1, 2024.1, 6.5),
        (1003, 2, 2017.2, 7.0),
        (1003, 3, 2016.2, 8.5),
        (1003, 4, 2023.1, 6.0),
        (1003, 5, 2023.2, 5.5),
        (1003, 6, 2022.2, 7.0),
        (1003, 7, 2022.2, 6.5),
        (1003, 8, 2022.2, 6.0),
        (1003, 9, 2022.1, 7.5),
        (1003, 10, 2023.1, 6.0),
        (1003, 11, 2021.2, 4.5),
        (1003, 12, 2022.1, 5.0),
        (1003, 13, 2022.2, 6.5),
        (1003, 14, 2023.1, 6.0),
        (1003, 15, 2023.2, 5.5),
        (1003, 16, 2022.1, 7.0),
        (1003, 17, 2024.1, 4.0),
        (1003, 18, 2022.1, 6.5),
        (1003, 19, 2022.2, 7.0),
        (1003, 20, 2023.2, 6.5);
        
INSERT INTO NotaAlunoDisciplina (fk_Aluno_Matricula_aluno, fk_Disciplina_ID_disciplina, Periodo, Nota)
VALUES  (1004, 1, 2016.2, 7.5),
        (1004, 2, 2016.2, 8.0),
        (1004, 3, 2016.2, 6.5),
        (1004, 4, 2017.1, 7.0),
        (1004, 5, 2017.2, 5.0),
        (1004, 6, 2018.1, 8.0),
        (1004, 7, 2016.1, 7.5),
        (1004, 8, 2017.2, 6.0),
        (1004, 9, 2018.1, 8.5),
        (1004, 10, 2017.2, 7.0),
        (1004, 11, 2016.2, 5.5),
        (1004, 12, 2016.1, 6.0),
        (1004, 13, 2017.2, 7.5),
        (1004, 14, 2017.1, 7.0),
        (1004, 15, 2018.1, 6.5),
        (1004, 16, 2018.2, 8.0),
        (1004, 17, 2017.2, 6.0),
        (1004, 18, 2017.1, 7.5),
        (1004, 19, 2017.2, 8.0),
        (1004, 20, 2016.1, 7.5);

INSERT INTO NotaAlunoDisciplina (fk_Aluno_Matricula_aluno, fk_Disciplina_ID_disciplina, Periodo, Nota)
VALUES  (1005, 1, 2020.2, 6.0),
        (1005, 2, 2021.1, 7.0),
        (1005, 3, 2020.2, 5.5),
        (1005, 4, 2019.2, 6.0),
        (1005, 5, 2021.2, 4.5),
        (1005, 6, 2020.2, 7.0),
        (1005, 7, 2019.1, 6.0),
        (1005, 8, 2020.2, 5.5),
        (1005, 9, 2019.1, 7.0),
        (1005, 10, 2021.1, 5.0),
        (1005, 11, 2021.2, 4.0),
        (1005, 12, 2021.2, 4.5),
        (1005, 13, 2020.2, 10.0),
        (1005, 14, 2019.2, 6.0),
        (1005, 15, 2019.1, 10.0),
        (1005, 16, 2020.2, 7.0),
        (1005, 17, 2021.1, 4.5),
        (1005, 18, 2019.2, 6.0),
        (1005, 19, 2018.2, 6.5),
        (1005, 20, 2022.1, 6.0);
        
INSERT INTO NotaAlunoDisciplina (fk_Aluno_Matricula_aluno, fk_Disciplina_ID_disciplina, Periodo, Nota)
VALUES  (1006, 1, 2017.2, 8.0),
        (1006, 2, 2018.1, 7.5),
        (1006, 3, 2017.1, 8.0),
        (1006, 4, 2018.2, 7.0),
        (1006, 5, 2018.2, 6.5),
        (1006, 6, 2017.2, 10.0),
        (1006, 7, 2019.1, 7.5),
        (1006, 8, 2019.1, 7.0),
        (1006, 9, 2018.2, 8.0),
        (1006, 10, 2017.2, 7.5),
        (1006, 11, 2018.1, 6.5),
        (1006, 12, 2019.1, 7.0),
        (1006, 13, 2019.2, 7.5),
        (1006, 14, 2017.1, 8.0),
        (1006, 15, 2017.2, 8.5),
        (1006, 16, 2022.2, 8.0),
        (1006, 17, 2019.2, 7.5),
        (1006, 18, 2019.1, 8.0),
        (1006, 19, 2018.2, 8.5),
        (1006, 20, 2018.2, 8.0);

INSERT INTO NotaAlunoDisciplina (fk_Aluno_Matricula_aluno, fk_Disciplina_ID_disciplina, Periodo, Nota)
VALUES  (1007, 1, 2024.2, 7.5),
        (1007, 2, 2024.2, 6.0),
        (1007, 3, 2024.2, 6.5),
        (1007, 4, 2024.1, 6.0),
        (1007, 5, 2024.2, 5.5),
        (1007, 6, 2024.1, 9.5), 
        (1007, 7, 2022.1, 6.0),
        (1007, 8, 2023.2, 6.5),
        (1007, 9, 2023.1, 7.0),
        (1007, 10, 2023.2, 6.5),
        (1007, 11, 2023.2, 5.0),
        (1007, 12, 2021.1, 5.5),
        (1007, 13, 2021.2, 6.0),
        (1007, 14, 2023.2, 6.5),
        (1007, 15, 2021.1, 6.0),
        (1007, 16, 2024.2, 7.5),
        (1007, 17, 2024.2, 5.5),
        (1007, 18, 2020.2, 6.0),
        (1007, 19, 2023.2, 7.0),
        (1007, 20, 2022.2, 6.5);
    
INSERT INTO NotaAlunoDisciplina (fk_Aluno_Matricula_aluno, fk_Disciplina_ID_disciplina, Periodo, Nota)
VALUES  (1008, 1, 2016.1, 7.0),
        (1008, 2, 2016.2, 6.5),
        (1008, 3, 2017.1, 7.0),
        (1008, 4, 2019.1, 6.5),
        (1008, 5, 2016.2, 6.0),
        (1008, 6, 2018.1, 9.0),
        (1008, 7, 2017.2, 7.0),
        (1008, 8, 2016.2, 7.5),
        (1008, 9, 2019.1, 8.0),
        (1008, 10, 2017.2, 7.5),
        (1008, 11, 2016.2, 6.5),
        (1008, 12, 2018.1, 7.0),
        (1008, 13, 2018.1, 7.5),
        (1008, 14, 2018.1, 8.0),
        (1008, 15, 2017.2, 8.5),
        (1008, 16, 2016.2, 8.0),
        (1008, 17, 2019.1, 7.5),
        (1008, 18, 2017.2, 8.0),
        (1008, 19, 2016.1, 8.5),
        (1008, 20, 2019.1, 8.0);

INSERT INTO NotaAlunoDisciplina (fk_Aluno_Matricula_aluno, fk_Disciplina_ID_disciplina, Periodo, Nota)
VALUES  (1009, 1, 2020.2, 8.0),
        (1009, 2, 2020.2, 7.5),
        (1009, 3, 2020.2, 8.0),
        (1009, 4, 2020.2, 7.0),
        (1009, 5, 2020.1, 6.5),
        (1009, 6, 2019.2, 10.0), 
        (1009, 7, 2019.2, 7.5),
        (1009, 8, 2021.1, 7.0),
        (1009, 9, 2021.1, 8.0),
        (1009, 10, 2020.2, 7.5),
        (1009, 11, 2018.2, 6.5),
        (1009, 12, 2018.2, 7.0),
        (1009, 13, 2023.1, 7.5),
        (1009, 14, 2023.1, 8.0),
        (1009, 15, 2020.2, 8.5),
        (1009, 16, 2020.2, 8.0),
        (1009, 17, 2021.1, 7.5),
        (1009, 18, 2021.1, 8.0),
        (1009, 19, 2021.2, 8.5),
        (1009, 20, 2020.2, 8.0);
        
INSERT INTO NotaAlunoDisciplina (fk_Aluno_Matricula_aluno, fk_Disciplina_ID_disciplina, Periodo, Nota)
VALUES  (1010, 1, 2024.2, 7.0),
        (1010, 2, 2024.2, 6.5),
        (1010, 3, 2024.2, 7.0),
        (1010, 4, 2023.1, 6.5),
        (1010, 5, 2023.1, 6.0),
        (1010, 6, 2023.1, 9.0),
        (1010, 7, 2022.2, 7.0),
        (1010, 8, 2022.2, 7.5),
        (1010, 9, 2022.2, 3.0),
        (1010, 10, 2024.1, 10.0),
        (1010, 11, 2024.1, 6.5),
        (1010, 12, 2024.1, 7.0),
        (1010, 13, 2023.2, 7.5),
        (1010, 14, 2023.2, 8.0),
        (1010, 15, 2024.1, 8.5),
        (1010, 16, 2024.1, 8.0),
        (1010, 17, 2022.2, 7.5),
        (1010, 18, 2022.2, 8.0),
        (1010, 19, 2019.1, 8.5),
        (1010, 20, 2019.1, 8.0);

INSERT INTO Compra (fk_Pedido_ID_do_Pedido, fk_Livro_ISBN)
VALUES  ( 1, 1),
		(2, 2),
	    (3, 3),
	    (4, 4),
	    (5, 5),
	    (6, 6),
	    (7, 7),
	    (8, 8),
	    (9, 9),
	    (10, 10);
	
    INSERT INTO Escreve (fk_Livro_ISBN, fk_autor_ID_autor)
    VALUES (1, 1),
			(2, 1),
            (3,2),
            (4, 6),
            (5, 3),
            (6, 3),
            (7, 4),
            (8, 4),
            (9, 4),
            (10, 5),
            (11, 5),
            (12, 7),
            (13, 7),
            (14, 7),
            (15, 8),
            (16, 8);
            
            
INSERT INTO realiza (fk_Cliente_ID_do_Cliente, fk_Pedido_ID_do_Pedido)
VALUES (1010, 1),
	   (1020,2),
	   (1030,3),
	   (1040,4),
	   (1050,5),
	   (1060,6),
	   (1070,7),
	   (1080,8),
	   (1090,9),
	   (1100,10);

INSERT INTO efetua (fk_Pagamento_Pedido_numero, fk_Cliente_ID_do_Cliente)
VALUES (1,1010),
	   (2,1020),
	   (3,1030),
	   (4,1040),
	   (5,1050),
	   (6,1060),
	   (7,1070),
	   (8,1080),
	   (9,1090),
	   (10,1100);
       
       -- cliente

INSERT INTO Cliente (ID_do_Cliente, Nome, Email, Endereco, Senha)
VALUES (1110, 'Mariana Oliveira', 'mariana.oliveira@email.com', 'Rua K, N°2425', 'oliveira123');

UPDATE Cliente
SET Nome = 'Mariana Oliveira Santos'
WHERE ID_do_Cliente = 1110;

DELETE FROM Cliente
WHERE ID_do_Cliente = 1110;

-- livro

INSERT INTO Livro (ISBN, Ano_lancamento, Edicao, Titulo_livro, Editora, Quant_para_venda, Quant_para_emprestimo, _Preco, Nome_autor)
VALUES (17, 2023, 8, 'Estrutura de Dados I', 'UNICAP', 15, 25, 250.00, 'Lucas Rodolfo');

UPDATE Livro
SET _Preco = 280.00
WHERE ISBN = 17;

DELETE FROM Livro
WHERE ISBN = 17;

-- autor

INSERT INTO Autor (ID_autor, Nome_autor, Data_nasci_aut, Sexo, Nascionalidade, ID_nascionalidade)
VALUES (9, 'Isabela Ferreira', '1990-09-15', 'F', 'Brasileiro', 'BRA');

UPDATE Autor
SET Nome_autor = 'Isabela Ferreira Silva'
WHERE ID_autor = 9;

DELETE FROM Autor
WHERE ID_autor = 9;


            