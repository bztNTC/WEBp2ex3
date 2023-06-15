drop database if exists Livraria;

create database Livraria;

use Livraria;

create table Editora(id bigint not null auto_increment, cnpj varchar(18) not null, nome varchar(256) not null, primary key (id));

create table Livro(id bigint not null auto_increment, titulo varchar(256) not null, autor varchar(256) not null, ano integer not null, preco float not null, editora_id bigint not null, primary key (id), foreign key (editora_id) references Editora(id));

insert into Editora(cnpj, nome) values  ('55.789.390/0008-99', 'Companhia das Letras');

insert into Editora(cnpj, nome) values ('71.150.470/0001-40', 'Record');

insert into Editora(cnpj, nome) values ('32.106.536/0001-82', 'Objetiva');

insert into Editora(cnpj, nome) values ('87.557.922/0001-82', 'Seguinte');

insert into Livro(titulo, autor, ano, preco, editora_id) values ('Ensaio sobre a Cegueira', 'José Saramago', 1995, 54.9, 1);

insert into Livro(titulo, autor, ano, preco, editora_id) values  ('Cem anos de Solidão', 'Gabriel Garcia Márquez', 1977, 59.9, 2);

insert into Livro(titulo, autor, ano, preco, editora_id) values ('Diálogos Impossíveis', 'Luis Fernando Verissimo', 2012, 22.9, 3);

insert into Livro(titulo, autor, ano, preco, editora_id) values ('O Dia do Curinga', 'Jostein Gaarder', 1996, 29.99, 4);

insert into Livro(titulo, autor, ano, preco, editora_id) values ('A Revolução dos Bichos', 'George Orwell', 2007, 23.9, 1);

quit