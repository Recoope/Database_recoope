CREATE TABLE Empresa ( 
    cnpj CHAR(14) PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,    
    email VARCHAR(100) NOT NULL,  
    senha VARCHAR(15) NOT NULL CHECK (LENGTH(senha)>=8),
    telefone VARCHAR(20) DEFAULT NULL 
); 

CREATE TABLE Endereco ( 
    id INT PRIMARY KEY NOT NULL,
    numero INT NOT NULL,  
    complemento VARCHAR(50) DEFAULT NULL,  
    cep VARCHAR(9) NOT NULL,   
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,      
    logradouro VARCHAR(100) DEFAULT NULL,  
    estado VARCHAR(50) NOT NULL,
    dados_status BOOLEAN DEFAULT TRUE,
    status VARCHAR(10) DEFAULT 'Ativo'  
); 

CREATE TABLE Cooperativa ( 
    cnpj CHAR(14) PRIMARY KEY NOT NULL,   
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,  
    senha VARCHAR(15) NOT NULL CHECK(LENGTH(senha)>=8),  
    telefone VARCHAR(20) DEFAULT NULL,
    imagem bytea DEFAULT NULL,
    dados_status BOOLEAN DEFAULT TRUE,
    status VARCHAR(10) DEFAULT 'Ativo'  
      
); 

CREATE TABLE Leilao ( 
    id INT PRIMARY KEY NOT NULL,  
    data_inicio DATE DEFAULT CURRENT_DATE,  
    data_fim DATE NOT NULL,  
    valor_inicial REAL DEFAULT 1.0,
    id_endereco INT NOT NULL,  
    id_cooperativa CHAR(14) NOT NULL,
    dados_status BOOLEAN DEFAULT TRUE,
    status VARCHAR(10) DEFAULT 'Ativo',
    FOREIGN KEY(id_endereco) REFERENCES Endereco(id),
    FOREIGN KEY(id_cooperativa) REFERENCES Cooperativa(cnpj) 
); 

CREATE TABLE Lance ( 
    id INT PRIMARY KEY NOT NULL,  
    valor REAL NOT NULL,  
    data_lance DATE DEFAULT CURRENT_DATE,  
    id_leilao INT NOT NULL,  
    id_empresa CHAR(14) NOT NULL,
    FOREIGN KEY(id_leilao) REFERENCES Leilao(id),
    FOREIGN KEY(id_empresa) REFERENCES Empresa(cnpj)
); 

CREATE TABLE Produto (
    id INT PRIMARY KEY NOT NULL,  
    material VARCHAR(30) NOT NULL,  
    peso REAL NOT NULL,   
    id_leilao INT NOT NULL,
    dados_status BOOLEAN DEFAULT TRUE,
    status VARCHAR(10) DEFAULT 'Ativo',
    FOREIGN KEY(id_leilao) REFERENCES Leilao(id) 
); 

CREATE TABLE Imagens ( 
    id INT PRIMARY KEY NOT NULL,  
    imagem bytea DEFAULT NULL,  
    id_produto INT NOT NULL,
    dados_status BOOLEAN DEFAULT TRUE,
    status VARCHAR(10) DEFAULT 'Ativo',  
    FOREIGN KEY(id_produto) REFERENCES Produto(id)
);