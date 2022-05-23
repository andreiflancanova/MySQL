-- Criar banco de dados de RH
CREATE DATABASE db_RH;

-- Tabela de Colaboradores com Atributos Relevantes
USE db_RH;
CREATE TABLE tb_AtribColab
(
	-- Inserção de Atributos
    id bigint auto_increment,
    Nome varchar(100),
    Setor varchar(50),
    SB decimal(7,2),
    NHE decimal(5,2),
    primary key (id)
);

SELECT * from tb_AtribColab

-- Registro de Dados
INSERT INTO tb_AtribColab (Nome,Setor,SB,NHE) VALUES ("Andrei","Marketing",1000.00,6);
INSERT INTO tb_AtribColab (Nome,Setor,SB,NHE) VALUES ("Ailezig","Planejamento Estratégico",1500.00,8);
INSERT INTO tb_AtribColab (Nome,Setor,SB,NHE) VALUES ("Hallysson","RH",2200.00,4);
INSERT INTO tb_AtribColab (Nome,Setor,SB,NHE) VALUES ("Debora","Vendas",4000.00,4);
INSERT INTO tb_AtribColab (Nome,Setor,SB,NHE) VALUES ("Robson","Contabilidade",1700.00,10);
INSERT INTO tb_AtribColab (Nome,Setor,SB,NHE) VALUES ("Francisco","UX",3500.00,1);

-- Query de Atualização de Registro
UPDATE tb_AtribColab set Nome = "João" where id=5;

-- Query de filtragem de dados
SELECT * from tb_AtribColab where SB>=2000;

SELECT * from tb_AtribColab where SB<2000;



