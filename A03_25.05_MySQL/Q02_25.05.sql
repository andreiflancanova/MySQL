-- Criação e Seleção da Base de Dados
CREATE DATABASE db_Pizzaria_Legal;
USE db_Pizzaria_Legal;

-- Tabela de Categorias
CREATE TABLE tb_Categoria
(
	id bigint auto_increment,
    Sabor varchar(255), -- ("Doces Promocional","Doces Gourmet","Salgadas Promocional", "Salgadas Gourmet","Veggie Gourmet"),
    primary key (id)
);

-- Tabela de Produtos
CREATE TABLE tb_Pizzas
(
	id bigint auto_increment,
    RecheioPizza varchar(50),
    Preco decimal(6,2),
    Quant int,    
    -- Chave Primária
    primary key (id),
    
    -- Chave Estrangeira: Referência de um item para uma tabela externa
	-- Fazer Foreign Key - Método 1
	Categoria_id bigint,
    foreign key (Categoria_id) REFERENCES tb_Categoria(id)
);

SELECT * from tb_Pizzas;

SELECT * from tb_Categoria;

-- Inserção de dados - Categoria
INSERT INTO tb_Categoria(Sabor) VALUES ("Doce Promo");
INSERT INTO tb_Categoria(Sabor) VALUES ("Salgada Promo");
INSERT INTO tb_Categoria(Sabor) VALUES ("Doce Gourmet");
INSERT INTO tb_Categoria(Sabor) VALUES ("Salgada Gourmet");

-- Inserção de dados - Pizzas
INSERT INTO tb_Pizzas(RecheioPizza,Preco,Quant,Categoria_id) VALUES ("Brigadeiro",48.90,2,1);
INSERT INTO tb_Pizzas(RecheioPizza,Preco,Quant,Categoria_id) VALUES ("Nutella com M&M's",68.90,1,3);
INSERT INTO tb_Pizzas(RecheioPizza,Preco,Quant,Categoria_id) VALUES ("Calabresa",48.90,1,2);
INSERT INTO tb_Pizzas(RecheioPizza,Preco,Quant,Categoria_id) VALUES ("Tribeca",72.90,1,4);
INSERT INTO tb_Pizzas(RecheioPizza,Preco,Quant,Categoria_id) VALUES ("Brócolis com Tomate Cereja",54.90,2,4);
INSERT INTO tb_Pizzas(RecheioPizza,Preco,Quant,Categoria_id) VALUES ("Carne de Panela",64.90,3,4);
INSERT INTO tb_Pizzas(RecheioPizza,Preco,Quant,Categoria_id) VALUES ("Leite Ninho com Côco",56.90,2,3);
INSERT INTO tb_Pizzas(RecheioPizza,Preco,Quant,Categoria_id) VALUES ("Abóbrinha",52.90,3,2);

-- Seleções de Verificação
SELECT * from tb_Categoria;

SELECT * from tb_Pizzas;

-- Query de Seleção de Dados específicos
-- Preços maiores que 50
SELECT * from tb_Pizzas where Preco>50.00;

-- Preços maiores que 51 e menores que 70
SELECT * from tb_Pizzas where Preco>51.00 and Preco<70.00;

-- Itens que contenham a letra M
SELECT * from tb_Pizzas where RecheioPizza LIKE "%M%";

-- Query de Seleção com Inner Join

SELECT * from tb_Pizzas TP INNER JOIN tb_Categoria TC ON TP.Categoria_id=TC.id;

SELECT * from tb_Pizzas TP INNER JOIN tb_Categoria TC ON TP.Categoria_id=TC.id WHERE TC.Sabor LIKE "%Doce Gourmet%";