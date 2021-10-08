-- criando a database
create database mysql_project;

-- entrando na database criada 
use mysql_project;

-- criando a tabela 
create table transacao (
   id int not null auto_increment primary key,
   tipo VARCHAR(20) NOT NULL,
   nome VARCHAR(50) NOT NULL,
   valor decimal(15,2),
   data_cadastro DATE
);

-- inserindo dados na table 
insert into transacao (tipo, nome, valor, data_cadastro) 
values 
('Venda', 'Monitor LG', 220.00 , '2021-04-12'),
('Compra', 'Caixa de som jbl', -129.90 , '2021-09-28'),
('Venda', 'Violão', 250.00 , '2021-06-23'),
('Venda', 'Televisão', 500.00 , '2021-03-10'),
('Compra', 'Garrafa', 20.00 , '2021-05-11');

-- query de ordenar por data
select * from transacao order by data_cadastro asc;

-- query para somar os valores
select sum(valor) from transacao where valor is not null;

-- query para excluir dados 
delete from transacao; 

-- sistema de segurança para não perder dados
-- desativado
SET SQL_SAFE_UPDATES = 0;
-- ativado
SET SQL_SAFE_UPDATES = 1;