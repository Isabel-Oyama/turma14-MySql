create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint(5) auto_increment,
nome varchar(255) not null,
descricao varchar(255),
primary key (id)
);

select * from tb_categoria;

create table tb_pizza(
id bigint(5) auto_increment,
nome varchar(255) not null,
id_categoria bigint,
sabor varchar(255),
preco decimal (10,2),
primary key (id),
foreign key (id_categoria) references tb_categoria(id)
);

select * from tb_pizza;

insert into tb_categoria (nome,descricao) values ("salgado","pizza feita com ingredientes salgados");
insert into tb_categoria (nome,descricao) values ("doce","pizza feita com ingredientes doces");

insert into tb_pizza (nome,id_categoria,sabor,preco) values ("pizza 1",1,"Portuguesa",30);
insert into tb_pizza (nome,id_categoria,sabor,preco) values ("pizza 2",1,"A moda do Chef",60);
insert into tb_pizza (nome,id_categoria,sabor,preco) values ("pizza 3",1,"Mussarela",45);
insert into tb_pizza (nome,id_categoria,sabor,preco) values ("pizza 4",2,"Nutella",50);
insert into tb_pizza (nome,id_categoria,sabor,preco) values ("pizza 5",2,"Morango com Chocolate",55);
insert into tb_pizza (nome,id_categoria,sabor,preco) values ("pizza 6",2,"Banana com Leite Condensado",35);

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco >= 29 and preco <=60;

select * from tb_pizza where nome like "c%";

select pizza.nome as nome_pizza,sabor,preco, categoria.nome as nome_categoria, descricao 
from tb_pizza as pizza
	inner join tb_categoria as categoria on pizza.id_categoria = categoria.id;
    
    select tb_pizza.nome as nome_pizza, tb_categoria.nome as nome_categoria 
from tb_pizza 
	inner join tb_categoria on tb_pizza.id_categoria = tb_categoria.id 
where tb_categoria.nome = "doce";

