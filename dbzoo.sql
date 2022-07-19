drop database dbzoologico;

create database dbzoologico;

use dbzoologico;

create table tbanimais(
codigo int,
tipo char(15),
nome char(30),
idade int,
valor decimal(10,2)

);

desc tbanimais;

insert into tbanimais 
values
(1,'Cachorro','Djudi',3,300),
(2,'Cachorro','Sula',5,300),
(3,'Cachorro','Sarina',7,300),
(4,'Gato','Pipa',2,500),
(5,'Gato','Sarangue',2,500),
(6,'Gato','Clarenses',1,500),
(7,'Coruja','Agnes',0,700),
(8,'Coruja','Arabela',1,700),
(9,'Sapo','Quash',1,100),
(10,'Peixe','Fish',0,100);

select * from tbanimais;

select tipo, nome from tbanimais;

select tipo, nome, idade from tbanimais;

select
tipo as 'tipo de animal',
nome as 'nome do animal'
from tbanimais;

select
tipo as 'tipo de animal',
nome as 'nome do animal',
idade as 'tempo de vida'
from tbanimais;

select
'Animal doméstico' as procedencia,
nome,
tipo,
idade as 'tempo de vida'
from tbanimais;

select
tipo,
nome,
idade,
valor as 'valor original',
valor * 0.10 + valor as 'valor de venda'
from tbanimais;

select distinct
tipo,
valor as 'valor original',
valor * 1.10 as 'valor de venda'
from tbanimais;