-- Apagar o banco de dados
drop database dbAcademia;

-- Visualizar os banco de dados no servidor Mysql
show databases;

-- Criar o banco de dados

create database dbAcademia;

-- Acessando o banco de dados
use dbAcademia;

-- Visualizar banco de dados criado
show databases;

-- criando as tabelas no banco de dados
create table tbAtividade(
id int,
atividade varchar(45)
);

create table tbTurma(
id int,
quant_alunos int,
horario_aula datetime,
duracao_aula datetime,
data_inicio date,
data_fim date,
atividade int,
id_instrutor int,
id_monitor int
);

create table tbRegistro(
id_aluno int,
id_turma int,
ausencia int,
id_registro int
);

create table tbAluno(
matricula int,
date_matricula date,
nome varchar(45),
endereco varchar(45),
telefone varchar(45),
nascimento date,
altura float(24),
peso float(24),
id_turma int
);

create table tbInstrutor(
rg int,
nome varchar(45),
nascimento date,
titulacao varchar(45),
telefone varchar(45)
);
insert into tbInstrutor(rg,nome,nascimento,titulacao,telefone)
create table tbMonitor(
id_aluno int
);

-- Visualizar as tabelas criadas
show tables;

-- Visualizar a estrutura da tabela
desc tbAtividade;
desc tbTurma;
desc tbRegistro;
desc tbAluno;
desc tbInstrutor;
desc tbMonitor;

insert into tbAtividade(id,atividade)values(1,'Musculação');

insert into tbTurma(id,quant_alunos,horario_aula,duracao_aula,data_inicioa,data_fim,atividade,id_instrutor,id_monitor)values(1,23,'2022/12/02 12:30:00','2022/11/05 11:12:02','2022/07/12','2022/07/12',12,23,14);

insert into tbRegistro(id_aluno,id_turma,ausencia,id_registro)values(4,10,13,77);

insert into tbAluno(matricula,date_matricula,nome,endereco,telefone,nascimento,altura,peso,id_turma)values(6,'2021/04/02','gabriel sousa santos','rua pedro almeida n1','1159218885','2004/05/10','1,82','50,5',373);

select * from tbAtividade;
select * from tbTurma;
select * from tbRegistro;
select * from tbAluno;