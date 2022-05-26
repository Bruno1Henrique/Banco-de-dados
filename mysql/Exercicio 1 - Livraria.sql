/*CRIANDO O BANCO*/
CREATE DATABASE LIVRARIA;

/*CRIANDO A TABELA E OS CAMPOS*/
CREATE TABLE LIVROS(
	NOME_LIVRO VARCHAR(50),
	NOME_AUTOR VARCHAR(50),
	SEXO CHAR(1),
	NUMERO_PAGINAS VARCHAR(4),
	NOME_EDITORA VARCHAR(30),
	VALOR_LIVRO INT(5),
	UF_EDITORA CHAR(2),
	ANO_PUBLI CHAR(4)
);

/*INSERT PARA TESTES*/
INSERT INTO LIVROS VALUES ('COMO ENGANAR','SARZO','M','125','ATLAS','100.00','SC','2021');
INSERT INTO LIVROS VALUES ('COMO DIZER','SARZA','F','125','ATLAS','90.00','AC','2019');
INSERT INTO LIVROS VALUES ('KAZAK','HENRIQUE','F','125','ABRIL','120','SP','2008');
INSERT INTO LIVROS VALUES ('CHINA','ICO','F','125','ABRIL','200','SP','2010');
INSERT INTO LIVROS VALUES ('RIO','ZAP','F','125','ABRIL','400','RJ','2012');
INSERT INTO LIVROS VALUES ('YES','JOÃO','M','125','ABRIL','400','SP','2012');
INSERT INTO LIVROS VALUES ('NUNCA MAIS','JOSÉ','M','125','ABRIL','400','RJ','2012');



/*1 - TRAZENDO TODOS OS DADOS*/
SELECT * FROM LIVROS;

/*2 - Trazer o nome do livro e o nome da editora*/
SELECT NOME_LIVRO, NOME_EDITORA FROM LIVROS;

/*3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.*/
SELECT NOME_LIVRO FROM LIVROS WHERE SEXO = 'M';


/*4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo
feminino.*/
SELECT NOME_LIVRO, NUMERO_PAGINAS FROM LIVROS WHERE SEXO = 'F';

/*5 – Trazer os valores dos livros das editoras de São Paulo.*/
SELECT NOME_LIVRO, VALOR_LIVRO FROM LIVROS WHERE UF_EDITORA = 'SP'

/*6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São
Paulo ou Rio de Janeiro (Questão Desafio).*/
SELECT NOME_LIVRO FROM LIVROS WHERE SEXO = 'M' AND (UF_EDITORA = 'SP' OR  UF_EDITORA = 'RJ');


