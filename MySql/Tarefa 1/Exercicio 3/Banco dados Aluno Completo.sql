create database db_escola;

use db_escola;

create table tb_alunos(
id bigint(5) auto_increment,
nome varchar(200) not null,
idade int not null,
sexo char(1),
nota int,

primary key(id)
);

select * from tb_alunos;

insert into tb_alunos (nome,idade,sexo,nota) values ("Milena",15,'F',8);
insert into tb_alunos (nome,idade,sexo,nota) values ("Miguel",10,'M',6);
insert into tb_alunos (nome,idade,sexo,nota) values ("Camila",15,'F',5);
insert into tb_alunos (nome,idade,sexo,nota) values ("Caio",13,'M',10);
insert into tb_alunos (nome,idade,sexo,nota) values ("Felipe",15,'M',9);
insert into tb_alunos (nome,idade,sexo,nota) values ("Carolina",16,'F',5);
insert into tb_alunos (nome,idade,sexo,nota) values ("Joao",10,'M',6);
insert into tb_alunos (nome,idade,sexo,nota) values ("Milla",16,'F',8);

select * from tb_alunos where nota > 7;

select * from tb_alunos where nota < 7;

update tb_alunos set nota = 8 where id = 7;
