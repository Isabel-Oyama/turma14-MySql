create table tb_funcionario(
id bigint(5) auto_increment,
nome varchar(200) not null,
idade int not null,
cargo varchar(200) not null,
salario float not null,
primary key(id)
);