create table tb_produtos (
id bigint(5) auto_increment,
nome varchar(200) not null,
preco decimal(10,2),
marca varchar(200) not null,
estoque int, 
primary key (id)
);