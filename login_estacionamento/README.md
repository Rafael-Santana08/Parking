# Documentação do Sistema de Estacionamento
## Visão Geral
O sistema de estacionamento é uma aplicação web Java desenvolvida para gerenciar vagas de estacionamento, com controle de acesso e configurações personalizáveis.

## Estrutura do Projeto
```plaintext
login_estacionamento/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/rsm/
│       │       ├── dao/
│       │       ├── model/
│       │       ├── servlet/
│       │       └── util/
│       ├── resources/
│       └── webapp/
└── target/
 ```

## Tecnologias Utilizadas
- Java
- Jakarta EE
- MySQL
- HTML/CSS
- JSP (JavaServer Pages)
## Componentes Principais
### 1. Modelo de Dados (Model) Usuario.java
- Classe que representa um usuário do sistema
- Atributos:
  - id: Identificador único
  - nome: Nome do usuário
  - login: Login de acesso
  - senha: Senha de acesso
  - nivelAcesso: Nível de permissão (ADMINISTRADOR ou OPERADOR)
### 2. Acesso a Dados (DAO) UsuarioDAO.java
- Responsável pela autenticação de usuários
- Método principal:
  - autenticar(String login, String senha) : Valida credenciais do usuário
### 3. Utilitários DatabaseConnection.java
- Gerencia conexões com o banco de dados MySQL
- Configurações:
  - URL: jdbc:mysql://localhost:3306/estacionamento
  - Usuário: root
  - Senha: (em branco)
### 4. Interface do Usuário Tela de Login (index.jsp)
- Formulário de autenticação
- Campos:
  - Login
  - Senha
- Tratamento de erros de autenticação Painel de Controle (painel.jsp)
- Interface principal do sistema
- Funcionalidades:
  - Visualização de vagas
  - Gerenciamento de status (Disponível/Ocupada)
  - Configurações do sistema
  - Botão de logout
### 5. Banco de Dados Estrutura (database.sql)
- Tabela usuarios :
  - id (INT, AUTO_INCREMENT, PRIMARY KEY)
  - nome (VARCHAR(100))
  - login (VARCHAR(50), UNIQUE)
  - senha (VARCHAR(255))
  - nivel_acesso (ENUM: 'ADMINISTRADOR', 'OPERADOR')
  - data_criacao (TIMESTAMP)
## Configurações Iniciais
1. Usuário padrão:
   - Login: admin
   - Senha: admin123
   - Nível: ADMINISTRADOR
## Funcionalidades do Sistema
1. Gestão de Vagas:
   
   - Visualização do status das vagas
   - Edição do status (Disponível/Ocupada)
   - Exclusão de vagas
2. Configurações:
   
   - Valor da primeira hora
   - Valor adicional
   - Número máximo de vagas
## Segurança
- Autenticação obrigatória
- Sessão de usuário
- Níveis de acesso diferenciados
- Proteção contra acesso não autorizado
## Observações Importantes
1. O sistema utiliza MySQL como banco de dados
2. É necessário configurar o banco de dados antes de iniciar o sistema
3. O arquivo database.sql contém os scripts de criação do banco e tabelas
4. O sistema possui controle de sessão para segurança