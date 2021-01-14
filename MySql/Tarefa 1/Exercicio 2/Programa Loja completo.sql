create database db_emiloja;

use db_emiloja;

create table tb_produtos (
id bigint(5) auto_increment,
nome varchar(200) not null,
preco decimal(10,2),
marca varchar(200) not null,
estoque int, 
primary key (id)
);

select * from tb_produtos;

insert into tb_produtos (nome, preco, marca, estoque) values ("Camiseta Masculina",150,"Nike",10); 
insert into tb_produtos (nome, preco, marca, estoque) values ("Camisa Polo",230,"Highstil",10); 
insert into tb_produtos (nome, preco, marca, estoque) values ("Blusa Masculina",700,"Lacoste",3); 
insert into tb_produtos (nome, preco, marca, estoque) values ("Blusa Feminina",600,"Tommy Hilfiger",2); 
insert into tb_produtos (nome, preco, marca, estoque) values ("Camiseta Feminina",180,"Tommy Hilfiger",5); 
insert into tb_produtos (nome, preco, marca, estoque) values ("Tenis Masculino",900,"Adidas",2); 
insert into tb_produtos (nome, preco, marca, estoque) values ("Tenis Feminino",650,"Nike",4); 

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

update tb_produtos set preco = 150 where id = 5;



