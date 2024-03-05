-- apagar banco de dados
drop database dbLoja;

-- criando o banco de dados
create database dbLoja;

-- acessando banco de dados
use dbLoja;

-- criando as tabelas
create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100),
email varchar(100),
telCel char(14),
sexo char(1) default 'F' check(sexo in('F','M')),
salario decimal(9,2) default 0 check(salario >= 0),
primary key(codFunc));


create table tbFornecedores(
codForn int not null auto_increment,
nome varchar(100),
cnpj char(18) unique,
primary key(codForn));


create table tbClientes(
codCli int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(16) unique,
primary key(codCli));


create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar(30) not null,
senha varchar(10) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codFunc) references tbFuncionarios(codFunc)
);


create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100),
valor decimal(9,2),
qtde int,
dataEntrada date,
codForn int not null,
primary key(codProd),
foreign key(codForn) references tbFornecedores(codForn));


create table tbVendas(
codVenda int not null,
dataVenda date,
qtde int,
valor decimal(9,2),
codUsu int not null,
codProd int not null,
codCli int not null,
primary key(codVenda),
foreign key(codUsu) references tbUsuarios(codUsu),
foreign key(codProd) references tbProdutos(codProd),
foreign key(codCli) references tbClientes(codCli)
);


-- visualizar as tabelas criadas
show tables;

-- visualizando a estrutura das tabelas
desc tbFuncionarios;
desc tbFornecedores;
desc tbClientes;
desc tbUsuarios;
desc tbProdutos;
desc tbVendas;

-- inserindo registros nas tabelas

insert into tbFuncionarios(nome,email,telCel,sexo,salario)
	values('Amarildo da Cunha','amari.cunha@gmail.com','1192172-2769','M',1500.00);

insert into tbFuncionarios(nome,email,telCel,sexo,salario) 
	values('Gerson Cesar Graziani Junior','gerson.graziani@gmail.com','1193310-2673','M',1500.00);

insert into tbFuncionarios(nome,email,telCel,sexo,salario)
	values('Gabriel Parra Santos Silva','gabriel.parra.santos@outlook.com','1198876-4006','M',1500.00);

insert into tbFuncionarios(nome,email,telCel,sexo,salario)
	values('Manuela Cassiel','manulinda123@gmail.com','1195474-2854','F',1500.00);

insert into tbFornecedores(nome,cnpj)
	values('Armarinho Fernandes','354.264.12/0001-22');

insert into tbClientes(nome,email,cpf)
	values('Gerson Parra Graziani da Silva','gersinho.parra@gmail.com','193.294.249-9');

insert into	tbUsuarios(nome,senha,codFunc)
	values('amarildo.cunha','246524',1);

insert into	tbProdutos(descricao,valor,qtde,dataEntrada,codForn)
	values('Folha A4',50.00,10,'2024/03/01',1);

insert into	tbProdutos(descricao,valor,qtde,dataEntrada,codForn)
	values('Caderno',50.00,10,'2024/03/01',2);

insert	into tbVendas(dataVenda,qtde,valor,codUsu,codProd,codCli)
	values('2024/03/01',5,50.00,1,1,1);

insert	into tbVendas(dataVenda,qtde,valor,codUsu,codProd,codCli)
	values('2024/03/01',5,50.00,1,2,1);





-- o conteúdo das tabelas
select * from tbFuncionarios;
select * from tbFornecedores;
select * from tbClientes;
select * from tbUsuarios;
select * from tbProdutos;
select * from tbVendas;