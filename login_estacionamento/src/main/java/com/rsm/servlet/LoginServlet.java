package com.rsm.servlet;

import com.rsm.dao.UsuarioDAO;
import com.rsm.model.Usuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        
        UsuarioDAO dao = new UsuarioDAO();
        Usuario usuario = dao.autenticar(login, senha);
        
        if (usuario != null) {
            HttpSession session = request.getSession();
            session.setAttribute("usuario", usuario);
            response.sendRedirect("painel.jsp");
        } else {
            request.setAttribute("erro", "Login ou senha inválidos");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
}