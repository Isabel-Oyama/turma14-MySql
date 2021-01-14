create table tb_alunos(
id bigint(5) auto_increment,
nome varchar(200) not null,
idade int not null,
sexo char(1),
nota int,

primary key(id)
);