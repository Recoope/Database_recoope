CREATE TABLE Empresa ( 
    cnpj CHAR(14) PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,    
    email VARCHAR(100) NOT NULL,  
    senha VARCHAR(15) NOT NULL CHECK (LENGTH(senha)>=8),
    telefone VARCHAR(13) DEFAULT 'nulo'      
); 

CREATE TABLE Endereco ( 
    id_endereco INT PRIMARY KEY NOT NULL,
    numero INT NOT NULL,  
    complemento VARCHAR(50) DEFAULT NULL,  
    cep VARCHAR(9) NOT NULL,   
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,      
    logradouro VARCHAR(100) DEFAULT 'nulo',  
    estado VARCHAR(50) NOT NULL  
); 

CREATE TABLE Cooperativa ( 
    id_cooperativa INT PRIMARY KEY NOT NULL,
    cnpj CHAR(14) NOT NULL CHECK (LENGTH(cnpj) = 14),   
    nome VARCHAR(100) NOT NULL,  
    email VARCHAR(100) NOT NULL,  
    senha VARCHAR(15) NOT NULL CHECK(LENGTH(senha)>=8),  
    telefone VARCHAR(13) DEFAULT 'nulo'  
); 

CREATE TABLE Leilao ( 
    id_leilao INT PRIMARY KEY NOT NULL,  
    data_inicio DATE DEFAULT CURRENT_DATE,  
    data_fim DATE DEFAULT CURRENT_DATE,  
    valor_inicial REAL DEFAULT 0.0,
    detalhes VARCHAR(300) DEFAULT 'nulo',
    hora_fim TIME DEFAULT CURRENT_TIME,
    ativo BOOLEAN NOT NULL,
    id_endereco INT NOT NULL,  
    id_cooperativa INT NOT NULL,
    FOREIGN KEY(id_endereco) REFERENCES Endereco(id_endereco),
    FOREIGN KEY(id_cooperativa) REFERENCES Cooperativa(id_cooperativa)
); 

CREATE TABLE Lance ( 
    id_lance INT PRIMARY KEY NOT NULL,  
    valor REAL NOT NULL,  
    data_lance DATE DEFAULT CURRENT_DATE,  
    id_leilao INT NOT NULL,  
    id_empresa CHAR(14) NOT NULL,
    FOREIGN KEY(id_leilao) REFERENCES Leilao(id_leilao),
    FOREIGN KEY(id_empresa) REFERENCES Empresa(cnpj)
); 

CREATE TABLE Produto (
    id_produto INT PRIMARY KEY NOT NULL,  
    material VARCHAR(30) DEFAULT 'nulo',  
    peso REAL NOT NULL,   
    id_leilao INT NOT NULL,
    FOREIGN KEY(id_leilao) REFERENCES Leilao(id_leilao)
); 

CREATE TABLE Imagens ( 
    id_imagem INT PRIMARY KEY NOT NULL,  
    url VARCHAR(500) NOT NULL,  
    id_produto INT NOT NULL,
    FOREIGN KEY(id_produto) REFERENCES Produto(id_produto)
);