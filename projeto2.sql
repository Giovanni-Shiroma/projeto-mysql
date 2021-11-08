-- criando a database
create database mysql_project2;

-- entrando na database criada 
use mysql_project2;

-- criando a tabela de usuarios
create table usuario (
    id int not null auto_increment PRIMARY key ,
    nome varchar(50) not null,
    imagem varchar(50),
    nome_usuario varchar(30) not null,
    data_cadastro date
);

-- criando a tabela de cartoes  
create table cartao (
    id int not null auto_increment PRIMARY key ,
	numero varchar(16) not null,
    cvv int(3) not null ,
    data_expiracao date not null,
    nome_usuario varchar(50) not null,
    valido boolean,
    data_cadastro date
);

-- criando a tabela de transação 
create table transaçao (
id int not null auto_increment PRIMARY KEY,
id_usuario int not null, 
id_cartao int not null,
valor decimal(10,2),
data_cadastro date
);

-- inserindo dados na table de users
insert into usuario (nome, imagem, nome_usuario, data_cadastro)
values 
('João', 'IMG/Perfil', 'JP', '2021-04-12'),
('George','IMG/Perfil','Gege', '2021-03-29'),
('Livia','IMG/Perfil', 'Li', '2021-02-23'),
('Victória', 'IMG/Perfil', 'Vivi', '2021-05-11');

-- inserindo dados na table de cartoes
insert into cartao (numero, cvv, data_expiracao, nome_usuario, valido, data_cadastro)
values  
    ('7839209491232844', '209', '2040-04-23', 'Jp', '1', '2021-04-12' ),
	('1238409123148382', '023', '2032-02-11', 'Gege', '0', '2021-03-29'),
	('2131284728147817', '112', '2028-01-10', 'Li', '1', '2021-02-23' ),
	('1232142134214123', '982', '2030-02-01', 'Vivi', '1', '2021-05-11');
    
-- inserindo dados na table de transaçao
insert into transaçao (id_usuario, id_cartao, valor, data_cadastro)
values  
    ('1', '1', '60.99', '2021-04-12' ),
	('2', '2', '12.00', '2021-03-29' ),
	('3', '3', '29.99','2021-02-23' ),
	('4', '4', '100.00', '2021-05-11' );
    
-- query que retorna usuarios por ordem dos nomes
select * from usuario order by nome asc;

-- query que retorna os cartões válidos em ordem de cadastro
select * from cartao where valido = 1 order by data_cadastro asc;

-- query que retorna todas as transações cadastradas em ordem decrescente da data de cadastro, contendo os dados do usuário e cartão.
select 
	transaçao.id_usuario, transaçao.id_cartao, transaçao.valor, transaçao.data_cadastro,
    usuario.nome, usuario.imagem, usuario.nome_usuario, usuario.data_cadastro,
    cartao.numero, cartao.cvv, cartao.data_expiracao, cartao.valido, cartao.data_cadastro
    from transaçao 
    inner join usuario on usuario.id = transaçao.id
    inner join cartao on cartao.id = usuario.id order by transaçao.data_cadastro desc;