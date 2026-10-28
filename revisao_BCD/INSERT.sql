use vendas_informatica;

INSERT INTO cliente (nome_cliente, email, cidade, estado, data_cadastro)
VALUES ("Rubervaldo Sesiano", "RubervaldoSesiano@gmail.com","Jaguaríuna", "São Paulo", "2026/10/28");

use vendas_informatica;

INSERT INTO produtos (nome_produto, categoria, marca, preco_unitario, estoque, ativo, data_cadastro)
VALUES ('MousePad 5POL', 'Acessorios','Lumix', 59.98, 35, '1', '2026-10-28');

/////

INSERT INTO venda(id_produto, id_cliente, data_venda, quantidade, preco_unitario, desconto_percentual)
