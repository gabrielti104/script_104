drop database dbLoja;

create database dbLoja;

use dbLoja;


create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
ctps char(8) not null unique,
telCel char(10),
primary key(codFunc)
);


create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar(50),
senha varchar(50),
codFunc int not null,
primary key(codUsu),
foreign key(codFunc)references tbFuncionarios(codFunc)
);

create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100),
quantidade decimal(9,2),
dataEntrada date,
horaEntrada time,
primary key(codProd)
);

create table tbVendas(
codVenda int not null auto_increment,
valor decimal(9,2),
data date,
hora time,
codUsu int not null,
codProd int not null,
primary key(codVenda),
foreign key(codUsu)references tbUsuarios(codUsu),
foreign key(codProd)references tbProdutos(codProd)
);




insert into tbFuncionarios(nome,email,cpf,ctps,telCel)
	values('Maria da Cunha','maria.cunha@gmail.com','125.135.254-22','12345678','98574-8575');

insert into tbFuncionarios(nome,email,cpf,ctps,telCel)
	values('Jonatas Miranda da Rocha','jonatas.mrocha@hotmail.com','155.145.454-32','12345679','98574-8573');


insert into tbusuarios(nome,senha,codFunc)values('jonatas.mrocha','123456',2);
insert into tbusuarios(nome,senha,codFunc)values('maria.cunha','456789',1);

insert into tbProdutos(descricao,quantidade,dataEntrada,horaEntrada)
	values('Café da mantiqueira',10.5,'2022-06-20','10:55:00');

insert into tbVendas(valor,data,hora,codUsu,codProd)
   values(10.50,'2022-06-21','09:29:00',2,1);