-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS estacionamento;
USE estacionamento;

-- Tabela de usuários (funcionários)
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    login VARCHAR(50) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    nivel_acesso ENUM('ADMINISTRADOR', 'OPERADOR') NOT NULL,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Inserir um usuário administrador padrão (senha: admin123)
INSERT INTO usuarios (nome, login, senha, nivel_acesso) 
VALUES ('Administrador', 'admin', 'admin123', 'ADMINISTRADOR');