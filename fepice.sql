-- EQUIPE: Danyllo Aniceto e Pedro Cruz

create database FEPICE;

use FEPICE;

create table Cliente(
	idCliente int primary key auto_increment,
    nome varchar(32) not null,
    telefone varchar(11) not null,
    endereco varchar(64)
);

create table Atendente(
	idAtendente int primary key auto_increment,
    nome varchar(32) not null,
    telefone varchar(11) not null,
    salario float not null,
    clt varchar(6) not null,
    endereco varchar(64),
    idade date
);

create table Entregador(
	idEntregador int primary key auto_increment,
    nome varchar(32) not null,
    telefone varchar(11) not null,
    cnh bigint not null,
    salario float not null,
    veiculo varchar(32),
    idade date,
    endereco varchar(64)
);

create table Gerente(
	idGerente int primary key auto_increment,
    nome varchar(32) not null,
    telefone varchar(11) not null,
    salario float not null,
    nivelEducacao varchar(32),
    idade date,
    endereco varchar(64)
);

create table Fornecedor(
	idFornecedor int primary key auto_increment,
    nome varchar(32) not null,
    tipoProduto enum('Açaí','Sorvete','Outro'),
	telefone varchar(11) not null,
    dataFornecimento date not null,
    pagamento float not null,
    idGerente int,
    foreign key Fornecedor(idGerente) references Gerente(idGerente)
);

create table Produto(
	idProduto int primary key auto_increment,
    nome varchar(64) not null,
    preco float not null,
    estoque int,
    dataValidade date,
	idFornecedor int,
    foreign key Produto(idFornecedor) references Fornecedor(idFornecedor)
);

create table Acai(
	idAcai int primary key auto_increment,
    nome varchar(64) not null,
    preco float not null,
    estoque int,
    dataValidade date,
    combinacao set('Leite em Pó','Leite Condensado','Paçoca','Spaceball','Disquete','Mousse de Morango','Mousse de Maracujá','Ovomaltine','Granulado'),
    tamanhoCopo int,
    fecharCopo boolean,
	idFornecedor int,
    foreign key Produto(idFornecedor) references Fornecedor(idFornecedor)
);

create table Sorvete(
	idSorvete int primary key auto_increment,
    nome varchar(64) not null,
    preco float not null,
    estoque int,
    dataValidade date,
    idFornecedor int,
    peso float,
    recipiente enum('Casquinha','Cascão','Copo'),
    foreign key Produto(idFornecedor) references Fornecedor(idFornecedor)
);



CREATE TABLE Pedido (
    idPedido int primary key auto_increment,
    formaPagamento enum('Dinheiro', 'Pix', 'Cartão'),
    formaRetirada enum('Presencial', 'Delivery'),
    idEntregador int,
    idCliente int,
    idAtendente int,
    foreign key (idEntregador) references Entregador(idEntregador),
    foreign key (idCliente) references Cliente(idCliente),
    foreign key (idAtendente) references Atendente(idAtendente)
);



create table PedidoProduto(
	idPedido int,
    idProduto int,
    primary key (idPedido, idProduto),
    foreign key PedidoProduto(idPedido) references Pedido(idPedido),
    foreign key PedidoProduto(idProduto) references Produto(idProduto)
);

create table PedidoAcai(
	idPedido int,
    idAcai int,
    primary key (idPedido, idAcai),
    foreign key PedidoProduto(idPedido) references Pedido(idPedido),
    foreign key PedidoProduto(idAcai) references Acai(idAcai)
);

create table PedidoSorvete(
	idPedido int,
    idSorvete int,
    primary key (idPedido, idSorvete),
    foreign key PedidoProduto(idPedido) references Pedido(idPedido),
    foreign key PedidoProduto(idSorvete) references Sorvete(idSorvete)
);







