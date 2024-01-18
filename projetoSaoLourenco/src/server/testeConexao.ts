import { createConnection } from "typeorm";
import dotenv from "dotenv";

// Carrega as variáveis de ambiente do arquivo .env
dotenv.config();

async function testarConexao(): Promise<void> {
  try {
    // Cria uma conexão com base nas configurações em ormconfig.ts
    const connection = await createConnection();

    // Testa a conexão
    await connection.query("SELECT NOW()");
    console.log("Teste básico de conexão bem-sucedido.");

    // Você pode adicionar mais testes aqui, se desejar

    const PORT = process.env.PORT || 5432;
    console.log("Todos os testes foram bem-sucedidos.");
    console.log(`+++ O servidor está rodando na porta ${PORT} +++`);
    console.log(
      `+++ O servidor está acessível em https://localhost:${PORT} +++`
    );
  } catch (error) {
    console.error("Erro ao testar a conexão:", error);
  }
}

// Executa os testes de conexão
testarConexao();
