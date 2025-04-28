package com.rsm.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

// Servlet responsável por gerenciar o processo de logout do sistema
// Mapeia a URL "/logout" para processar requisições de saída
@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    // Processa requisições POST para logout
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtém a sessão atual (se existir)
        HttpSession session = request.getSession(false);
        // Se houver uma sessão ativa, invalida ela
        if (session != null) {
            session.invalidate();
        }
        // Redireciona para a página de login
        response.sendRedirect("index.jsp");
    }
}