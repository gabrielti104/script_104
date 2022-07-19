drop database dbPadaria_do_joâo;

create database dbPadaria_do_joâo;

use dbPadaria_do_joâo;

create table tbFuncionarios(
CodFunc int not null auto_increment,
Nome varchar(45),
Email varchar(100),
cpf char(14) not null unique,
telCel char(10),
primary key (codFunc)
);

create table tbUsuarios(
CodUsu int not null auto_increment,
nome varchar(45),
senha char(12),
CodFunc int not null,
primary key (CodUsu),
foreign key (CodFunc) references tbFuncionarios (CodFunc)
);

create table tbFornecedores(
CodForn int not null auto_increment,
nome varchar(25),
endereco varchar(60),
telCel char(10),
CodProd int not null,
primary key (CodForn) 
);

create table tbProdutos(
CodProd int not null auto_increment,
descricao varchar(100),
quantidade char(10),
datahora date time
);