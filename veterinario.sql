drop database if exists Veterinaria;
create database Veterinaria;
use Veterinaria;

create table login(
IdLogin int primary key auto_increment,
loginUser varchar(50) not null,
senha varchar(10) not null,
tipo varchar(10)
);