-- Criação e Seleção da Base de Dados
CREATE DATABASE db_Hortifruti_ComNectar;
USE db_Hortifruti_ComNectar;

-- Tabela de Categorias
CREATE TABLE tb_Categoria
(
	id bigint auto_increment,
    Tipo varchar(255), 		-- ("Frutas","Verduras","Legumes")
    Origem varchar(255), 	-- ("Agricultura Familiar", "Agroecológico", "Sintrópico")
    primary key (id)
);

-- Tabela de Produtos
CREATE TABLE tb_Produtos
(
	id bigint auto_increment,
    Nome varchar(50),
    Preco decimal(6,2),
    Quant decimal(6,3),
    
    -- Chave Primária
    primary key (id),
    
    -- Chave Estrangeira: Referência de um item para uma tabela externa
	-- Fazer Foreign Key - Método 1
	Categoria_id bigint,
    foreign key (Categoria_id) REFERENCES tb_Categoria(id)
);

SELECT * from tb_Produtos;

SELECT * from tb_Categoria;

-- Inserção de dados - Categoria
INSERT INTO tb_Categoria(Tipo,Origem) VALUES ("Frutas","Agricultura Familiar");
INSERT INTO tb_Categoria(Tipo,Origem) VALUES ("Verduras","Agricultura Familiar");
INSERT INTO tb_Categoria(Tipo,Origem) VALUES ("Legumes","Agricultura Familiar");

INSERT INTO tb_Categoria(Tipo,Origem) VALUES ("Frutas","Agroecológico");
INSERT INTO tb_Categoria(Tipo,Origem) VALUES ("Verduras","Agroecológico");
INSERT INTO tb_Categoria(Tipo,Origem) VALUES ("Legumes","Agroecológico");

INSERT INTO tb_Categoria(Tipo,Origem) VALUES ("Frutas","Sintrópico");
INSERT INTO tb_Categoria(Tipo,Origem) VALUES ("Verduras","Sintrópico");
INSERT INTO tb_Categoria(Tipo,Origem) VALUES ("Legumes","Sintrópico");

-- Inserção de dados - Produtos
INSERT INTO tb_Produtos(Nome,Preco,Quant,Categoria_id) VALUES ("Maçã Gala",7.99,1.000,4);
INSERT INTO tb_Produtos(Nome,Preco,Quant,Categoria_id) VALUES ("Banana Prata",5.99,1.000,1);
INSERT INTO tb_Produtos(Nome,Preco,Quant,Categoria_id) VALUES ("Alface",4.99,2.000,5);
INSERT INTO tb_Produtos(Nome,Preco,Quant,Categoria_id) VALUES ("Beterraba",7.99,1.000,9);
INSERT INTO tb_Produtos(Nome,Preco,Quant,Categoria_id) VALUES ("Cenoura",8.99,1.400,6);
INSERT INTO tb_Produtos(Nome,Preco,Quant,Categoria_id) VALUES ("Tomate",10.99,0.750,7);
INSERT INTO tb_Produtos(Nome,Preco,Quant,Categoria_id) VALUES ("Pepino",4.99,0.900,8);
INSERT INTO tb_Produtos(Nome,Preco,Quant,Categoria_id) VALUES ("Couve-Manteiga",2.99,3.000,2);

-- Seleções de Verificação
SELECT * from tb_Categoria;

SELECT * from tb_Produtos;

-- Query de Seleção de Dados específicos
-- Preços maiores que R$7,00
SELECT * from tb_Produtos where Preco<7.00;

-- Preços maiores que R$5,00 e menores que R$10.00
SELECT * from tb_Produtos where Preco>5.00 and Preco<10.00;

-- Itens que contenham a letra C
SELECT * from tb_Produtos where RecheioPizza LIKE "%C%";

-- Query de Seleção com Inner Join

SELECT * from tb_Produtos TP INNER JOIN tb_Categoria TC ON TP.Categoria_id=TC.id;

SELECT * from tb_Produtos TP INNER JOIN tb_Categoria TC ON TP.Categoria_id=TC.id WHERE TC.Tipo LIKE "%Frutas%" AND TC.Origem LIKE "%Sintr%";