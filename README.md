# Projeto "EducaLivros Online - Banco de Dados"

### Descrição:

Este repositório contém o projeto de banco de dados desenvolvido pela equipe de desenvolvedores contratada pela EducaLivros Online, uma renomada escola-livraria online. O objetivo do projeto é aprimorar a eficiência das operações da empresa e proporcionar uma experiência superior aos clientes e alunos.

### Conteúdo:

## Modelo DER  (ANTIGO) :
  
  ![ModeloDER](https://github.com/rickzerahh/ProjetoEduca-BD1/assets/91620783/85684d5b-b56e-4a04-a3a7-2aa7562965ce)

## Modelo DER  (NOVO) :

  ![DER](https://github.com/rickzerahh/ProjetoEduca-BD1/assets/91620783/a68d5c74-9a22-4e3a-a170-b7fa10d5eef7)

## Modelo Lógico (ANTIGO):
  
  ![ModeloLógico](https://github.com/rickzerahh/ProjetoEduca-BD1/assets/91620783/3aa32bbd-c67b-4fac-ab15-a0c7bffd40a5)

## Modelo Lógico (NOVO):  

  ![logico](https://github.com/rickzerahh/ProjetoEduca-BD1/assets/91620783/c8d52732-fc5c-444f-bcca-39fa3061a2cd)

### Alterações:

Recentemente, fizemos uma alteração interessante no "easter egg" do nosso projeto de banco de dados. Antes, apenas os alunos tinham a possibilidade de comprar livros, tornando-se clientes através deste processo. Agora, expandimos essa oportunidade, permitindo que qualquer pessoa de fora também possa comprar livros. No entanto, o benefício de pegar livros emprestados permanece exclusivo para os alunos.

Essa mudança amplia o acesso ao conhecimento, permitindo que mais pessoas possam adquirir livros, enquanto ainda preserva benefícios especiais para os alunos, como o empréstimo de livros, reforçando o apoio ao seu aprendizado acadêmico.

Uma das alterações foi a exclusão da entidade "Gerente". Agora, todos os gerentes são tratados como funcionários de modo geral, o que nos permite ter uma estrutura mais enxuta e integrada para todos os funcionários da biblioteca.

Outra modificação importante foi na funcionalidade de matrícula em disciplinas. Anteriormente, alunos que reprovavam em uma matéria não podiam se matricular novamente nela para uma nova tentativa. Agora, essa restrição foi removida, permitindo que alunos possam se reinscrever em disciplinas nas quais não obtiveram sucesso anteriormente. Isso enfatiza nosso compromisso em apoiar o progresso contínuo e o aprendizado dos alunos, dando-lhes mais oportunidades para superar desafios acadêmicos e alcançar seus objetivos educacionais.

#### Novas Perguntas:

1.	 Como podemos saber quais livros o aluno pegou emprestado?

2.	 Como podemos visualizar o estoque da biblioteca (livros disponíveis para empréstimo e para compra)?

3.	 Como podemos visualizar as notas de um aluno em determinada disciplina?

4.	 Como podemos saber a data que o empréstimo foi feito e a data em que o livro foi devolvido, para que os prazos sejam respeitados?

5.	Como podemos ver quais livros são mais caros e quais são os mais baratos?

#### Relacionamentos Indentificados: 

O modelo abrange uma série de relacionamentos entre as entidades, como:

- Professores que ensinam disciplinas.
- Cursos que contêm disciplinas.
- Alunos que recebem notas em disciplinas.
- Alunos que realizam empréstimos de livros.
- Livros associados a uma biblioteca.
- Funcionários que trabalham em bibliotecas.
- Funcionários que são supervisionados por gerentes.
- Livros que são escritos por autores.
- Livros que são comprados por clientes através de pedidos.
- Clientes que realizam pagamentos.
  
### Códigos DML + DLL + DQL: 

- Podem ser encontrados dentro da Pasta Arquivos NOVOS

### Contribuidores:

_Gustavo Melo_,
_Henrique Azevedo_,
_Mateus Leão_ e
_Ricardo André_.
