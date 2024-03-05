drop database hospital;

create database hospital;

use hospital;

create table tbMedico(
idMedico int not null auto_increment,
nomeMedico varchar(100),
telCel char(16),
primary key(idMedico));

create table tbReceitaMedica(
idReceita int not null auto_increment,
descricao varchar(500),
primary key(idReceita));

create table tbPaciente(
idPaciente int not null auto_increment,
nomePaciente varchar(100),
TelCel varchar(16),
convenio varchar(45),
primary key(idPaciente));

create table tbConsulta(
idConsulta int not null auto_increment,
date_consulta date,
idMedico int not null,
idReceita int not null,
idPaciente int not null, 
primary key(idConsulta),
foreign key(idMedico) references tbMedico(idMedico),
foreign key(idReceita) references tbReceitaMedica(idReceita),
foreign key(idPaciente) references tbPaciente(idPaciente)
);

show tables;

desc tbMedico;
desc tbReceitaMedica;
desc tbPaciente;
desc tbConsulta;

insert into tbMedico(nomeMedico,telCel)
	values('Roberto Santos','1195474-2854');

select * from tbMedico;
select * from tbReceitaMedica;
select * from tbPaciente;
select * from tbConsulta;
