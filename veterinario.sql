drop database if exists Veterinaria;
create database Veterinaria;
use Veterinaria;

create table login(
IdLogin int primary key auto_increment,
loginUser varchar(50) not null,
senha varchar(10) not null,
tipo varchar(10) not null
);

insert into login(loginUser, senha, tipo)
	values("Admin","123456","Admin"),
    ("Colaborador","654321","comum"),
    ("Gerente","123457","gerente");

create table Cliente(
idCli int primary key auto_increment,
nomeCli varchar(50) not null,
telCli varchar(13) not null,
emailCli varchar(50) not null
);

create table tipoAnimal(
IdTipo int primary key auto_increment,
DescricaoTipo varchar(10) not null
);

create table racaAnimal(
IdRaca int primary key auto_increment,
IdTipo int not null,
nomeRaca varchar(10) not null,
foreign key (IdTipo) references tipoAnimal(IdTipo)
);

create table animal(
IdAni int primary key auto_increment,
nomeAni varchar(50) not null,
IdRaca int not null,
IdCli int not null,
foreign key (IdTipo) references racaAnimal(IdRaca),
foreign key (IdCli) references Cliente(IdCli)
);