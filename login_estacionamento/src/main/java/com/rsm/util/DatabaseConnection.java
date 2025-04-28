package com.rsm.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

// Classe utilitária para gerenciar conexões com o banco de dados
// Implementa o padrão Singleton para garantir uma única instância de conexão
public class DatabaseConnection {
    // Constantes de configuração do banco de dados
    private static final String URL = "jdbc:mysql://localhost:3306/estacionamento";
    private static final String USER = "root";
    private static final String PASSWORD = "";
    
    // Método para obter conexão com o banco de dados
    // Utiliza try-with-resources para gerenciamento automático de recursos
    public static Connection getConnection() throws SQLException {
        try {
            // Carrega o driver do MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Retorna uma nova conexão com o banco
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            throw new SQLException("Driver MySQL não encontrado", e);
        }
    }
}