-- 1) Operador agregado MAX

-- Qual nome do produto com o estoque máximo
SELECT nome, estoque
FROM Produto
WHERE estoque = (
    SELECT MAX(estoque)
    FROM Produto
);

-- 2) 2 E 3 tabelas

-- Quais são os nomes e CNH dos entregadores que realizaram pedidos de delivery?

select E.nome, E.cnh
from Entregador E 
join Pedido P ON E.idEntregador = P.idEntregador;

-- Consulta para encontrar os pedidos, os nomes dos clientes e os nomes dos entregadores (se houver):

SELECT Pedido.idPedido, Cliente.nome AS NomeCliente, Entregador.nome AS NomeEntregador
FROM Pedido
JOIN Cliente ON Pedido.idCliente = Cliente.idCliente
LEFT JOIN Entregador ON Pedido.idEntregador = Entregador.idEntregador;

-- 3) Aninhadas

-- Qual é o nome e o telefone do cliente que fez o pedido número 3?

select C.nome, C.telefone
from Cliente C
where C.idCliente = (select C2.idCliente
from Cliente C2, pedido p
where C2.idCliente = p.idCliente and idPedido = 3);

-- Consulta para encontrar o nome do produto mais caro fornecido pelo fornecedor 'Açaí Tropical':
SELECT nome
FROM Produto
WHERE preco = (
    SELECT MAX(preco)
    FROM Produto
    WHERE idFornecedor = (
        SELECT idFornecedor
        FROM Fornecedor
        WHERE nome = 'Açaí Tropical'
    )
);

-- 4) Consulta com HAVING e GROUP BY

-- Consulta para encontrar os clientes que fizeram mais de um pedido:

SELECT Cliente.nome, COUNT(*) AS NumeroPedidos
FROM Pedido
JOIN Cliente ON Pedido.idCliente = Cliente.idCliente
GROUP BY Cliente.nome
HAVING COUNT(*) > 1;



