DELETE FROM cliente
WHERE id_cliente = 5;

///

DELETE FROM cliente
where estado = "SC";

///

DELETE FROM produto
WHERE marca = "LG";
///

DELETE FROM produtos
WHERE id_produtos in(3, 5, 0);

////

DELETE FROM vendas
WHERE desconto = 0;

////

DELETE FROM vendas
WHERE status = "Cancelada";
