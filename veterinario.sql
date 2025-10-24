drop database if exists Veterinaria;
create database Veterinaria;
use Veterinaria;

create table login(
IdLogin int primary key auto_increment,
loginUser varchar(50) not null,
senha varchar(10) not null,
tipo varchar(10) not null
);

create table Cliente(
idCli int primary key auto_increment,
nomeCli varchar(50) not null,
telCli varchar(13) not null,
emailCli varchar(50) not null
);

create table tipoAnimal(
IdTipo int primary key auto_increment,
DescricaoTipo varchar(10) not null,

);