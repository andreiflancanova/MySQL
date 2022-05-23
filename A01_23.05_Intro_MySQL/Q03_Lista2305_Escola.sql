-- Criar banco de dados da Escola
CREATE DATABASE db_Escola;
-- Tabela de Colaboradores com Atributos Relevantes
USE db_Escola;
CREATE TABLE tb_AtribStu
(
	-- Inserção de Atributos
    id bigint auto_increment,
    NomeProf varchar(100),
    AQE bigint (2),
    Subj varchar(30),
    ND decimal(3,1),
    primary key (id)
);
SELECT * from tb_AtribStu;

-- Registro de Dados
INSERT INTO tb_AtribStu (NomeProf,AQE,Subj,ND) VALUES ("Andrei",9,"Cálculo I",6.8);
INSERT INTO tb_AtribStu (NomeProf,AQE,Subj,ND) VALUES ("Ailézig",9,"Física",9.9);
INSERT INTO tb_AtribStu (NomeProf,AQE,Subj,ND) VALUES ("Hallysson",9,"Geometria",9.5);
INSERT INTO tb_AtribStu (NomeProf,AQE,Subj,ND) VALUES ("Debora",9,"Economia",6.5);
INSERT INTO tb_AtribStu (NomeProf,AQE,Subj,ND) VALUES ("Robson",9,"Finanças",8.5);

-- Query de Atualização de Registro
UPDATE tb_AtribStu set NomeProf = "Gibran" where id=4;

-- Query de filtragem de dados
SELECT * from tb_AtribStu where ND>7.0;

SELECT * from tb_AtribStu where ND<7.0;
