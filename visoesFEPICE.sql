-- visão 1
-- Propósito: ajuda a identificar produtos cujo prazo de validade está se aproximando (dentro dos próximos 30 dias). 
-- Isso é útil para gerenciar o estoque e evitar perdas de produtos vencidos.

CREATE VIEW vw_ProdutosPrestesAVencer AS
SELECT 
    idProduto, 
    nome, 
    preco, 
    estoque, 
    dataValidade,
    DATEDIFF(dataValidade, CURDATE()) AS diasRestantes
FROM Produto
WHERE DATEDIFF(dataValidade, CURDATE()) <= 30;

select * from vw_ProdutosPrestesAVencer;

-- visão 2
-- Propósito: fornece um histórico dos pedidos feitos por cada cliente, mostrando uma lista de produtos pedidos em cada pedido. 
-- Isso é útil para analisar os hábitos de compra dos clientes.

CREATE VIEW vw_HistoricoPedidosCliente AS
SELECT 
    c.idCliente, 
    c.nome AS clienteNome,
    pe.idPedido,
    GROUP_CONCAT(p.nome SEPARATOR ', ') AS produtos
FROM Cliente c
JOIN Pedido pe ON c.idCliente = pe.idCliente
JOIN PedidoProduto pp ON pe.idPedido = pp.idPedido
JOIN Produto p ON pp.idProduto = p.idProduto
GROUP BY c.idCliente, c.nome, pe.idPedido;

select * from vw_HistoricoPedidosCliente;


--  visão 3
-- Propósito: fornece um resumo do desempenho dos entregadores, mostrando quantos pedidos cada entregador completou e o valor total desses pedidos. 
-- Isso é útil para avaliar a eficiência dos entregadores e tomar decisões de logística e recompensas.

CREATE VIEW vw_DesempenhoEntregadores AS
SELECT 
    e.idEntregador, 
    e.nome AS nomeEntregador,
    COUNT(pe.idPedido) AS totalPedidos,
    SUM(p.preco) AS valorTotalPedidos
FROM Entregador e
JOIN Pedido pe ON e.idEntregador = pe.idEntregador
JOIN PedidoProduto pp ON pe.idPedido = pp.idPedido
JOIN Produto p ON pp.idProduto = p.idProduto
GROUP BY e.idEntregador, e.nome;

SELECT * FROM vw_DesempenhoEntregadores;