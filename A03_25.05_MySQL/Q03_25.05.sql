CREATE DATABASE db_FarmBE;

USE db_FarmBE;

-- Tabela de Produtos
CREATE TABLE tb_Produtos
(
	id bigint auto_increment,
    Item varchar(50),
    Preco decimal(6,2),
    Quant int,
    Marca varchar(50),
    
    -- Chave Primária
    primary key (id),
    
    -- Chave Estrangeira: Referência de um item para uma tabela externa
	-- Fazer Foreign Key - Método 1
	Categoria_id bigint,
    foreign key (Categoria_id) REFERENCES tb_Categoria(id)
    
    -- Fazer Foreign Key - Método 2
	-- Categoria_id bigint REFERENCES tb_categorias(id)
);

-- Tabela de Categorias
CREATE TABLE tb_Categoria
(
	id bigint auto_increment,
    NomeCategoria varchar (50),
    Setor varchar (50),
    
    primary key (id)
);

SELECT * from tb_Produtos;

-- Inserção de dados - Categorias
INSERT INTO tb_Categoria(NomeCategoria,Setor) Values ("Anti-inflamatório","Medicamentos");
INSERT INTO tb_Categoria(NomeCategoria,Setor) Values ("Antibiótico","Medicamentos");
INSERT INTO tb_Categoria(NomeCategoria,Setor) Values ("Suplemento","Fitness");
INSERT INTO tb_Categoria(NomeCategoria,Setor) Values ("Pomada","Medicamentos");
INSERT INTO tb_Categoria(NomeCategoria,Setor) Values ("Perfume","Cosméticos");
INSERT INTO tb_Categoria(NomeCategoria,Setor) Values ("Analgésico","Medicamentos");


SELECT * from tb_Categoria;

-- Inserção de dados - Produtos
INSERT INTO tb_Produtos(Item,Preco, Quant, Marca,Categoria_id) Values ("Ibuprofeno","18.71",2,"Genérico",1);
INSERT INTO tb_Produtos(Item,Preco, Quant, Marca,Categoria_id) Values ("Amoxicilina","45.49",1,"Genérico",2);
INSERT INTO tb_Produtos(Item,Preco, Quant, Marca,Categoria_id) Values ("Creatina","118.79",1,"Genérico",3);
INSERT INTO tb_Produtos(Item,Preco, Quant, Marca,Categoria_id) Values ("Diclofenaco","14.45",1,"Neo Quimica",4);
INSERT INTO tb_Produtos(Item,Preco, Quant, Marca,Categoria_id) Values ("Hidratante Intensivo","48.90",1,"Neutrogena",5);
INSERT INTO tb_Produtos(Item,Preco, Quant, Marca,Categoria_id) Values ("Paracetamol","6.85",2,"Medley",6);
INSERT INTO tb_Produtos(Item,Preco, Quant, Marca,Categoria_id) Values ("Dipirona","8.77",2,"EMS",6);
INSERT INTO tb_Produtos(Item,Preco, Quant, Marca,Categoria_id) Values ("Azitromicina","25.99",2,"Cimed",2);

-- Query de Seleção de Dados específicos
-- Preços maiores que 50
SELECT * from tb_Produtos where Preco>50.00;

-- Preços maiores que 10 e menores que 40
SELECT * from tb_Produtos where Preco>10.00 and Preco<40.00;

-- Itens que contenham a letra C
SELECT * from tb_Produtos where Item LIKE "%C%";

-- Itens que comecem com a letra C
SELECT * from tb_Produtos where Item LIKE "C%";

-- Itens que terminem com a letra A
SELECT * from tb_Produtos where Item LIKE "%A";

-- União de Tabelas com Inner Join        
SELECT * from tb_Produtos TP INNER JOIN tb_Categoria TC ON TP.Categoria_id=TC.id;

-- União de Tabelas com Inner Join com Setor Medicamentos
SELECT * from tb_Produtos TP INNER JOIN tb_Categoria TC ON TP.Categoria_id=TC.id WHERE TC.Setor="Medicamentos";
