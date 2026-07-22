-- TRABALHO PRÁTICO - BANCO DE DADOS 
-- Gabriel Cotrim Miron (a2768356) e Hugo Pessoni Batista (a2768380) 

/* ============================================================ 

================   CRIAÇÃO DO BANCO   =======================

 */ CREATE DATABASE barbershop_db; 

    USE barbershop_db; /*

================   TABELA: ENDERECO   =======================  

*/ CREATE TABLE endereco (     
  endereco_id INT PRIMARY KEY AUTO_INCREMENT,     
  rua VARCHAR(150) NOT NULL,     
  numero VARCHAR(20) NOT NULL,    
  bairro VARCHAR(80) NOT NULL,     
  cidade VARCHAR(80) NOT NULL,     
  estado VARCHAR(2) NOT NULL,     
  cep VARCHAR(10) NOT NULL ); 

/* ============================================================   

==================   TABELA: USUARIO   ======================  
 
*/ CREATE TABLE usuario (     
  usuario_id INT PRIMARY KEY AUTO_INCREMENT,     
  nome VARCHAR(150) NOT NULL,     
  email VARCHAR(150) NOT NULL UNIQUE,     
  data_nascimento DATE,    
  endereco_id INT,     
  login VARCHAR(50) NOT NULL UNIQUE,     
  senha VARCHAR(255) NOT NULL,     
  tipo ENUM('Administrador','Funcionario') NOT NULL DEFAULT 'Funcionario',     
  CONSTRAINT fk_usuario_endereco FOREIGN KEY (endereco_id) REFERENCES endereco(endereco_id) ); 

/* ============================================================  

================   TABELA: CLIENTE   ========================    
 
*/ CREATE TABLE cliente (     
  cliente_id INT PRIMARY KEY AUTO_INCREMENT,     
  nome VARCHAR(150) NOT NULL,     
  email VARCHAR(150) NOT NULL,    
  data_nascimento DATE,     
  cpf VARCHAR(14) NOT NULL UNIQUE,     
  endereco_id INT,     
  CONSTRAINT fk_cliente_endereco FOREIGN KEY (endereco_id) REFERENCES endereco(endereco_id) ); 

/* ============================================================  

================   TABELA: TELEFONE   =======================   
 
*/ CREATE TABLE telefone (     
  telefone_id INT PRIMARY KEY AUTO_INCREMENT,     
  numero VARCHAR(30) NOT NULL,     
  usuario_id INT NULL,     
  cliente_id INT NULL,     
  CONSTRAINT fk_telefone_usuario FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),    
  CONSTRAINT fk_telefone_cliente FOREIGN KEY (cliente_id) REFERENCES cliente(cliente_id) ); 

/* ============================================================ 

================   TABELA: SERVICO   ========================   
 
*/ CREATE TABLE servico (     
  servico_id INT PRIMARY KEY AUTO_INCREMENT,     
  nome VARCHAR(120) NOT NULL,     
  descricao TEXT,     
  valor DECIMAL(10,2) NOT NULL ); 

/* ============================================================ 

==============   TABELA: AGENDAMENTO   ======================  

 */ CREATE TABLE agendamento (     
  agendamento_id INT PRIMARY KEY AUTO_INCREMENT,     
  data_hora DATETIME NOT NULL,     
  servico_id INT NOT NULL,     
  funcionario_id INT NOT NULL,     
  cliente_id INT NOT NULL,     
  status ENUM('ativo','concluido','cancelado') NOT NULL DEFAULT 'ativo',     
  CONSTRAINT fk_agendamento_servico FOREIGN KEY (servico_id) REFERENCES servico(servico_id),     
  CONSTRAINT fk_agendamento_funcionario FOREIGN KEY (funcionario_id) REFERENCES usuario(usuario_id),     
  CONSTRAINT fk_agendamento_cliente FOREIGN KEY (cliente_id) REFERENCES cliente(cliente_id) );
