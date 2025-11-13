insert into aluno (nome, idade, email)
values ('Samuel', 20, 'samuel@gmail.com');

insert into aluno (nome, idade, email)
values ('Joyce', 18, 'joyce@gmail.com'),
	   ('Emanuel', 23, 'emanuel@gmail.com'),
       ('Maicon', 19, 'maicon@gmail.com');

select * from aluno;

select * from aluno 
order by id_aluno asc limit 3;

select id_aluno, nome, email from aluno 
order by id_aluno asc limit 2;

select * from aluno where idade <= 20;

select * from aluno where idade <= 20 or nome = 'Emanuel';

select * from aluno where idade <= 20 and nome = 'Emanuel';

show full columns from aluno;