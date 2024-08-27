INSERT INTO Empresa (cnpj, nome, email, senha, telefone) VALUES
(12345678901234, 'Empresa A', 'empresaA@gmail.com', 'senha1234', '1234567890');
(23456789012345, 'Empresa B', 'empresaB@gmail.com', 'senha5678', '0987654321');
(34567890123456, 'Empresa C', 'empresaC@gmail.com', 'senha7654', '9846224546');
(45678901234567, 'Empresa D', 'empresaD@gmail.com', 'senha4690', '3852935568');
(56789012345678, 'Empresa E', 'empresaE@gmail.com', 'senha9831', '5467892431');


-- Inserir dados na tabela Endereco
INSERT INTO Endereco (id_endereco, complemento, cep, bairro, numero, cidade) VALUES
(1, 'Casa', '12345-678', 'Bairro A', 10, 'Cidade A');
(2, 'Apto', '98765-432', 'Bairro B', 20, 'Cidade B');
(3, 'Bloco B', '94215-123', 'Bairro C', 30, 'Cidade C');
(4, 'Casa', '56932-245', 'Bairro D', 40, 'Cidade D');
(5, 'Sobrado', '34512-543', 'Bairro E', 50, 'Cidade E');

-- Inserir dados na tabela Cooperativa
INSERT INTO Cooperativa (id_cooperativa, nome, email, senha, telefone) VALUES
(1, 'Cooperativa X', 'coopX@gmail.com', 'coop1234', '1234567890');
(2, 'Cooperativa Y', 'coopY@gmail.com', 'coop5678', '0987654321');
(3, 'Cooperativa Z', 'coopZ@gmail.com', 'coop3453', '2345127890');
(4, 'Cooperativa A', 'coopA@gmail.com', 'coop7345', '3456789102');
(5, 'Cooperativa V', 'coopV@gmail.com', 'coop5432', '6789123405');

-- Inserir dados na tabela Leilao
INSERT INTO Leilao (id_leilao, valor_inicial, data_inicio, data_fim, id_endereco, id_cooperativa) VALUES
(1, 1000.00, '2024-08-01', '2024-08-15', 1, 1);
(2, 2000.00, '2024-09-01', '2024-09-15', 2, 2);
(3, 3000.00, '2024-10-01', '2024-10-15', 3, 3);
(4, 4000.00, '2024-11-01', '2024-11-15', 4, 4);
(5, 5000.00, '2024-12-01', '2024-12-15', 5, 5);

-- Inserir dados na tabela Lance
INSERT INTO Lance (id_lance, valor, data_lance, id_leilao, id_empresa) VALUES
(1, 1200.00, '2024-08-02', 1, 12345678901234);
(2, 2500.00, '2024-09-02', 2, 23456789012345);
(3, 4300.00, '2024-10-02', 3, 34567890123456);
(4, 2500.00, '2024-11-02', 4, 45678901234567);
(5, 2200.00, '2024-12-02', 5, 56789012345678);

-- Inserir dados na tabela Produto
INSERT INTO Produto (id_produto, material, peso, id_leilao) VALUES
(1, 'aluminio', 500.0, 1);
(2, 'cobre', 750.0, 2);
(3, 'plastico', 560.0, 3);
(4, 'vidro', 650.0, 4);
(5, 'papelao', 1500.0, 5);

-- Inserir dados na tabela Imagens
INSERT INTO Imagens (id, url, id_produto) VALUES
(1, 'http://example.com/imagem1.jpg', 1);
(2, 'http://example.com/imagem2.jpg', 2);
(3, 'http://example.com/imagem3.jpg', 3);
(4, 'http://example.com/imagem4.jpg', 4);
(5, 'http://example.com/imagem5.jpg', 5);
