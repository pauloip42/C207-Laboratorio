create database if not exists aula3;
use aula3;

create table if not exists usuario(
 id int not null auto_increment primary key,
 nome varchar(50),
 ano_nasc int,
 pais varchar(50)
 );
 
 create table if not exists Cliente(
  cpf varchar(11) primary key,
  nome varchar(50),
  idade int,
  telefone varchar(50),
  cidade varchar(50),
  TotalCompra float
  );
  
  #INSERT
  
  INSERT INTO usuario(nome,ano_nasc,pais) VALUES ('fulano', 2001, 'Brasil');
  # Outra maneira de inserir. Devemos dizer o valor do ID pois estamos inserindo todos os dados
  INSERT INTO usuario() VALUES(default,'User2','Australia');
  INSERT INTO usuario(nome,ano_nasc,pais) VALUES ('Beltrano',1978,'Italia');
  
  #UPDATE
  UPDATE usuario SET nome = 'User1' WHERE id = 1;
  UPDATE usuario SET nome = 'User2' WHERE id = 2;
  UPDATE usuario SET nome = 'User3' WHERE id = 3;
  
  UPDATE usuario SET ano_nasc = 2002, pais = 'Argentina' WHERE id = 1;
  
  #DELETE
  DELETE FROM usuario WHERE id = 3;
  
  #COMANDOS DE BUSCA
  #SELECT
  #SELECT colunas FROM tabelas WHERE lógica;
  SELECT * FROM usuario; #busca todos os dados
  SELECT * FROM Cliente;

/*
  INSERT INTO Cliente(cpf,nome,idade,telefone,cidade,TotalCompra) VALUES ('12379843256','João Lucas',24,'9845-6952','Pouso Alegre',145);
  INSERT INTO Cliente(cpf,nome,idade,telefone,cidade,TotalCompra) VALUES ('95487361584','Joana',45,'9972-3348','Itajubá',130.25);
  INSERT INTO Cliente(cpf,nome,idade,telefone,cidade,TotalCompra) VALUES ('65482751499','Pedro',33,'9822-5316','Itajubá',78.9);
  INSERT INTO Cliente(cpf,nome,idade,telefone,cidade,TotalCompra) VALUES ('57778462358','Beatriz',17,'9735-4442','Extrema',113);
  INSERT INTO Cliente(cpf,nome,idade,telefone,cidade,TotalCompra) VALUES ('26326578459','Mariana',28,'8437-6659','Barbacena',42.5);
  INSERT INTO Cliente(cpf,nome,idade,telefone,cidade,TotalCompra) VALUES ('76125894362','Jonathan',38,'9233-7453','Pouso Alegre',85.4);
  INSERT INTO Cliente(cpf,nome,idade,telefone,cidade,TotalCompra) VALUES ('46582739321','Ana Maria',57,'9118-4742','Varginha',92);
  */
  