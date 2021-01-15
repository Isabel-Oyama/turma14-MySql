create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint(5) auto_increment,
nome varchar(255) not null,
descricao varchar(255),
primary key (id)
);

select * from tb_classe;

create table tb_personagem(
id bigint(5) auto_increment,
nome varchar(255) not null,
id_classe bigint,
atributo varchar(255) not null,
ataque int,
defesa int,
primary key (id),
foreign key (id_classe) references tb_classe (id)
);

select * from tb_personagem;

insert into tb_classe (nome,descricao) values ("Ataque","Classe Atacante");
insert into tb_classe (nome,descricao) values ("Defesa","Classe Defesa");
insert into tb_classe (nome,descricao) values ("Suporte","Classe Suporte");
insert into tb_classe (nome,descricao) values ("Tanker","Classe Tanker");
insert into tb_classe (nome,descricao) values ("Healer","Classe Healer");

insert into tb_personagem (nome,id_classe,atributo,ataque,defesa) values ("Odin",1,"Vento",3000,1100);
insert into tb_personagem (nome,id_classe,atributo,ataque,defesa) values ("Feng Yan",2,"Vento",1100,2100);
insert into tb_personagem (nome,id_classe,atributo,ataque,defesa) values ("Ganymede",3,"Vento",800,1600);
insert into tb_personagem (nome,id_classe,atributo,ataque,defesa) values ("Rakan",4,"Fogo",1200,1500);
insert into tb_personagem (nome,id_classe,atributo,ataque,defesa) values ("Anavel",5,"Água",1150,1400);
insert into tb_personagem (nome,id_classe,atributo,ataque,defesa) values ("Zaiross",1,"Fogo",2500,900);
insert into tb_personagem (nome,id_classe,atributo,ataque,defesa) values ("Perna",4,"Fogo",1900,800);
insert into tb_personagem (nome,id_classe,atributo,ataque,defesa) values ("Abellio",2,"Água",1200,2500);

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa >= 1000 and defesa <= 2000;

select * from tb_personagem where nome like "c%";

select personagem.nome as nome_personagem, atributo, ataque, defesa, classe.nome as nome_classe, descricao 
from tb_personagem as personagem
	inner join tb_classe as classe on personagem.id_classe = classe.id;
    
select tb_personagem.nome as nome_personagem, tb_classe.nome as nome_classe 
from tb_personagem 
	inner join tb_classe on tb_personagem.id_classe = tb_classe.id 
where tb_classe.nome = "Ataque";



