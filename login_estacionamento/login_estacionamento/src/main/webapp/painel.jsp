<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.rsm.model.Usuario"%>
<%
    Usuario usuario = (Usuario) session.getAttribute("usuario");
    if (usuario == null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Vagas - Estacionamento</title>
    <link rel="stylesheet" href="css/painel.css">
</head>
<body>
    <h1>LOGIN REALIZADO COM SUCESSO</h1>
</body>
</html>