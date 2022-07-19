drop database dbjogos;

create database dbjogos;

use dbjogos;

create table tbEquipes(
codEquipe int not null auto_increment,
primary key codEquipe
);

create table tbJogador(
codJogador int not null auto_increment,
nome varchar(45),
codEquipe int not null,
primary key codJogador,
foreign key (codEquipe) references tbEquipes (codEquipe)
);

create table tbTecnico(
codtecnico int not null auto_increment,
nome varchar(45),
funcao varchar(100),
codEquipe int not null,
primary key codEquipe,
foreign key (codEquipe) references tbEquipes (codEquipe)
);

create table tbCidade(
codCidade int not null auto_increment,
nome varchar(35),
codEquipe int not null,
primary key codEquipe,
foreign key (codEquipe) references tbEquipes (codEquipe)
);

create table tbJogo(
codJogo int not null auto_increment,
codEquipe_casa varchar(45),
codEquipe_visitante varchar(45),
pontos_casa int,
pontos_visitante int,
data date,
codEquipe int not null,
primary key codJogo,
foreign key (codEquipe) references tbEquipes (codEquipe)
);

desc tbEquipe;
desc tbJogador;
desc tbTecnico;
desc tbCidade;
desc tbJogo;