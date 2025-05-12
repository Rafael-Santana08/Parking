<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Funcionário</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <div class="cadastro-container">
        <h2>Editar Funcionário</h2>
        <form action="salvar-edicao.jsp" method="post">
            <div class="input-group">
                <label for="nome">Nome completo</label>
                <input type="text" name="nome" id="nome" value="${nome}" required>
            </div>
            <div class="input-group">
                <label for="usuario">Usuário</label>
                <input type="text" name="usuario" id="usuario" value="${usuario}" required>
            </div>
            <div class="input-group">
                <label for="senha">Senha</label>
                <input type="password" name="senha" id="senha" value="${senha}" required>
            </div>
            <div class="input-group">
                <label for="confirmar">Confirmar senha</label>
                <input type="password" name="confirmar" id="confirmar" value="${confirmar}" required>
            </div>
            <div class="input-group">
                <label for="email">Email</label>
                <input type="text" name="email" id="email" value="${email}" required>
            </div>
            <div class="input-group">
                <label for="cel">Celular</label>
                <input type="number" name="cel" id="cel" value="${cel}" required>
            </div>
            <div class="input-group">
                <label for="cargo">Cargo</label>
                <select name="cargo" id="cargo" required>
                    <option value="">Selecione o cargo</option>
                    <option value="op" ${cargo=='op' ? 'selected' : '' }>Operador</option>
                    <option value="admin" ${cargo=='admin' ? 'selected' : '' }>Administrador</option>
                </select>
            </div>
            <button type="submit" class="cadastro-btn">Salvar</button>
            <a href="pagina-anterior.jsp" class="cancel-btn">Cancelar</a> <!-- mudar o href -->
        </form>
    </div>
</body>

</html>
