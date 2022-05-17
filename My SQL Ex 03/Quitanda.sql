
   
create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ("Frutas",true);
insert tb_categoria (descricao, ativo) values ("Verduras",true);
insert tb_categoria (descricao, ativo) values ("Legumes",true);
insert tb_categoria (descricao, ativo) values ("tempero",true);
insert tb_categoria (descricao, ativo) values ("bebidas",true);
insert tb_categoria (descricao, ativo) values ("outros",true);


create table tb_produtos (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("brócolis",10.00,3,2);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("alface",4.00,3,2);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("tomate",15.00,3,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("acelga",7.00,3,2);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("morango",10.00,3,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("banana",7.00,3,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("beringela",5.00,3,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("água",3.00,3,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("coca-cola",10.00,3,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Sanitizante",10.00,5,6);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Pimenta do reino",10.00,5,4);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("sal rosa",10.00,5,4);

-- Selecionamar toda a tabela categoria
select * from tb_categoria;

-- Selecionamar toda a tabela produtos
select * from tb_produtos;

-- Seleciona o produto com valor > 50.00 
select * from tb_produtos where preco > 50.00;

-- Buscar todos os personagens que possuam a letra a no atributo nome
select * from tb_produtos where nome like '%a%';

-- Seleciona a tabela produtos e junta com a tabela categoria, e une as duas com o mesmo id
select * from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;