-- criando a database 
create database atividade_2; 

-- entrando na database criada 
use atividade_2;

-- criando a tabela de buscas 
create table serach_page(
   id int not null auto_increment primary key,
   squad int NOT NULL,
   hashtag varchar(140) NOT NULL,
   data_hashtag date NOT NULL,
   hora_hashtag time NOT NULL 
);

-- inserindo dados na tabela criada 
insert into serch_page (squad, hashtag, data_hashtag, hora_hashtag) 
values
('2','carros','2021-02-20','19:00'),
('2','surf','2021-04-12','20:30'),
('2','são paulo futebol club','2021-06-15','21:45'),
('2','assuntos do momento','2021-01-13','12:30');

-- query para atualizar os dados da table search_page 
update search_page
set hashtag = 'insira o nome que desejar'
where id_squad = 'insira o id da linha que vai ser alterada';

-- query para mostrar dados da tabela de buscas por ordem de data
select * from serch_page order by data_hashtag asc;

-- query para deletar algum dado da tabela 
delete from search_page where id= ('numero do id que vai ser deletado');



-- criando a tabela das informações do squad
create table squad_2(
  id_squad int not null auto_increment primary key,
  squad int not null,
  nome varchar(100) NOT NULL,
  descrição varchar(500) NOT NULL,
  github varchar(500) NOT NULL,
  email varchar(100) NOT NULL,
  linkedin varchar(100) NOT NULL,
  img varchar(100) NOT NULL
);

-- inserindo dados na tabela criada 
insert into squad_2
    (squad, nome, descrição, github, email, linkedin, img)
values
    (2, 'Flávio', 'Lorem Ipsum.', 'https://github.com/', 'Flavio@gmail.com', 'https://www.linkedin.com/Flavio', 'flavio.png'),
    (2, 'Juliana', 'Lorem Ipsum.', 'https://github.com/Juliana', 'Juliana@gmail.com', 'https://www.linkedin.com/Juliana', 'Juliana.png'),
    (3, 'Giovanni', 'Lorem Ipsum.', 'https://github.com/Giovanni', 'Giovanni@gmail.com', 'https://www.linkedin.com/Giovanni', 'Giovanni.png'),
    (2, 'Marcelo', 'Lorem Ipsum.', 'https://github.com/Marcelo', 'Marcelo@gmail.com', 'https://www.linkedin.com/Marcelo', 'Marcelo.png'),
    (2, 'Leonardo', 'Lorem Ipsum.', 'https://github.com/Leonardo', 'Leonardo@gmail.com', 'https://www.linkedin.com/Leonardo', 'Leonargo.png');

-- query que atualiza os dados do squad. aqui ela foi utilizada para atualizar o squad do Giovanni que estava errado
update squad_2
set squad = 2
where id_squad = 3;

-- query para mostrar dados da tabela do squad por ordem do nome
select * from squad_2 order by nome;

-- query para deletar algum dado da tabela 
delete from squad_2 where id= ('numero do id da linha que vai ser deletada');

-- criando a tabela de credenciais de usuarios cadastrados 
 create table user_login (
    id int not null auto_increment  primary key,
    email varchar(300) not null,
    senha varchar(6) not null
  );
  
-- inserindo as credencias cadastradas na tabela user_login
insert into user_login (email, senha) 
	values
		('newtab@academy.com', '123456');
        
-- query para mostrar os dados da table user_login
select * from user_login;

-- query para atualizar os dados da table search_page 
update user_login
set email = 'insira o email que desejar'
where id = 'insira o id da linha que vai ser alterada';

-- query para deletar algum dado da tabela 
delete from user_login where id= ('numero do id da linha que vai ser deletada');

-- criando a table das hashtags pesquisadas 
create table hashtag_pesquisada (
  id_pesquisa int not null auto_increment primary key,
  usuario varchar(100) NOT NULL,
  data_pesquisa date NOT NULL,
  img varchar(100) NOT NULL
);

-- inserindo os dados da pesquisa na table 
insert into hashtag_pesquisada (usuario, data_pesquisa, img)
values
('@neymar','2021-02-19','ney.png'),
('@fausto','2021-08-22','fausto.png'),
('@Pedroscooby','2021-03-12','Pedroscooby.png'),
('@joaogomes','2021-05-27','joaogomes.png');

-- query para mostrar os dados da table user_login
select * from hashtag_pesquisada;

-- query para atualizar os dados da table search_page 
update hashtag_pesquisada
set usuario = 'insira o nome de usuario que desejar'
where id = 'insira o id da linha que vai ser alterada';

-- query para deletar algum dado da tabela 
delete from hashtag_pesquisada where id= ('numero do id da linha que vai ser deletada');

:)