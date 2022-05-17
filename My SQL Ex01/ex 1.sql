CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_colaboradores( -- Criar a tabela e atributos

id BIGINT AUTO_INCREMENT,
PRIMARY KEY (id),
nome VARCHAR(255),
cargo VARCHAR(255),
salario FLOAT(9,2),
setor VARCHAR(255)

);

SELECT * FROM tb_colaboradores; -- ver a tabela 


INSERT INTO tb_colaboradores(nome, cargo,salario,setor) -- Selecionando a tabela para inserir valores
VALUES("Lineu", "DEV jr", 4780.00, "Desenvolvedor"); /* Inserindo valores na tabela */

INSERT INTO tb_colaboradores(nome, cargo,salario,setor)
VALUES("Adilson", "DEV jr", 5200.00, "Desenvolvedor");

INSERT INTO tb_colaboradores(nome, cargo,salario,setor)
VALUES("Lourenço", "Pleno", 7000.00 , "Desenvolvedor");

INSERT INTO tb_colaboradores(nome, cargo,salario,setor)
VALUES("Antônia", "Supervisora", 8000.00 , "Supervisão");

INSERT INTO tb_colaboradores(nome, cargo,salario,setor)
VALUES("Marcela", "Senior", 12000.00 , "Desenvolvedor");

SELECT * FROM tb_colaboradores WHERE salario < 2001;
SELECT * FROM tb_colaboradores WHERE salario > 2000;

UPDATE tb_colaboradores SET salario = 2500 where id = 5;

-- Ex 2
CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
PRIMARY KEY(id),
nome VARCHAR(255),
valor FLOAT(5,2),
fornecedor VARCHAR(255),
codigo INT

);

ALTER TABLE tb_produtos MODIFY valor FLOAT(9,2);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome,valor,fornecedor,codigo)
VALUES( "Game PS5 " , 300.00 , "Sony", 187 ),
		("Cabo Carregador" , 40.00 , "cabos s.a." , 131),
        ("Console PS5 " , 8000.00 , "Sony" , 858),
        ("cabo usb" , 4.00, "multilaser" , 87987 ),
        ("Gabinete" , 600.00 , "Katchau" , 555 ),
        ("Xbox" , 2500.00 , "microsoft" , 757 ),
        ("controle xbox alternativo" , 477.00 , "microfosforo" , 5746),
        ("cabo de energia gamer" , 2000.00 , "microfosforo" , 4851);


SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET valor = 100.00 WHERE id = 4;

-- Ex 3 
CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
cpf VARCHAR(255),
PRIMARY KEY (cpf),
nome VARCHAR(255),
idade INT,
turma INT,
nota FLOAT(2,1)

);

ALTER TABLE tb_estudantes MODIFY nota FLOAT(4,2); -- Alterar o tipo de dado 

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes(cpf,nome,idade,turma,nota)
VALUES  ("1111111", "Marcio", 15 , 50 , 5.0),
		("2222222", "Ronaldo", 16, 50 , 6.1),
		("3333333", "Leôncio", 19, 50, 10.0),
		("4444444", "Cortigolas", 5, 55, 8.4),
		("5555555", "Queli Diones", 6, 55, 4.5),
		("1234567", "Aniver Sariante", 12, 53, 10.0),
		("2345678", "Cosmo", 18, 50, 6.7),
		("3456789", "Wanda", 17, 50, 8.5);



SELECT * FROM tb_estudantes WHERE nota > 7;
SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 0.5 WHERE cpf = "2323232";