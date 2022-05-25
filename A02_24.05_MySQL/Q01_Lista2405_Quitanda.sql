-- Criar banco de dados da Quitanda
CREATE DATABASE db_QGen;

-- Tabela de Cadastro dos Itens
USE db_QGen;
CREATE TABLE tb_ProdQGen
(
	-- Inserção de Atributos
    id bigint auto_increment,
    NomeItem varchar(50),
    Categoria varchar (50),
    PrecoUnit decimal(5,2),
    Unit varchar(20),
    QuantItem decimal(5,2),
    primary key (id)
);

SELECT * from tb_ProdQGen;

-- Registro de Produtos
INSERT INTO tb_ProdQGen (NomeItem,Categoria,PrecoUnit,Unit,QuantItem) VALUES ("Melancia","Frutas",8.00,"kg",.8);
INSERT INTO tb_ProdQGen (NomeItem,Categoria,PrecoUnit,Unit,QuantItem) VALUES ("Alface","Verduras",3.25,"Unidade",2.0);
INSERT INTO tb_ProdQGen (NomeItem,Categoria,PrecoUnit,Unit,QuantItem) VALUES ("Beterraba","Legumes",8.20,"kg",.8);
INSERT INTO tb_ProdQGen (NomeItem,Categoria,PrecoUnit,Unit,QuantItem) VALUES ("Abacaxi","Frutas",5.39,"Unidade",2.0);
INSERT INTO tb_ProdQGen (NomeItem,Categoria,PrecoUnit,Unit,QuantItem) VALUES ("Couve-Manteiga","Verduras",4.39,"Unidade",1.0);
INSERT INTO tb_ProdQGen (NomeItem,Categoria,PrecoUnit,Unit,QuantItem) VALUES ("Tomate","Legumes",7.99,"kg",.650);
INSERT INTO tb_ProdQGen (NomeItem,Categoria,PrecoUnit,Unit,QuantItem) VALUES ("Mamão","Frutas",8.99,"kg",1.250);
INSERT INTO tb_ProdQGen (NomeItem,Categoria,PrecoUnit,Unit,QuantItem) VALUES ("Salsa","Verduras",3.39,"Unidade",1.0);

-- Query de Atualização de Registro
UPDATE tb_ProdQGen set QuantItem =1.4  where id=3;

-- Query de filtragem de dados
SELECT * from tb_ProdQGen where Categoria="Frutas";

SELECT * from tb_ProdQGen where Categoria="Legumes";

set sql_safe_updates = 0;

DELETE from tb_ProdQGen where Categoria="Verduras";

SELECT * from tb_ProdQGen;