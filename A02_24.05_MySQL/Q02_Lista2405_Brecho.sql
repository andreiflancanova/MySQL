-- Criar banco de dados da Quitanda
CREATE DATABASE db_BGen;

-- Tabela de Cadastro dos Itens
USE db_BGen;
CREATE TABLE tb_BrechoGen
(
	-- Inserção de Atributos
    id bigint auto_increment,
    NomeItem varchar(50),
    Marca varchar (50),
    PrecoUnit decimal(5,2),
    TipoTecido varchar(20),
    QuantItem decimal(5,2),
    primary key (id)
);

SELECT * from tb_BrechoGen;

-- Registro de Produtos
INSERT INTO tb_BrechoGen (NomeItem,Marca,PrecoUnit,TipoTecido,QuantItem) VALUES ("Camiseta","Adidas",50.00,"Poliéster",3);
INSERT INTO tb_BrechoGen (NomeItem,Marca,PrecoUnit,TipoTecido,QuantItem) VALUES ("Calção","Adidas",40.00,"Poliéster",3);
INSERT INTO tb_BrechoGen (NomeItem,Marca,PrecoUnit,TipoTecido,QuantItem) VALUES ("Bermuda","Fatal Surf",45.00,"Tactel",2);
INSERT INTO tb_BrechoGen (NomeItem,Marca,PrecoUnit,TipoTecido,QuantItem) VALUES ("Bermuda Jeans","Calvin Klein",65.00,"Poliéster",2);
INSERT INTO tb_BrechoGen (NomeItem,Marca,PrecoUnit,TipoTecido,QuantItem) VALUES ("Calça","Gucci",80.00,"Jeans",3);
INSERT INTO tb_BrechoGen (NomeItem,Marca,PrecoUnit,TipoTecido,QuantItem) VALUES ("Calça Social","Brooksfield",120.00,"Sarja",3);
INSERT INTO tb_BrechoGen (NomeItem,Marca,PrecoUnit,TipoTecido,QuantItem) VALUES ("Camisa Polo","Lacoste",75.00,"Algodão",1);
INSERT INTO tb_BrechoGen (NomeItem,Marca,PrecoUnit,TipoTecido,QuantItem) VALUES ("Camisa Slim","Brooksfield",100.00,"Algodão",4);

-- Verificar a Inserção dos Dados
SELECT * from tb_BrechoGen;

-- Query de Atualização de Registro
UPDATE tb_BrechoGen set QuantItem =5.0  where id=7;

-- Queries de filtragem de dados
SELECT * from tb_BrechoGen where PrecoUnit>50.00;

SELECT * from tb_BrechoGen where PrecoUnit<=50.00;

SELECT * from tb_BrechoGen where id<=2;

-- Queries de Deleção de Dados
set sql_safe_updates = 0;

DELETE from tb_BrechoGen where id=2;
DELETE from tb_BrechoGen where id=3;

SELECT * from tb_BrechoGen;