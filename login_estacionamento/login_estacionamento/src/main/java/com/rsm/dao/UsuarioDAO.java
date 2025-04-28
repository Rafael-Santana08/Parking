package com.rsm.dao;

import com.rsm.model.Usuario;
import com.rsm.util.DatabaseConnection;
import java.sql.*;

// Classe DAO (Data Access Object) para operações relacionadas a usuários
// Responsável pela autenticação e operações no banco de dados
public class UsuarioDAO {
    // Método para autenticar usuário no sistema
    // Retorna objeto Usuario se autenticação for bem sucedida, null caso contrário
    public Usuario autenticar(String login, String senha) {
        // Query SQL preparada para evitar SQL Injection
        String sql = "SELECT * FROM usuarios WHERE login = ? AND senha = ?";
        
        // Utiliza try-with-resources para fechamento automático das conexões
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            // Define os parâmetros da query de forma segura
            stmt.setString(1, login);
            stmt.setString(2, senha);
            
            // Executa a query e processa o resultado
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    // Cria e popula objeto Usuario com dados do banco
                    Usuario usuario = new Usuario();
                    usuario.setId(rs.getInt("id"));
                    usuario.setNome(rs.getString("nome"));
                    usuario.setLogin(rs.getString("login"));
                    usuario.setNivelAcesso(rs.getString("nivel_acesso"));
                    return usuario;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}