create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

create table tb_categorias (
id bigint auto_increment,
primary key (id),
tipo varchar(255),
receita_medica boolean
);

insert tb_categorias (tipo,receita_medica)
values ("Gotas", true),
("Comprimido", true),
("Injecao", true),
("Produtos higiene", false),
("diversos", false);

create table tb_produtos(
id bigint auto_increment,
primary key (id),
nome varchar(255) not null,
desconto boolean not null,
valor decimal (9,2) not null,
quantidade int not null,

class_id bigint,
foreign key (class_id) references tb_categorias(id)
);


insert tb_produtos(nome, desconto, valor, quantidade, class_id)
values ("Cataflan", true, 5.00, 1, 1),
("Hylogel", false , 9.99, 1, 2),
("Valtrex", true, 600.00, 2, 3),
("Vounau", true , 120.00, 1, 4),
("Resfenol", false, 21.00, 1, 5),
("Creme dental", false, 3.00, 1, 6),
("Luftal", true, 8.99, 2, 7),
("Cetaconazol", false, 7.99, 1, 8),
("Pantoprazol", true, 19.00, 2, 9);

-- Selecionamar toda a tabela produtos
select * from tb_produtos;

-- Selecionamar toda a tabela categorias
select * from tb_categorias;

-- Seleciona o produto com valor > 50 da tabela produtos
select * from tb_produtos where valor > 50.00;

-- Seleciona a tabela produtos onde o valor seja entre 5.00 e 60.00
select * from tb_produtos where valor between 5.00 and 60.00;

-- Buscar todos os personagens que possuam a letra C no atributo nome
select * from tb_produtos where nome like '%C%';

-- Seleciona a tabela produtos e junta com a tabela categorias, e une as duas com o mesmo id
select * from tb_produtos inner join tb_categorias on tb_produtos.class_id = tb_categorias.id;

-- Seleciona as tabelas e une as mesmas, imprimindo o tipo - diversos
select * from tb_produtos inner join tb_categorias on tb_produtos.class_id = tb_categorias.id where tipo = "diversos";