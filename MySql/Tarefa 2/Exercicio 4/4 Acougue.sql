create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint(5) auto_increment,
nome varchar(255) not null,
descricao varchar(255),
primary key(id)
);

select * from tb_categoria;

create table tb_produto(
id bigint(5) auto_increment,
nome varchar(255) not null,
id_categoria bigint,
preco decimal (10,2),
qtdProduto int,
primary key(id),
foreign key (id_categoria) references tb_categoria(id)
);

select * from tb_produto;

insert into tb_categoria (nome,descricao) values ("Bovino","Carne do Boi");
insert into tb_categoria (nome,descricao) values ("Suino","Carne do Porco");
insert into tb_categoria (nome,descricao) values ("Aves","Carne das Aves");

insert into tb_produto (nome,id_categoria,preco,qtdProduto) values ("Picanha",1,60,60);
insert into tb_produto (nome,id_categoria,preco,qtdProduto) values ("Contra File",1,40,40);
insert into tb_produto (nome,id_categoria,preco,qtdProduto) values ("Bacon",2,15,20);
insert into tb_produto (nome,id_categoria,preco,qtdProduto) values ("Costela Suino",2,30,10);
insert into tb_produto (nome,id_categoria,preco,qtdProduto) values ("Asa",3,15,20);
insert into tb_produto (nome,id_categoria,preco,qtdProduto) values ("Coxa de Frango",3,20,30);

select * from tb_produto where preco > 50;

select * from tb_produto where preco >= 3 and preco <= 60;

select * from tb_produto where nome like "C%";

select produto.nome as nome_produto, preco,qtdProduto, categoria.nome as nome_categoria, descricao
from tb_produto as produto
	inner join tb_categoria as categoria on produto.id_categoria = categoria.id;

select tb_produto.nome as nome_produto, tb_categoria.nome as nome_categoria
from tb_produto
	inner join tb_categoria on tb_produto.id_categoria = tb_categoria.id
    where tb_categoria.nome = "Bovino";
