CREATE TABLE Empresa ( 
    cnpj CHAR(14) PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,    
    email VARCHAR(100) NOT NULL,  
    senha VARCHAR(64) NOT NULL CHECK (LENGTH(senha) >= 8),
    telefone VARCHAR(20) DEFAULT NULL 
); 

CREATE TABLE Endereco ( 
    id SERIAL PRIMARY KEY NOT NULL,
    numero INT NOT NULL,  
    complemento VARCHAR(50) DEFAULT NULL,  
    cep VARCHAR(9) NOT NULL,   
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,      
    logradouro VARCHAR(100) DEFAULT NULL,  
    estado VARCHAR(2) NOT NULL,
    dados_status VARCHAR(10) DEFAULT 'Ativo',
    ativo VARCHAR(10) DEFAULT 'Ativo'  
); 

CREATE TABLE Cooperativa ( 
    cnpj CHAR(14) PRIMARY KEY NOT NULL,   
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,  
    senha VARCHAR(64) NOT NULL CHECK (LENGTH(senha) >= 8),  
    telefone VARCHAR(20) DEFAULT NULL,
    imagem VARCHAR(500) DEFAULT NULL,
    dados_status VARCHAR(10) DEFAULT 'Ativo',
    ativo VARCHAR(10) DEFAULT 'Ativo'  
);

CREATE TABLE Produto (
    id SERIAL PRIMARY KEY NOT NULL,
    material VARCHAR(30) NOT NULL,
    peso REAL NOT NULL CHECK (peso > 0),
    dados_status VARCHAR(10) DEFAULT 'Ativo',
    ativo VARCHAR(10) DEFAULT 'Ativo'
);

CREATE TABLE Leilao (
    id SERIAL PRIMARY KEY NOT NULL,
    data_inicio DATE DEFAULT CURRENT_DATE,
    data_fim DATE NOT NULL,
    hora_fim TIME NOT NULL,
    detalhe TEXT NOT NULL,
    valor_inicial REAL DEFAULT 1.0 CHECK (valor_inicial > 0),
    ativo VARCHAR(10) DEFAULT 'Ativo',
    dados_status VARCHAR(10) DEFAULT 'Ativo', 
    id_endereco INT NOT NULL,
    id_cooperativa CHAR(14) NOT NULL,
    id_produto INT NOT NULL,
    FOREIGN KEY (id_endereco) REFERENCES Endereco(id),
    FOREIGN KEY (id_cooperativa) REFERENCES Cooperativa(cnpj),
    FOREIGN KEY (id_produto) REFERENCES Produto(id)
); 

CREATE TABLE Lance ( 
    id SERIAL PRIMARY KEY NOT NULL,  
    valor REAL NOT NULL CHECK (valor > 0),  
    data_lance DATE DEFAULT CURRENT_DATE,  
    id_leilao INT NOT NULL,  
    id_empresa CHAR(14) NOT NULL,
    FOREIGN KEY (id_leilao) REFERENCES Leilao(id),
    FOREIGN KEY (id_empresa) REFERENCES Empresa(cnpj)
); 

CREATE TABLE Imagem (
    id SERIAL PRIMARY KEY NOT NULL,  
    imagem VARCHAR(500) DEFAULT NULL,  
    dados_status VARCHAR(10) DEFAULT 'Ativo',
    ativo VARCHAR(10) DEFAULT 'Ativo',
    id_produto INT NOT NULL,  
    FOREIGN KEY (id_produto) REFERENCES Produto(id)
);