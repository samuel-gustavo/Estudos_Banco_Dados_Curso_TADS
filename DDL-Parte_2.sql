create database escola;

use escola;

create table aluno(
	id_aluno int auto_increment primary key,
    nome varchar(100) not null,
    idade int not null default 18 check(idade >= 0),
    email varchar(200) not null
);

create table matricula (
	id_matricula int auto_increment,
    id_aluno int not null,
    disciplina varchar(50) not null,
    primary key(id_matricula),
    foreign key (id_aluno) references alunos(id_aluno)
);

alter table alunos 
add column endereco varchar(150),
add column telefone varchar(20);

alter table aluno
drop column endereco;

alter table aluno
modify column email varchar(150) not null;

truncate table aluno;

show tables;

rename table alunos to aluno;

drop database escola;