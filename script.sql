/*CRIANDO O BANCO DE DADOS*/
create database dbLoja;

/*USANDO O BANCO DE DADOS*/
use dbLoja;

-- CRIANDO AS TABELAS DO BANCO DE DADOS
create table tbLogin(
CodLogin int primary key auto_increment,
usuario varchar(40),
senha varchar(40)
);

create table tbCliente(
Codigo int primary key auto_increment,
Nome varchar(40),
Telefone varchar(20),
Email varchar(40)
); 

-- INSERINDO DADOS NA TABELA
insert into tbCliente (Codigo,Nome,Telefone,Email) values(2,"Huguinho", "(11)98765-3124", "huguinho@gmail.com");
insert into tbCliente (Nome,Telefone,Email) values("Luizinho", "(11)98465-4124", "luizinho@gmail.com");
insert into tbLogin (usuario,senha) values("admin", "admin");

-- CONSULTANDO AS TABELAS DO BANCO
select * from tbCliente;
select * from tbLogin;

-- ALTERANDO AS TABELAS DO BANCO
alter table tbCliente add Teste varchar(20); 

-- REMOVENDO UMA COLUNA DAS TABELAS DO BANCO
alter table tbCliente drop column Teste;

-- ALTERANDO O VALOR DO ATRIBUTO
update tbCliente set Nome = "Zezinho" where Codigo = 1;

-- DELETANDO UMA INFORMAÇÃO INSERIDA
delete from tbCliente where Codigo = 2;


