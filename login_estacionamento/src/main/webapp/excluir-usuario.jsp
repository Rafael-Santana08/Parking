<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Excluir Funcionário</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>    
    <div class="cadastro-container">
        <div class="form-container">
            <h2>Excluir Contato</h2>
                <!-- Confirmação de exclusão -->
                <div class="confirmation-box">
                    <h3>Confirmar Exclusão</h3>
                    <p>Você está prestes a excluir o seguinte contato:</p>
                    
                    <div class="user-info">
                        <p><strong>Nome:</strong></p>
                        <p><strong>Email:</strong></p>
                        <p><strong>Celular:</strong></p>
                    </div>
                    
                    <p class="warning">Esta ação não pode ser desfeita. Deseja continuar?</p>
                    
                    <div class="button-group">
                        <form action="excluir.jsp" method="get">
                            <input type="hidden" name="confirmar" value="true">
                            <button type="submit" class="btn-danger">Confirmar Exclusão</button>
                        </form>
                        <a href="excluir.jsp" class="cancel-btn" style="margin-left: 10px;">Cancelar</a>
                    </div>
                </div>
        </div>
    </div>
</body>
</html>
