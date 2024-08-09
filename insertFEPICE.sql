INSERT INTO Cliente (nome, telefone, endereco) VALUES
('João Silva', '11987654321', 'Rua das Flores, 123, São Paulo, SP'),
('Maria Oliveira', '21987654321', 'Avenida Brasil, 456, Rio de Janeiro, RJ'),
('Carlos Souza', '31987654321', 'Rua dos Andradas, 789, Belo Horizonte, MG'),
('Ana Pereira', '41987654321', 'Avenida Paulista, 1011, São Paulo, SP'),
('Pedro Costa', '51987654321', 'Rua XV de Novembro, 1415, Curitiba, PR');


INSERT INTO Atendente (nome, telefone, salario, clt, endereco, idade) VALUES
('Luciana Ferreira', '11998765432', 2500.00, '123456', 'Rua das Palmeiras, 234, São Paulo, SP', '1985-03-14'),
('Ricardo Santos', '21997654321', 2800.50, '234567', 'Avenida Atlântica, 789, Rio de Janeiro, RJ', '1990-07-22'),
('Fernanda Costa', '31996543210', 2650.75, '345678', 'Rua Sete de Setembro, 321, Belo Horizonte, MG', '1987-12-05'),
('Gabriel Lima', '41995432109', 3000.00, '456789', 'Avenida Liberdade, 654, Salvador, BA', '1992-04-18'),
('Patrícia Almeida', '51994321098', 2750.80, '567890', 'Rua das Mangueiras, 567, Curitiba, PR', '1989-09-30');

INSERT INTO Entregador (nome, telefone, cnh, salario, veiculo, idade, endereco) VALUES
('Marcelo Andrade', '11987654321', 12345678901, 3200.00, 'Moto Honda CG 160', '1988-05-17', 'Rua das Acácias, 123, São Paulo, SP'),
('Juliana Ferreira', '21987654322', 23456789012, 3000.50, 'Carro Fiat Fiorino', '1991-08-25', 'Avenida Central, 456, Rio de Janeiro, RJ'),
('Rodrigo Silva', '31987654323', 34567890123, 2800.75, 'Moto Yamaha YBR 125', '1993-11-30', 'Rua das Palmeiras, 789, Belo Horizonte, MG'),
('Renata Souza', '41987654324', 45678901234, 3100.00, 'Carro Volkswagen Saveiro', '1989-03-12', 'Avenida Brasil, 101, Salvador, BA'),
('Fernando Lima', '51987654325', 56789012345, 2900.80, 'Moto Honda Biz 125', '1995-06-22', 'Rua das Flores, 222, Curitiba, PR');

INSERT INTO Gerente (nome, telefone, salario, nivelEducacao, idade, endereco) VALUES
('André Almeida', '11987654326', 8500.00, 'Mestrado em Administração', '1980-04-15', 'Rua das Oliveiras, 150, São Paulo, SP'),
('Mariana Nunes', '21987654327', 9000.00, 'MBA em Gestão de Negócios', '1983-09-10', 'Avenida dos Jacarandás, 300, Rio de Janeiro, RJ');

select idGerente, nome
from Gerente;

INSERT INTO Fornecedor (nome, tipoProduto, telefone, dataFornecimento, pagamento, idGerente) VALUES
('Açaí Tropical', 'Açaí', '11987654321', '2024-05-27', 2500.00, 1),
('Fábrica de Sorvetes', 'Sorvete', '21987654321', '2024-05-28', 3000.00, 2),
('Fornecedor de Toppings', 'Outro', '31987654321', '2024-05-29', 1500.00, 1),
('Atacado de Casquinhas', 'Outro', '41987654321', '2024-05-30', 1800.00, 2),
('Embalagens para Sorvetes', 'Outro', '51987654321', '2024-05-31', 2000.00, 1);

select idFornecedor, nome
from Fornecedor;

INSERT INTO Produto (nome, preco, estoque, dataValidade, idFornecedor) VALUES
('Açaí Natural 500ml', 10.50, 100, '2024-06-30', 6),
('Açaí com Granola 500ml', 12.00, 80, '2024-06-30', 6),
('Açaí com Frutas 500ml', 13.50, 70, '2024-06-30', 6),
('Sorvete de Chocolate 1.5L', 20.00, 50, '2024-07-31', 7),
('Sorvete de Baunilha 1.5L', 18.00, 60, '2024-07-31', 7),
('Sorvete de Morango 1.5L', 19.00, 55, '2024-07-31', 7),
('Cobertura de Chocolate', 8.50, 120, '2024-09-30', 8),
('Cobertura de Morango', 9.00, 110, '2024-09-30', 8),
('Cobertura de Caramelo', 8.00, 130, '2024-09-30', 8),
('Casquinha de Sorvete', 5.00, 200, '2024-12-31', 9),
('Casquinha de Waffle', 6.00, 180, '2024-12-31', 9),
('Casquinha de Chocolate', 5.50, 190, '2024-12-31', 9),
('Embalagem para Pote de Sorvete 500ml', 0.50, 500, '2025-03-31', 10),
('Embalagem para Pote de Sorvete 1L', 0.70, 400, '2025-03-31', 10),
('Embalagem para Pote de Sorvete 2L', 0.90, 300, '2025-03-31', 10),
('Embalagem para Picolé', 0.30, 800, '2025-03-31', 10),
('Embalagem para Sundae', 0.40, 700, '2025-03-31', 10),
('Embalagem para Milkshake', 0.60, 600, '2025-03-31', 10),
('Embalagem para Sorvete no Cone', 0.20, 900, '2025-03-31', 10),
('Açaí Congelado 1kg', 15.00, 40, '2024-06-30', 6);

