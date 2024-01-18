import pgPromise from "pg-promise";
import express from "express";
import { createServer, Server } from "http";

// Configuração da conexão com o banco de dados

// Inicialização do pg-promise
const pgp = pgPromise();

// Criação da própria definição do tipo IConnectionParameters
interface IConnectionParameters {
  host: string;
  port: number;
  database: string;
  user: string;
  password: string;
}

// Criação da instância do banco de dados
const connectionOptions: IConnectionParameters = {
  host: "localhost",
  port: 5432,
  database: "bancoSecSaoLourenco",
  user: "postgres",
  password: "1234", 
};


const db = pgp({
  ...connectionOptions,
  password: connectionOptions.password, 
});

// Configuração do Express
const app: express.Express = express();
const httpServer: Server = createServer(app);

const PORT = process.env.PORT || 5432;

httpServer.listen(PORT, () => {
  console.log(`+++ O servidor está rodando na porta ${PORT} +++`);
  console.log(`+++ O servidor está acessível em https://localhost:${PORT} +++`);
});
