-- Criar banco de dados
CREATE DATABASE db_ecommerce;

-- Antes de criar tabelas tem que acessar o banco de dados
USE db_ecommerce;

CREATE TABLE tb_produtos
(
	-- Inserção de Colunas
    id bigint auto_increment,
    nome_produto varchar(255),
    valor decimal(8,2),
    marca varchar(255),
    quantidade int,
    cor varchar(255),
    
    primary key (id)
    
);

select * from tb_produtos;

insert into tb_produtos(nome_produto,valor,marca,quantidade,cor) VALUES ("Camiseta",35.99,"Nike",10,"Bege");
insert into tb_produtos(nome_produto,valor,marca,quantidade,cor) VALUES ("Calça",99.99,"Adidas",5,"Preta");
insert into tb_produtos(nome_produto,valor,marca,quantidade,cor) VALUES ("Meia",25.99,"Lupo",8,"Branca");
insert into tb_produtos(nome_produto,valor,marca,quantidade,cor) VALUES ("Cueca",19.99,"Keeper",10,"Bege");
insert into tb_produtos(nome_produto,valor,marca,quantidade,cor) VALUES ("Legging",61.99,"Adidas",2,"Preta");
insert into tb_produtos(nome_produto,valor,marca,quantidade,cor) VALUES ("Moleton",135.99,"Tommy Hillfiger",2,"Branca");
insert into tb_produtos(nome_produto,valor,marca,quantidade,cor) VALUES ("Casaco",179.99,"Adidas",1,"Preta");
insert into tb_produtos(nome_produto,valor,marca,quantidade,cor) VALUES ("Jaqueta de Couro",250.90,"Nike",1,"Branca");

SELECT * from tb_produtos where valor >500;
SELECT * from tb_produtos where valor <500;

-- Comando utilizado para modificar uma coluna na minha tabela
ALTER TABLE tb_produtos
MODIFY COLUMN valor decimal(9,2);