INSERT INTO Acai (nome, preco, estoque, dataValidade, combinacao, tamanhoCopo, fecharCopo, idFornecedor) VALUES
('Açaí Tradicional 300ml', 8.00, 50, '2024-06-30', 'Leite em Pó', 300, 1, 6),
('Açaí com Leite Condensado 300ml', 9.00, 40, '2024-06-30', 'Leite Condensado', 300, 1, 6),
('Açaí com Paçoca 300ml', 10.00, 35, '2024-06-30', 'Paçoca', 300, 1, 6),
('Açaí com Spaceball 300ml', 11.00, 30, '2024-06-30', 'Spaceball', 300, 1, 6),
('Açaí com Disquete 300ml', 11.50, 25, '2024-06-30', 'Disquete', 300, 1, 6),
('Açaí com Mousse de Morango 300ml', 12.00, 20, '2024-06-30', 'Mousse de Morango', 300, 1, 6),
('Açaí com Mousse de Maracujá 300ml', 12.50, 15, '2024-06-30', 'Mousse de Maracujá', 300, 1, 6),
('Açaí com Ovomaltine 300ml', 13.00, 10, '2024-06-30', 'Ovomaltine', 300, 1, 6),
('Açaí com Granulado 300ml', 13.50, 5, '2024-06-30', 'Granulado', 300, 1, 6),
('Açaí com Leite em Pó e Leite Condensado 500ml', 15.00, 20, '2024-06-30', 'Leite em Pó,Leite Condensado', 500, 1, 6);

INSERT INTO Sorvete (nome, preco, estoque, dataValidade, idFornecedor, peso, recipiente) VALUES
('Sorvete de Chocolate 100g (Casquinha)', 5.00, 50, '2024-06-30', 7, 100, 'Casquinha'),
('Sorvete de Baunilha 100g (Casquinha)', 4.50, 60, '2024-06-30', 7, 100, 'Casquinha'),
('Sorvete de Morango 100g (Casquinha)', 4.50, 55, '2024-06-30', 7, 100, 'Casquinha'),
('Sorvete de Chocolate 200g (Cascão)', 8.00, 40, '2024-06-30', 7, 200, 'Cascão'),
('Sorvete de Baunilha 200g (Cascão)', 7.50, 45, '2024-06-30', 7, 200, 'Cascão'),
('Sorvete de Morango 200g (Cascão)', 7.50, 40, '2024-06-30', 7, 200, 'Cascão'),
('Sorvete de Frutas Tropicais 300ml (Copo)', 10.00, 30, '2024-06-30', 7, 300, 'Copo');

select idCliente
from Cliente;

select idEntregador
from Entregador;

select idAtendente
from atendente;

INSERT INTO Pedido (formaPagamento, formaRetirada, idEntregador, idCliente, idAtendente) VALUES
('Dinheiro', 'Presencial', NULL, 1, 2),
('Pix', 'Delivery', 1, 2, 5),
('Cartão', 'Presencial', NULL, 3, 1),
('Dinheiro', 'Delivery', 2, 4, 2),
('Cartão', 'Delivery', 3, 5, 2),
('Pix', 'Presencial', NULL, 1, 4),
('Dinheiro', 'Delivery', 4, 2, 5),
('Cartão', 'Presencial', NULL, 3, 1),
('Pix', 'Delivery', 5, 4, 3),
('Dinheiro', 'Presencial', NULL, 5, 2);

select idPedido
from Pedido;

select idProduto
from Produto;

INSERT INTO PedidoProduto (idPedido, idProduto) VALUES
(1, 1),
(1, 2),
(3, 3),
(3, 20),
(6, 4),
(6, 5),
(8, 6),
(8, 7),
(10, 8),
(10, 9),
(2, 10),
(2, 11),
(4, 12),
(4, 13),
(5, 14),
(5, 15),
(7, 16),
(7, 17),
(9, 18),
(9, 19);

select idSorvete
from Sorvete;

INSERT INTO PedidoAcai (idPedido, idAcai) VALUES
(1, 1),
(1, 2),
(3, 3),
(3, 4),
(6, 5),
(6, 6),
(8, 7),
(8, 8),
(10, 9),
(10, 10);

INSERT INTO PedidoSorvete (idPedido, idSorvete) VALUES
(1, 1),
(1, 2),
(3, 3),
(3, 4),
(6, 5),
(6, 6),
(8, 7);








