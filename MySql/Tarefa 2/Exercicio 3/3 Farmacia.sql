create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint(5) auto_increment,
nome varchar(255) not null,
descricao varchar(255),
primary key(id)
);

select * from tb_categoria;

create table tb_produtos(
id bigint (5) auto_increment,
nome varchar(255) not null,
id_categoria bigint,
valor decimal(10,2),
estoque int,
primary key(id),
foreign key (id_categoria) references tb_categoria (id)
);

select * from tb_produtos;

insert into tb_categoria (nome,descricao) values ("Remédios","Substância ou recurso utilizado para combater uma dor, uma doença");
insert into tb_categoria (nome,descricao) values ("Cosméticos","Produtos de higiene pessoal");

insert into tb_produtos (nome,id_categoria,valor,estoque) values ("Predinizona",1,25,10);
insert into tb_produtos (nome,id_categoria,valor,estoque) values ("Naridrin",1,18,10);
insert into tb_produtos (nome,id_categoria,valor,estoque) values ("Alprazoran",1,90,10);
insert into tb_produtos (nome,id_categoria,valor,estoque) values ("Shampoo Aussie",2,85,5);
insert into tb_produtos (nome,id_categoria,valor,estoque) values ("Condicionador Aussie",2,97,5);
insert into tb_produtos (nome,id_categoria,valor,estoque) values ("Pó compacto",2,12,10);

select * from tb_produtos where valor > 50;

select * from tb_produtos where valor >= 3 and valor <= 60;

select * from tb_produtos where nome like "b%";

select produtos.nome as nome_produto,valor,estoque, categoria.nome as nome_categoria, descricao
from tb_produtos as produtos
	inner join tb_categoria as categoria on produtos.id_categoria = categoria.id;
    
select tb_produtos.nome as nome_produtos, tb_categoria.nome as nome_categoria
from tb_produtos
	inner join tb_categoria on tb_produtos.id_categoria = tb_categoria.id
    where tb_categoria.nome = "Remédios";

