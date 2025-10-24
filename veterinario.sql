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
    ("Gerente","123455","Admin");
select * from login;

select * from login where IdLogin = 3;

update login set loginUser= "colaborador", senha = "654321", 
			tipo = "comum" where IdLogin = 3;
            
delete from login where IdLogin = 2;

create table Cliente(
idCli int primary key auto_increment,
nomeCli varchar(50) not null,
telCli varchar(13) not null,
emailCli varchar(50) not null
);

insert into Cliente(nomeCli, telCli, emailCli)
		values("Marcos","11 9123456789","marcos@gmail.com"),
        ("Eric","13 9153456789","eric@gmail.com"),
        ("Luiz","12 9163456789","luiz@gmail.com");
        
select * from Cliente;

select * from Cliente where IdCli = 2;

update cliente set nomeCli = "Marcos", telCli = "11 9123456789", 
emailCli = "marcos@gmail.com" where IdCli = 2;

delete from cliente where IdCli = 3; 

create table tipoAnimal(
IdTipo int primary key auto_increment,
nomeTipo varchar(10) not null
);

insert into tipoAnimal(nomeTipo)
		values("Cachorro"),("Gato"),
        ("Pássaro"),("Cabra");
        
select * from tipoAnimal;
select * from tipoAnimal where IdTipo = 5;

update tipoAnimal set nomeTipo = "Iguana" where IdTipo = 5;

delete from tipoAnimal where IdTipo = 4;

create table racaAnimal(
IdRaca int primary key auto_increment,
IdTipo int not null,
nomeRaca varchar(10) not null,
foreign key (IdTipo) references tipoAnimal(IdTipo)
);

insert into racaAnimal(IdTipo, nomeRaca)
			values(2, "Angora"), (2, "Persa"),
            (1, "Pincher"),(1, "Vira-lata");
            
select * from racaAnimal inner join tipoAnimal;

select * from racaAnimal where idraca = 1;



create table animal(
IdAni int primary key auto_increment,
nomeAni varchar(50) not null,
IdRaca int not null,
IdCli int not null,
foreign key (IdRaca) references racaAnimal(IdRaca),
foreign key (IdCli) references Cliente(IdCli)
);