drop database dbClinica_medica;

create database dbClinica_medica;

use dbClinica_medica;

create table tbMedico(
idMedico int not null auto_increment,
nmMedico varchar(45),
telefoneMedico varchar(9),
primary key (idMedico)
);

create table tbPaciente(
idPaciente int not null auto_increment,
nmPaciente varchar(45),
telefonePaciente varchar(9),
convenio varchar(45),
primary key (idPaciente)
);

create table tbReceitaMedica(
idReceitaMedica int not null auto_increment,
descricao varchar(250),
primary key (idReceitaMedica)
);

create table tbConsulta(
idConsulta int not null auto_increment,
dt_consulta datetime,
Medico_idMedico int not null,
Paciente_idPaciente int not null,
ReceitaMedica_idReceitaMedica int not null,
primary key (idConsulta),
foreign key (Medico_idMedico) references tbMedico (idMedico),
foreign key (Paciente_idPaciente) references tbPaciente (idPaciente),
foreign key (ReceitaMedica_idReceitaMedica) references tbReceitaMedica (idReceitaMedica)
);

desc tbMedico;
desc tbPaciente;
desc tbReceitaMedica;
desc tbConsulta;