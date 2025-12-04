create database escola;

use escola;

create table aluno(
	id_aluno int auto_increment primary key comment 'Esse campo representa o chave primária da tabela',
    nome varchar(100) not null,
    idade int not null default 18 check(idade >= 0),
    email varchar(200) not null
);

create table matricula (
	id_matricula int auto_increment,
    id_aluno int not null,
    disciplina varchar(50) not null,
    primary key(id_matricula),
    foreign key (id_aluno) references aluno(id_aluno)
);

INSERT INTO aluno (nome, idade, email)
VALUES
('Luiz', 20, 'luiz@gmail.com'),
('Thiago', 35, 'thiago@gmail.com'),
('João', 25, 'joao@gmail.com'),
('Mateus', 15, 'mateus@gmail.com'),
('Ana Paula', 22, 'ana.paula@gmail.com'),
('Mariana Silva', 19, 'mariana.silva@gmail.com'),
('Carlos Eduardo', 24, 'carlos.edu@gmail.com'),
('Fernanda Costa', 21, 'fernanda.costa@gmail.com'),
('Paulo Henrique', 28, 'paulo.h@hotmail.com'),
('Ricardo Santos', 27, 'ricardo.santos@gmail.com'),
('Beatriz Almeida', 18, 'beatriz.almeida@gmail.com'),
('Juliana Martins', 23, 'juliana.martins@gmail.com'),
('Pedro Rocha', 26, 'pedro.rocha@gmail.com'),
('Samuel Antunes', 20, 'samuel.antunes@gmail.com'),
('Clara Nunes', 19, 'clara.nunes@gmail.com'),
('Eduardo Lima', 22, 'eduardo.lima@gmail.com'),
('Larissa Melo', 18, 'larissa.melo@gmail.com'),
('Gabriel Teixeira', 23, 'gabriel.teixeira@gmail.com'),
('Sofia Carvalho', 21, 'sofia.carvalho@gmail.com'),
('Lucas Vieira', 24, 'lucas.vieira@gmail.com');

INSERT INTO matricula (id_aluno, disciplina)
VALUES
(1, 'Programação'),
(1, 'Banco de Dados'),
(2, 'Redes'),
(2, 'Programação'),
(3, 'Matemática'),
(3, 'Design Web'),
(4, 'Programação'),
(5, 'Banco de Dados'),
(5, 'Estruturas de Dados'),
(6, 'Design Web'),
(7, 'Engenharia de Software'),
(7, 'Programação'),
(8, 'Banco de Dados'),
(9, 'Redes'),
(10, 'Matemática'),
(10, 'Estruturas de Dados'),
(11, 'Design Web'),
(12, 'Programação'),
(12, 'Banco de Dados'),
(13, 'Administração de Sistemas'),
(14, 'Redes'),
(15, 'Programação'),
(16, 'Engenharia de Software'),
(16, 'Matemática'),
(17, 'Design Web'),
(18, 'Banco de Dados'),
(19, 'Programação'),
(19, 'Redes'),
(20, 'Administração de Sistemas'),
(20, 'Estruturas de Dados');

select * from aluno;
select * from matricula;

select nome, idade from aluno order by idade desc limit 5;

update aluno set idade = 21 where id_aluno = 2;

delete from matricula where id_matricula = 5;

select count(*) as total_aluno from aluno;

select 	avg(idade) as idade_media,
		min(idade) as menor_idade,
        max(idade) as maior_idade
from aluno;

select  idade, 
		count(*) as total 
from aluno
group by idade
order by idade;

select  idade, 
		count(*) as idade_20
from aluno
where idade = 20;

select a.nome, m.disciplina
from aluno a 
join matricula m on a.id_aluno = m.id_matricula;