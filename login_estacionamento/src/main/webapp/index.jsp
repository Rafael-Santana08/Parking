<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login - Estacionamento</title>
        <link rel="stylesheet" href="css/styles.css">
    </head>
    <body>
        <div class="login-container">
            <h1>Login</h1>
            <% if (request.getAttribute("erro") != null) { %>
                <div class="error-message">
                    <%= request.getAttribute("erro") %>
                </div>
            <% } %>
            <form class="login-form" action="login" method="POST">
                <label for="login">Email</label>
                <input 
                    type="text" 
                    id="login" 
                    name="login" 
                    placeholder="Insira o seu email" 
                    required
                />

                <label for="senha">Senha</label>
                <input 
                    type="password" 
                    id="senha" 
                    name="senha" 
                    placeholder="Insira a sua senha" 
                    required
                />

                <button type="submit">ENTRAR</button>
            </form>
            <a href="#" class="forgot-password">Esqueceu a senha?</a>
        </div>
    </body>
</html>