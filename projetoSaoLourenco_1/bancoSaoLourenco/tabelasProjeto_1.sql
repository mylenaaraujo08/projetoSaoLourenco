CREATE DATABASE bancoSecSaoLourenco;
ALTER USER postgres WITH SUPERUSER;

CREATE USER postgres WITH PASSWORD '1234';

ALTER USER postgres WITH CREATEDB; 
ALTER USER postgres WITH SUPERUSER; 

GRANT ALL PRIVILEGES ON DATABASE bancoSecSaoLourenco TO postgres;
DROP USER postgres;
SELECT datname FROM pg_database;
SELECT * FROM pg_database WHERE datname = 'bancoSecSaoLourenco';
SELECT current_database();


SELECT current_database() AS nome_do_banco,
       current_user AS nome_do_usuario,
       inet_server_addr() AS host,
       inet_server_port() AS porta;


SELECT * FROM avaliacaoDados;
SELECT * FROM respostaPortugues;
SELECT * FROM respostaMatematica;
SELECT * FROM alunos;
SELECT * FROM escolas;
SELECT * FROM gestores;
SELECT * FROM pea;

CREATE TABLE pea (
  id SERIAL PRIMARY KEY,
  ano NUMERIC(4) NOT NULL,
  serie VARCHAR(255) NOT NULL,
  turma VARCHAR(255) NOT NULL,
  disciplina VARCHAR(255) NOT NULL,
  questao NUMERIC(2) NOT NULL,
  nivel VARCHAR(255) NOT NULL,
  descritores VARCHAR(255),
  alternativas VARCHAR(255)
);

INSERT INTO pea (ano, serie, turma, disciplina, questao, nivel, alternativas)
VALUES
  (2023, '9ano', 'T1', 'Língua Portuguesa', 1, 'Médio', 'A'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 2, 'Médio', 'B'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 3, 'Difícil', 'D'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 4, 'Difícil', 'B'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 5, 'Fácil', 'C'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 6, 'Médio', 'B'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 7, 'Difícil', 'B'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 8, 'Fácil', 'A'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 9, 'Médio', 'D'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 10, 'Fácil', 'A'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 11, 'Difícil', 'C'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 12, 'Difícil', 'C'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 13, 'Médio', 'A'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 14, 'Médio', 'D'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 15, 'Fácil', 'B'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 16, 'Fácil', 'B'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 17, 'Difícil', 'B'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 18, 'Difícil', 'B'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 19, 'Fácil', 'A'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 20, 'Fácil', 'A'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 21, 'Fácil', 'C'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 22, 'Médio', 'A'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 23, 'Médio', 'D'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 24, 'Difícil', 'B'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 25, 'Médio', 'B'),
  (2023, '9ano', 'T1', 'Língua Portuguesa', 26, 'Fácil', 'C');

-- Inserção dos dados para Matemática
INSERT INTO pea (ano, serie, turma, disciplina, questao, nivel, alternativas)
VALUES
  (2023, '9ano', 'T1', 'Matemática', 27, 'Fácil', 'B'),
  (2023, '9ano', 'T1', 'Matemática', 28, 'Fácil', 'C'),
  (2023, '9ano', 'T1', 'Matemática', 29, 'Médio', 'A'),
  (2023, '9ano', 'T1', 'Matemática', 30, 'Médio', 'B'),
  (2023, '9ano', 'T1', 'Matemática', 31, 'Fácil', 'D'),
  (2023, '9ano', 'T1', 'Matemática', 32, 'Difícil', 'A'),
  (2023, '9ano', 'T1', 'Matemática', 33, 'Fácil', 'D'),
  (2023, '9ano', 'T1', 'Matemática', 34, 'Médio', 'A'),
  (2023, '9ano', 'T1', 'Matemática', 35, 'Difícil', 'C'),
  (2023, '9ano', 'T1', 'Matemática', 36, 'Fácil', 'B'),
  (2023, '9ano', 'T1', 'Matemática', 37, 'Fácil', 'B'),
  (2023, '9ano', 'T1', 'Matemática', 38, 'Difícil', 'A'),
  (2023, '9ano', 'T1', 'Matemática', 39, 'Fácil', 'C'),
  (2023, '9ano', 'T1', 'Matemática', 40, 'Fácil', 'C'),
  (2023, '9ano', 'T1', 'Matemática', 41, 'Médio', 'A'),
  (2023, '9ano', 'T1', 'Matemática', 42, 'Difícil', 'D'),
  (2023, '9ano', 'T1', 'Matemática', 43, 'Médio', 'A'),
  (2023, '9ano', 'T1', 'Matemática', 44, 'Fácil', 'C'),
  (2023, '9ano', 'T1', 'Matemática', 45, 'Médio', 'A'),
  (2023, '9ano', 'T1', 'Matemática', 46, 'Médio', 'A'),
  (2023, '9ano', 'T1', 'Matemática', 47, 'Médio', 'C'),
  (2023, '9ano', 'T1', 'Matemática', 48, 'Médio', 'D'),
  (2023, '9ano', 'T1', 'Matemática', 49, 'Médio', 'B'),
  (2023, '9ano', 'T1', 'Matemática', 50, 'Médio', 'B'),
  (2023, '9ano', 'T1', 'Matemática', 51, 'Médio', 'D'),
  (2023, '9ano', 'T1', 'Matemática', 52, 'Fácil', 'A');

-- Inserção dos dados para Língua Portuguesa do pea_5ano
INSERT INTO pea (ano, serie, turma, disciplina, questao, nivel, descritores, alternativas)
VALUES
  (2023, '5ano', 'T1', 'Língua Portuguesa', 1, 'Fácil', 'D1', 'C'),
  (2023, '5ano', 'T1', 'Língua Portuguesa', 2, 'Médio', 'D4', 'D'),
  (2023, '5ano', 'T1', 'Língua Portuguesa', 3, 'Médio', 'D3', 'A'),
  (2023, '5ano', 'T1', 'Língua Portuguesa', 4, 'Fácil', 'D7', 'C'),
  (2023, '5ano', 'T1', 'Língua Portuguesa', 5, 'Médio', 'D3', 'D'),
  (2023, '5ano', 'T1', 'Língua Portuguesa', 6, 'Médio', 'D6', 'A'),
  (2023, '5ano', 'T1', 'Língua Portuguesa', 7, 'Difícil', 'D11', 'D'),
  (2023, '5ano', 'T1', 'Língua Portuguesa', 8, 'Fácil', 'D9', 'C'),
  (2023, '5ano', 'T1', 'Língua Portuguesa', 9, 'Fácil', 'D14', 'A'),
  (2023, '5ano', 'T1', 'Língua Portuguesa', 10, 'Difícil', 'D11', 'B'),
  (2023, '5ano', 'T1', 'Língua Portuguesa', 11, 'Fácil', 'D10', 'B'),
  (2023, '5ano', 'T1', 'Língua Portuguesa', 12, 'Médio', 'D13', 'C'),
  (2023, '5ano', 'T1', 'Língua Portuguesa', 13, 'Médio', 'D01', 'C'),
  (2023, '5ano', 'T1', 'Língua Portuguesa', 14, 'Médio', 'D6', 'A'),
  (2023, '5ano', 'T1', 'Língua Portuguesa', 15, 'Difícil', 'D15', 'D'),
  (2023, '5ano', 'T1', 'Língua Portuguesa', 16, 'Fácil', 'D4', 'A'),
  (2023, '5ano', 'T1', 'Língua Portuguesa', 17, 'Difícil', 'D10', 'A'),
  (2023, '5ano', 'T1', 'Língua Portuguesa', 18, 'Médio', 'D9', 'C'),
  (2023, '5ano', 'T1', 'Língua Portuguesa', 19, 'Médio', '', 'A'),
  (2023, '5ano', 'T1', 'Língua Portuguesa', 20, 'Médio', '', 'A'),
  (2023, '5ano', 'T1', 'Língua Portuguesa', 21, 'Fácil', 'D1', 'A'),
  (2023, '5ano', 'T1', 'Língua Portuguesa', 22, 'Difícil', 'D3', 'C');

-- Inserção dos dados para Matemática do pea_5ano
INSERT INTO pea (ano, serie, turma, disciplina, questao, nivel, descritores, alternativas)
VALUES
  (2023, '5ano', 'T1', 'Matemática', 23, 'Fácil', 'D28', 'A'),
  (2023, '5ano', 'T1', 'Matemática', 24, 'Difícil', 'D1', 'D'),
  (2023, '5ano', 'T1', 'Matemática', 25, 'Fácil', 'D20', 'A'),
  (2023, '5ano', 'T1', 'Matemática', 26, 'Médio', 'D2', 'C'),
  (2023, '5ano', 'T1', 'Matemática', 27, 'Médio', 'D19', 'B'),
  (2023, '5ano', 'T1', 'Matemática', 28, 'Fácil', 'D27', 'A'),
  (2023, '5ano', 'T1', 'Matemática', 29, 'Fácil', 'D19', 'C'),
  (2023, '5ano', 'T1', 'Matemática', 30, 'Médio', 'D6', 'B'),
  (2023, '5ano', 'T1', 'Matemática', 31, 'Médio', 'D9', 'B'),
  (2023, '5ano', 'T1', 'Matemática', 32, 'Médio', 'D13', 'C'),
  (2023, '5ano', 'T1', 'Matemática', 33, 'Médio', 'D10', 'D'),
  (2023, '5ano', 'T1', 'Matemática', 34, 'Médio', 'D08', 'D'),
  (2023, '5ano', 'T1', 'Matemática', 35, 'Difícil', 'D02', 'A'),
  (2023, '5ano', 'T1', 'Matemática', 36, 'Difícil', 'D14', 'D'),
  (2023, '5ano', 'T1', 'Matemática', 37, 'Difícil', '', 'D'),
  (2023, '5ano', 'T1', 'Matemática', 38, 'Difícil', 'D10', 'B'),
  (2023, '5ano', 'T1', 'Matemática', 39, 'Difícil', 'D24', 'B'),
  (2023, '5ano', 'T1', 'Matemática', 40, 'Difícil', 'D07', 'B'),
  (2023, '5ano', 'T1', 'Matemática', 41, 'Médio', 'D14', 'C'),
  (2023, '5ano', 'T1', 'Matemática', 42, 'Fácil', 'D08', 'D'),
  (2023, '5ano', 'T1', 'Matemática', 43, 'Fácil', 'D19', 'A'),
  (2023, '5ano', 'T1', 'Matemática', 44, 'Médio', 'D29', 'A');

-- Inserção dos dados para Língua Portuguesa do pea_2ano
INSERT INTO pea (ano, serie, turma, disciplina, questao, nivel, descritores, alternativas)
VALUES
  (2023, '2ano', 'T1', 'Língua Portuguesa', 1, 'Fácil', '', 'A'),
  (2023, '2ano', 'T1', 'Língua Portuguesa', 2, 'Fácil', 'BOLA e ÁRVORE', ''),
  (2023, '2ano', 'T1', 'Língua Portuguesa', 3, 'Fácil', '', 'C'),
  (2023, '2ano', 'T1', 'Língua Portuguesa', 4, 'Fácil', '', 'C'),
  (2023, '2ano', 'T1', 'Língua Portuguesa', 5, 'Fácil', '', 'D'),
  (2023, '2ano', 'T1', 'Língua Portuguesa', 6, 'Fácil', '', 'C'),
  (2023, '2ano', 'T1', 'Língua Portuguesa', 7, 'Médio', '', 'A'),
  (2023, '2ano', 'T1', 'Língua Portuguesa', 8, 'Médio', '', 'C'),
  (2023, '2ano', 'T1', 'Língua Portuguesa', 9, 'Médio', '', 'B'),
  (2023, '2ano', 'T1', 'Língua Portuguesa', 10, 'Médio', '', 'B'),
  (2023, '2ano', 'T1', 'Língua Portuguesa', 11, 'Médio', '', 'A'),
  (2023, '2ano', 'T1', 'Língua Portuguesa', 12, 'Médio', '', 'B'),
  (2023, '2ano', 'T1', 'Língua Portuguesa', 13, 'Médio', '', 'D'),
  (2023, '2ano', 'T1', 'Língua Portuguesa', 14, 'Difícil', '', 'D'),
  (2023, '2ano', 'T1', 'Língua Portuguesa', 15, 'Difícil', '', 'C'),
  (2023, '2ano', 'T1', 'Língua Portuguesa', 16, 'Difícil', '', 'B'),
  (2023, '2ano', 'T1', 'Língua Portuguesa', 17, 'Difícil', '', 'A'),
  (2023, '2ano', 'T1', 'Língua Portuguesa', 18, 'Difícil', '', 'D'),
  (2023, '2ano', 'T1', 'Língua Portuguesa', 19, 'Difícil', '', 'C'),
  (2023, '2ano', 'T1', 'Língua Portuguesa', 20, 'Difícil', '', 'C');

-- Inserção dos dados para Matemática do pea_2ano
INSERT INTO pea (ano, serie, turma, disciplina, questao, nivel, descritores, alternativas)
VALUES
  (2023, '2ano', 'T1', 'Matemática', 21, 'Fácil', 'D09', 'C'),
  (2023, '2ano', 'T1', 'Matemática', 22, 'Fácil', 'D09', 'D'),
  (2023, '2ano', 'T1', 'Matemática', 23, 'Fácil', 'D12', 'B'),
  (2023, '2ano', 'T1', 'Matemática', 24, 'Fácil', 'D10', 'D'),
  (2023, '2ano', 'T1', 'Matemática', 25, 'Fácil', 'D01', 'A'),
  (2023, '2ano', 'T1', 'Matemática', 26, 'Fácil', 'D01', 'B'),
  (2023, '2ano', 'T1', 'Matemática', 27, 'Fácil', 'D01', 'D'),
  (2023, '2ano', 'T1', 'Matemática', 28, 'Fácil', 'D05', 'C'),
  (2023, '2ano', 'T1', 'Matemática', 29, 'Fácil', 'D03', 'D'),
  (2023, '2ano', 'T1', 'Matemática', 30, 'Médio', 'D07', 'C'),
  (2023, '2ano', 'T1', 'Matemática', 31, 'Médio', 'D12', 'B'),
  (2023, '2ano', 'T1', 'Matemática', 32, 'Difícil', 'D07', 'A'),
  (2023, '2ano', 'T1', 'Matemática', 33, 'Médio', 'D06', 'B'),
  (2023, '2ano', 'T1', 'Matemática', 34, 'Médio', 'D06', 'D'),
  (2023, '2ano', 'T1', 'Matemática', 35, 'Médio', 'D17', 'D'),
  (2023, '2ano', 'T1', 'Matemática', 36, 'Médio', 'D17', 'B'),
  (2023, '2ano', 'T1', 'Matemática', 37, 'Difícil', 'D18', 'A'),
  (2023, '2ano', 'T1', 'Matemática', 38, 'Difícil', 'D18', 'B'),
  (2023, '2ano', 'T1', 'Matemática', 39, 'Difícil', 'D18', 'D'),
  (2023, '2ano', 'T1', 'Matemática', 40, 'Difícil', 'D17', 'B');

DROP TABLE alunos;
CREATE TABLE alunos (
  id SERIAL PRIMARY KEY,
  nome_completo VARCHAR(255) NOT NULL,
  matricula VARCHAR(255),
  escola VARCHAR(255) NOT NULL,
  serie VARCHAR(255) NOT NULL,
  turma VARCHAR(255) NOT NULL,
  deficiencia VARCHAR(255) 
);


INSERT INTO alunos (escola, matricula, serie, turma, nome_completo, deficiencia)
VALUES
('Escola Municipal Ministro Fernando Lira', NULL, '5º', 'A', 'Kássio José Gabriel da Silva', NULL),
('Escola Municipal Ministro Fernando Lira', NULL, '5º', 'A', 'Gabrielly Camily Oliveira da Silva', NULL),
('Escola Municipal Ministro Fernando Lira', NULL, '5º', 'A', 'Pedro Enrique Odilon Freitas', NULL),
('Escola Municipal Ministro Fernando Lira', NULL, '5º', 'A', 'Wellington Manoel da Silva', NULL),
('Escola Municipal Ministro Fernando Lira', NULL, '5º', 'A', 'Wesley Kauã de Souza Moreira', NULL),
('Escola Municipal Ministro Fernando Lira', NULL, '5º', 'A', 'Jonathan Silva de Araújo', NULL),
('Escola Municipal Ministro Fernando Lira', NULL, '5º', 'A', 'Gabriel Dias dos Santos', NULL),
('Escola Municipal Ministro Fernando Lira', NULL, '5º', 'A', 'Yasmin Izabella Martins Afonso', NULL),
('Escola Municipal Ministro Fernando Lira', NULL, '5º', 'A', 'Miguel Emiliano Pereira da Silva', NULL),
('Escola Municipal Ministro Fernando Lira', NULL, '5º', 'A', 'Daniel Alves da Silva', NULL),
('Escola Municipal Cristina Tavares', NULL, '2º', 'D', 'Alana Vitória da Silva', NULL),
('Escola Municipal Cristina Tavares', NULL, '2º', 'D', 'Hillary Victoria Vicente Correia da Cruz', NULL),
('Escola Municipal Cristina Tavares', NULL, '2º', 'D', 'Pedro Daniel da Silva Nascimento', NULL),
('Escola Municipal Cristina Tavares', NULL, '2º', 'D', 'Willian Micael Ferreira de Melo', NULL),
('Escola Municipal Cristina Tavares', NULL, '2º', 'D', 'Agata Sofia de Luna Silva', NULL),
('Escola Municipal Cristina Tavares', NULL, '2º', 'D', 'Daniel Virginio da Silva', NULL),
('Escola Municipal Cristina Tavares', NULL, '2º', 'D', 'Gustavo Henrique Rodrigues de Araújo Silva', NULL),
('Escola Municipal Cristina Tavares', NULL, '2º', 'D', 'Davi Samuel Oliveira da Silva', NULL),
('Escola Municipal Cristina Tavares', NULL, '2º', 'D', 'Maria Vitória Peixoto Guedes do Nascimento', NULL),
('Escola Municipal Cristina Tavares', NULL, '2º', 'D', 'Carlos Henrique dos Santos Souza', NULL),
('Escola Municipal Cristina Tavares', NULL, '2º', 'D', 'Nauany Vitória de Lima Correia', NULL),
('Escola Municipal Ariano Suassuna', NULL, '9º', 'B', 'Kaio Ryan Martins Barbosa', 'Não'),
('Escola Municipal Ariano Suassuna', NULL, '9º', 'B', 'Victor Hugo da Silva Lourenco', 'Não'),
('Escola Municipal Ariano Suassuna', NULL, '9º', 'B', 'Terezinha Francisca da Silva Neta', 'Não'),
('Escola Municipal Ariano Suassuna', NULL, '9º', 'B', 'Viviyan Lays Brito Bezerra', 'Não'),
('Escola Municipal Ariano Suassuna', NULL, '9º', 'B', 'Amanda Vitória Brás da Costa', 'Não'),
('Escola Municipal Ariano Suassuna', NULL, '9º', 'B', 'Ketilly Izabel Ramos da Silva', 'Não'),
('Escola Municipal Ariano Suassuna', NULL, '9º', 'B', 'Arthur Soares da Silva Paz', 'Não'),
('Escola Municipal Ariano Suassuna', NULL, '9º', 'B', 'Hillary Gomes', 'Não'),
('Escola Municipal Ariano Suassuna', NULL, '9º', 'B', 'Ericka Kauanny Gomes Ferreira Lins', 'Não'),
('Escola Municipal Ariano Suassuna', NULL, '9º', 'B', 'Nycollas Kaio Gonçalves Batista', 'Não'),
('Escola Municipal Ariano Suassuna', NULL, '9º', 'B', 'Alex Silva Nascimento', 'Não'),
('Escola Municipal Ariano Suassuna', NULL, '9º', 'B', 'Marcos Gabriel Pereira', 'Não'),
('Escola Municipal Ariano Suassuna', NULL, '9º', 'B', 'Jenyffer Nathyele da Luz Santos', 'Não'),
('Escola Municipal Cleto Campelo', NULL, '9º', 'B', 'Vitor César da Silva Correia', 'Não'),
('Escola Municipal Cleto Campelo', NULL, '9º', 'B', 'Joao Lucas da Silva', 'Não');



CREATE TABLE escolas (
  id SERIAL PRIMARY KEY,
  nome_fantasia VARCHAR(255) NOT NULL,
  razao_social VARCHAR(255) NOT NULL,
  cnpj VARCHAR(20) NOT NULL,
  endereco VARCHAR(255) NOT NULL,
  contato VARCHAR(255) NOT NULL,
  responsavel_cnct VARCHAR(255) NOT NULL,
  tipo VARCHAR(255) NOT NULL
);


INSERT INTO escolas (nome_fantasia, razao_social, cnpj, endereco, contato, responsavel_cnct, tipo) VALUES
('Escola Municipal Clodoaldo Gomes de Araujo', '', '', '', '', '', ''),
('Escola Municipal Jonas de Andrade Lima', '', '', '', '', '', ''),
('Escola Municipal Joaquim de Brito', '', '', '', '', '', ''),
('Escola Municipal Ariano Suassuna', '', '', '', '', '', ''),
('Escola Municipal Ariano Suassuna', '', '', '', '', '', ''),
('Escola Municipal Doutor Augusto Lucena', '', '', '', '', '', ''),
('Escola Municipal Doutor Henrique de Queiroz Monteiro', '', '', '', '', '', ''),
('Escola Municipal Inacio Gomes da Silva', '', '', '', '', '', ''),
('Escola Municipal Padre Joao Collignon', '', '', '', '', '', ''),
('Escola Municipal Maria Jose de Souza', '', '', '', '', '', ''),
('Colegio Municipal Ministro Apolonio Sales', '', '', '', '', '', ''),
('Escola Municipal Duque de Caxias', '', '', '', '', '', ''),
('Escola Municipal Cloaldo Gomes de Araujo', '', '', '', '', '', ''),
('Escola Municipal Padre Joao Collignon', '', '', '', '', '', ''),
('Escola Municipal Menino Jesus', '', '', '', '', '', ''),
('Escola Municipal Professor Josue Pereira de Oliveira', '', '', '', '', '', ''),
('Escola Municipal Doutor Fernando Sampaio', '', '', '', '', '', ''),
('Escola Municipal Padre Joao Barbalho', '', '', '', '', '', ''),
('Escola Municipal Antonio de Castro Alves', '', '', '', '', '', ''),
('Creche Idalina Bezerra', '', '', '', '', '', ''),
('Escola Municipal Doutor Luiz Correa de Araujo', '', '', '', '', '', ''),
('Colegio Municipal Ministro Apolonio Sales', '', '', '', '', '', ''),
('Creche Municipal Governador Eduardo Campos - Creche Tio Dudu', '', '', '', '', '', ''),
('Escola Municipal Poco Dantas', '', '', '', '', '', ''),
('Escola Municipal Hermino Moreira Dias', '', '', '', '', '', ''),
('Escola Municipal Creche Vovo Isaura Chaves', '', '', '', '', '', ''),
('Escola Municipal Inacio Gomes da Silva', '', '', '', '', '', ''),
('Escola Municipal Inacio Gomes da Silva, Escola Municipal Tiradentes', '', '', '', '', '', ''),
('Escola Municipal Cleto Camelo', '', '', '', '', '', ''),
('Escola Municipal Antonio Crescencio de Gois', '', '', '', '', '', ''),
('Creche Municipal Tia Ines', '', '', '', '', '', ''),
('Escola Municipal Senador Jose Ermirio de Moraes, Escola Mun Jornalista Cristina Tavares', '', '', '', '', '', ''),
('Escola Municipal Jair Pereira de Oliveira', '', '', '', '', '', ''),
('Escola Municipal Joaquim Damiao da Silva', '', '', '', '', '', ''),
('Escola Municipal Professor Severino Sales', '', '', '', '', '', ''),
('Escola Municipal Paulo Gomes de Araujo', '', '', '', '', '', ''),
('Escola Municipal Ministro Fernando Lyra', '', '', '', '', '', ''),
('Escola Municipal Carmela Orrico Lapenda, Escola Municipal Dona Olivia Josefa da Silva', '', '', '', '', '', ''),
('Escola Municipal Senador Jose Ermirio de Moraes, Escola Municipal Tiradentes', '', '', '', '', '', ''),
('Escola Municipal Senador Francisco Gomes de Araujo', '', '', '', '', '', ''),
('Escola Municipal Cleto Camelo', '', '', '', '', '', ''),
('Escola Municipal Alfredo Dias de Oliveira, Escola Municipal Carmela Orrico Lapenda', '', '', '', '', '', ''),
('Escola Mun Jornalista Cristina Tavares', '', '', '', '', '', ''),
('Escola Municipal Rosina Labanca', '', '', '', '', '', '');

DROP TABLE gestores;
CREATE TABLE IF NOT EXISTS gestores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    escola VARCHAR(255) NOT NULL,
    funcao VARCHAR(255) NOT NULL,
    telefones VARCHAR(255) NOT NULL
);

INSERT INTO gestores (nome, cpf, escola, funcao, telefones) VALUES
    ('AGUINALDO CLAUDINO LEITE', '823.571.964-91', 'ESCOLA MUNICIPAL CLODOALDO GOMES DE ARAUJO', 'Gestor (a) Adjunto', '{"(81) 999998256"}'),
    ('Alexandre José da Silva', '064.104.764-93', 'ESCOLA MUNICIPAL JONAS DE ANDRADE LIMA', 'Gestor (a) Adjunto', '{"(81) 989357076", "(81) 989357076"}'),
    ('CASSIA CRISTINA RUFINO DA SILVA LUZ', '040.858.404-10', 'ESCOLA MUNICIPAL JOAQUIM DE BRITO', 'Gestor (a) Escolar', '{"(81) 986908315"}'),
    ('CÉLIA MARIA MENDES DE MORAIS ALMEIDA', '169.831.654-20', 'Escola Municipal Ariano Suassuna', 'Gestor (a) Escolar', '{"(81) 998100827", "(81) 986081781"}'),
    ('Claudia Regina Portela de Nóbrega Silva', '418.296.625-20', 'Escola Municipal Ariano Suassuna', 'Gestor (a) Adjunto', '{"(81) 979063831"}'),
    ('CREUSA FERREIRA DA SILVA', '333.495.504-44', 'ESCOLA MUNICIPAL DOUTOR AUGUSTO LUCENA', 'Gestor (a) Escolar', '{"(81) 988437002"}'),
    ('EDISANGELA EDILEUZA FERREIRA', '092.165.274-71', 'ESCOLA MUNICIPAL DOUTOR HENRIQUE DE QUEIROZ MONTEIRO', 'Gestor (a) Escolar', '{"(81) 81991716973", "(81) 81991716973"}'),
    ('ELIANA ANDRADE DE SOUZA MELO', '833.528.484-91', 'ESCOLA MUNICIPAL INACIO GOMES DA SILVA', 'Gestor (a) Adjunto', '{"(81) 988841373"}'),
    ('ELIANE SANTOS XAVIER DAS NEVES', '402.177.014-34', 'ESCOLA MUNICIPAL PADRE JOAO COLLIGNON', 'Gestor (a) Escolar', '{"(81) 997407392"}'),
    ('ELIZANGELA AGUIAR BARBOSA DA SILVA', '040.706.504-07', 'ESCOLA MUNICIPAL MARIA JOSE DE SOUZA', 'Gestor (a) Escolar', '{"(81) 999638080"}'),
    ('EMERSON JOSÉ ALVES', '071.645.694-01', 'COLEGIO MUNICIPAL MINISTRO APOLONIO SALES', 'Gestor (a) Adjunto', '{"(81) 998085637"}'),
    ('ERINA CARLA ARAUJO DE OLIVEIRA NASCIMENTO', '041.744.494-06', 'ESCOLA MUNICIPAL DUQUE DE CAXIAS', 'Gestor (a) Escolar', '{"(81) 987383848", "(81) 987383848"}'),
    ('EVELINA MARIA DA SILVA', '284.094.854-00', 'ESCOLA MUNICIPAL CLODOALDO GOMES DE ARAUJO', 'Gestor (a) Escolar', '{"(81) 997974750"}'),
    ('FLAVIANE LILIAN URSULINO DE LIRA', '043.831.004-73', 'ESCOLA MUNICIPAL PADRE JOAO COLLIGNON', 'Gestor (a) Adjunto', '{"(81) 995227981"}'),
    ('GRACIA MARIA DE OLIVEIRA MUNIZ', '104.373.984-04', 'ESCOLA MUNICIPAL MENINO JESUS', 'Gestor (a) Escolar', '{"(81) 986427876"}'),
    ('ISOLDA GRAZIELA DA CUNHA SILVA LUZ', '007.687.044-80', 'ESCOLA MUNICIPAL PROFESSOR JOSUE PEREIRA DE OLIVEIRA', 'Gestor (a) Escolar', '{"(81) 35250394", "(81) 987256258"}'),
    ('JAILMA VIEIRA DE SALES', '039.549.034-07', 'ESCOLA MUNICIPAL DOUTOR FERNANDO SAMPAIO', 'Gestor (a) Escolar', '{"(81) 988642528"}'),
    ('JAQUELINE PEREIRA MENDES VIANA', '683.792.264-53', 'ESCOLA MUNICIPAL PADRE JOAO BARBALHO', 'Gestor (a) Escolar', '{"(81) 986482058"}'),
    ('JOELMA MARIA DOS SANTOS', '093.437.744-86', 'ESCOLA MUNICIPAL ANTONIO DE CASTRO ALVES', 'Gestor (a) Escolar', '{"(81) 971755639"}'),
    ('JOSILENE DOURADO DE OLIVEIRA GOMES', '586.818.924-87', 'CRECHE IDALINA BEZERRA', 'Gestor (a) Escolar', '{"(81) 988503412"}'),
    ('JOSINEIDE TEOTONIA DA SILVA', '036.436.754-70', 'ESCOLA MUNICIPAL DOUTOR LUIZ CORREA DE ARAUJO', 'Gestor (a) Escolar', '{"(81) 987815756"}'),
    ('JOSUE FERREIRA PARENTE', '012.871.254-68', 'COLEGIO MUNICIPAL MINISTRO APOLONIO SALES', 'Gestor (a) Escolar', '{"(81) 983208928"}'),
    ('KARINA PEREIRA DOS SANTOS', '919.028.004-00', 'CRECHE MUNICIPAL GOVERNADOR EDUARDO CAMPOS - CRECHE TIO DUDU', 'Gestor (a) Escolar', '{"(81) 987779643"}'),
    ('KATIA REGINA LIMA DA SILVA', '606.940.034-04', 'ESCOLA MUNICIPAL AUREA DE MOURA CAVALCANTI', 'Gestor (a) Adjunto', '{"(81) 987319017"}'),
    ('LARISSE CAMILA DOS SANTOS', '073.351.174-01', 'ESCOLA MUNICIPAL MELANIA GOMES DE ALENCAR', 'Gestor (a) Escolar', '{"(81) 987363223"}'),
    ('LUCICLEIDE SOARES DA SILVA', '665.569.964-91', 'ESCOLA MUNICIPAL HERMINO MOREIRA DIAS', 'Gestor (a) Escolar', '{"(81) 986953056"}'),
    ('LUCINEIA SEVERINA DOS SANTOS', '026.140.994-81', 'ESCOLA MUNICIPAL CRECHE VOVO ISAURA CHAVES', 'Gestor (a) Escolar', '{"(81) 987801944"}'),
    ('Luiz Carlos da Silva', '794.106.424-34', 'ESCOLA MUNICIPAL INACIO GOMES DA SILVA', 'Gestor (a) Escolar', '{"(81) 987069300"}'),
    ('MARCELO RODRIGUES DE MOURA', '455.858.064-91', 'ESCOLA MUNICIPAL INACIO GOMES DA SILVA, ESCOLA MUNICIPAL TIRADENTES', 'Gestor (a) Escolar', '{"(81) 992160617"}'),
    ('MARIA APARECIDA DE SOUSA XAVIER', '436.268.234-15', 'ESCOLA MUNICIPAL CLETO CAMPELO', 'Gestor (a) Escolar', '{"(81) 996752989"}'),
    ('MARIA DAS NEVES TEIXEIRA', '370.394.664-49', 'ESCOLA MUNICIPAL ANTONIO CRESCENCIO DE GOIS', 'Gestor (a) Escolar', '{"(81) 996108008"}'),
    ('MARIA DO SOCORRO SANTOS DE AZEVEDO', '330.570.954-53', 'CRECHE MUNICIPAL TIA INES', 'Gestor (a) Escolar', '{"(81) 986348189"}'),
    ('Maria Elisabete Paulino Ferreira', '975.129.824-53', 'ESCOLA MUNICIPAL SENADOR JOSE ERMIRIO DE MORAES, ESCOLA MUN JORNALISTA CRISTINA TAVARES', 'Gestor (a) Adjunto', '{"(81) 86328949"}'),
    ('MAURICEIA CORREIA LIMA', '743.963.404-78', 'ESCOLA MUNICIPAL JAIR PEREIRA DE OLIVEIRA', 'Gestor (a) Escolar', ''),
    ('MIRAZIANE MARIA DA SILVA', '104.311.374-63', 'ESCOLA MUNICIPAL JOAQUIM DAMIAO DA SILVA', 'Gestor (a) Escolar', '{"(81) 984553111"}'),
    ('MONETA ALVES DOS SANTOS', '060.070.064-09', 'ESCOLA MUNICIPAL PROFESSOR SEVERINO SALES', 'Gestor (a) Escolar', '{"(81) 997796924"}'),
    ('NIVALDA FRANCISCA DE LIMA', '453.199.874-04', 'ESCOLA MUNICIPAL PAULO GOMES DE ARAUJO', 'Gestor (a) Escolar', '{"(81) 985261629"}'),
    ('RILDO CASSEMIRO DOS SANTOS', '933.289.234-20', 'ESCOLA MUNICIPAL MINISTRO FERNANDO LYRA', 'Gestor (a) Escolar', '{"(81) 987293360"}'),
    ('ROSANA ALVES SA BARRETO', '475.985.734-68', 'ESCOLA MUNICIPAL CARMELA ORRICO LAPENDA, ESCOLA MUNICIPAL DONA OLIVIA JOSEFA DA SILVA', 'Gestor (a) Escolar', '{"(81) 997695880"}'),
    ('SEVERINA MARIA PEREIRA MUNIZ', '555.796.394-49', 'ESCOLA MUNICIPAL SENADOR JOSE ERMIRIO DE MORAES, ESCOLA MUNICIPAL TIRADENTES', 'Gestor (a) Escolar', '{"(81) 982741880", "(81) 982711880"}'),
    ('SUELY FELIX DA SILVA', '754.010.104-00', 'ESCOLA MUNICIPAL SENADOR FRANCISCO GOMES DE ARAUJO', 'Gestor (a) Escolar', '{"(81) 982861302"}'),
    ('SUZANA GERALDO DA SILVA', '024.428.614-02', 'ESCOLA MUNICIPAL CLETO CAMPELO', 'Gestor (a) Adjunto', '{"(81) 998990034"}'),
    ('VANESSA REGINA FLORENCIO DE MORAIS NASCIMENTO', '082.728.824-77', 'ESCOLA MUNICIPAL ALFREDO DIAS DE OLIVEIRA, ESCOLA MUNICIPAL CARMELA ORRICO LAPENDA', 'Gestor (a) Escolar', '{"(81) 988513544"}'),
    ('VERONILDA MARIA DOS SANTOS', '720.290.134-04', 'ESCOLA MUN JORNALISTA CRISTINA TAVARES', 'Gestor (a) Escolar', '{"(81) 984720401"}'),
    ('ZILMA DE MELO ROCHA', '819.782.274-34', 'ESCOLA MUNICIPAL ROSINA LABANCA', 'Gestor (a) Adjunto', '{"(81) 994624923"}');

DROP TABLE avaliacaoDados;

-- Tabela principal
CREATE TABLE avaliacaoDados (
  id SERIAL PRIMARY KEY,
  carimbo_data_hora TIMESTAMP,
  endereco_email VARCHAR(255),
  pontuacao VARCHAR(50),  
  unidade_escolar VARCHAR(255),
  regiao_escola VARCHAR(255),
  serie VARCHAR(255),
  turma VARCHAR(255),
  nome_completo_estudante VARCHAR(255),
  estudante_com_deficiencia VARCHAR(3),
  deficiencia_descricao VARCHAR(255)
);

-- Tabela para armazenar respostas de português
CREATE TABLE respostaPortugues (
  id SERIAL PRIMARY KEY,
  id_avaliacao INTEGER REFERENCES avaliacaoDados(id),
  resposta VARCHAR(5)
);
-- Alterar o tamanho da coluna para 10 caracteres (ou o tamanho necessário)
ALTER TABLE respostaPortugues
ALTER COLUMN resposta TYPE VARCHAR(20);

-- Certifique-se de que a coluna id_avaliacao não está nula
SELECT * FROM respostaPortugues WHERE id_avaliacao IS NULL;
SELECT * FROM respostaMatematica WHERE id_avaliacao IS NULL;


-- Tabela para armazenar respostas de matemática
CREATE TABLE respostaMatematica (
  id SERIAL PRIMARY KEY,
  id_avaliacao INTEGER REFERENCES avaliacaoDados(id),
  resposta VARCHAR(5)
);
-- Alterar o tamanho da coluna para 10 caracteres (ou o tamanho necessário)
ALTER TABLE  respostaMatematica
ALTER COLUMN resposta TYPE VARCHAR(20);

-- Inserir dados na tabela principal
INSERT INTO avaliacaoDados (
  carimbo_data_hora,
  endereco_email,
  pontuacao,
  unidade_escolar,
  regiao_escola,
  serie,
  turma,
  nome_completo_estudante,
  estudante_com_deficiencia,
  deficiencia_descricao
) VALUES 
(                                             
  '2023-07-26 11:50:41', 'jos@outlook.com', '22 / 52', 'Escola Municipal Ariano Suassuna', 'Urbana', '9º', 'B', 'Kaio Ryan Martins Barbosa', 'Não', ''
),
('2023-07-26 12:01:40', 'jos@outlook.com', '34 / 52', 'Escola Municipal Ariano Suassuna', 'Urbana', '9º', 'B', 'Victor Hugo da Silva Lourenco', 'Não', ''
),
('2023-07-27 8:27:27', 'jos@outlook.com', '17 / 52', 'Escola Municipal Ariano Suassuna', 'Urbana', '9º', 'B', 'Terezinha Francisca da Silva neta', 'Não', ''
),
( '2023-07-27 8:40:54', 'jos@outlook.com', '25 / 52', 'Escola Municipal Ariano Suassuna', 'Urbana', '9º', 'B', 'viviyan lays brito bezerra', 'Não', ''
),
('2023-07-27 9:05:50', 'jos@outlook.com', '22 / 52', 'Escola Municipal Ariano Suassuna', 'Urbana', '9º', 'B', 'Amanda vitória Brás da Costa', 'Não', ''
),
('2023-07-27 9:12:25', 'jos@outlook.com', '11 / 52', 'Escola Municipal Ariano Suassuna', 'Urbana', '9º', 'B', 'Ketilly Izabel Ramos da Silva', 'Não', ''
),
('2023-07-27 9:17:38', 'jos@outlook.com', '27 / 52', 'Escola Municipal Ariano Suassuna', 'Urbana', '9º', 'B', 'arthur soares da silva paz', 'Não', ''
)  RETURNING id;

-- Inserir respostas de português
-- Inserir respostas de português
INSERT INTO respostaPortugues (id_avaliacao, resposta)
VALUES
  -- Conjunto 1
  (1, 'A'), (1, 'B'), (1, 'A'), (1, 'B'), (1, 'C'), (1, 'B'), (1, 'B'), (1, 'A'), (1, 'A'), (1, 'A'), (1, 'C'), (1, 'A'), (1, 'A'), (1, 'B'), (1, 'D'), (1, 'A'), (1, 'A'), (1, 'B'), (1, 'C'), (1, 'A'), (1, 'A'), (1, 'A'), (1, 'A'), (1, 'A'), (1, 'A'), (1, 'Não Preencheu'),
  -- Conjunto 2
  (2, 'B'), (2, 'C'), (2, 'A'), (2, 'A'), (2, 'B'), (2, 'A'), (2, 'A'), (2, 'D'), (2, 'D'), (2, 'C'), (2, 'C'), (2, 'D'), (2, 'A'), (2, 'C'), (2, 'D'), (2, 'C'), (2, 'A'), (2, 'B'), (2, 'A'), (2, 'D'), (2, 'A'), (2, 'A'), (2, 'B'), (2, 'B'), (2, 'B'), (2, 'B'), (2, 'A'),
  -- Conjunto 3
  (3, 'A'), (3, 'B'), (3, 'C'), (3, 'B'), (3, 'C'), (3, 'B'), (3, 'D'), (3, 'A'), (3, 'D'), (3, 'A'), (3, 'A'), (3, 'C'), (3, 'A'), (3, 'D'), (3, 'C'), (3, 'Não Preencheu'), (3, 'Não Preencheu'),
  -- Conjunto 4
  (4, 'B'), (4, 'D'), (4, 'B'), (4, 'B'), (4, 'C'), (4, 'B'), (4, 'D'), (4, 'A'), (4, 'A'), (4, 'A'), (4, 'C'), (4, 'C'), (4, 'A'), (4, 'D'), (4, 'B'), (4, 'D'), (4, 'C'), (4, 'Não Preencheu'),
  -- Conjunto 5
  (5, 'B'), (5, 'D'), (5, 'B'), (5, 'B'), (5, 'C'), (5, 'B'), (5, 'D'), (5, 'A'), (5, 'A'), (5, 'A'), (5, 'C'), (5, 'C'), (5, 'A'), (5, 'D'), (5, 'B'), (5, 'D'), (5, 'Não Preencheu'), (5, 'Não Preencheu'),
  -- Conjunto 6
  (6, 'D'), (6, 'B'), (6, 'D'), (6, 'C'), (6, 'B'), (6, 'B'), (6, 'D'), (6, 'A'), (6, 'D'), (6, 'A'), (6, 'B'), (6, 'B'), (6, 'D'), (6, 'Não Preencheu'), (6, 'Não Preencheu'),
  -- Conjunto 7
  (7, 'D'), (7, 'B'), (7, 'A'), (7, 'A'), (7, 'B'), (7, 'B'), (7, 'B'), (7, 'A'), (7, 'D'), (7, 'B'), (7, 'C'), (7, 'A'), (7, 'C'), (7, 'D'), (7, 'B'), (7, 'C'), (7, 'Não Preencheu'), (7, 'Não Preencheu');


-- Inserir respostas de matemática
INSERT INTO respostaMatematica (id_avaliacao, resposta)
VALUES
  -- Conjunto 1
  (1, 'B'), (1, 'C'), (1, 'A'), (1, 'A'), (1, 'B'), (1, 'C'), (1, 'D'), (1, 'D'), (1, 'A'), (1, 'C'), (1, 'B'), (1, 'B'), (1, 'D'), (1, 'A'), (1, 'A'), (1, 'B'), (1, 'C'), (1, 'A'), (1, 'C'), (1, 'B'), (1, 'A'), (1, 'D'), (1, 'A'), (1, 'D'), (1, 'Não Preencheu'),
  -- Conjunto 2
  (2, 'B'), (2, 'C'), (2, 'D'), (2, 'D'), (2, 'D'), (2, 'A'), (2, 'B'), (2, 'A'), (2, 'C'), (2, 'B'), (2, 'D'), (2, 'C'), (2, 'D'), (2, 'C'), (2, 'A'), (2, 'D'), (2, 'A'), (2, 'C'), (2, 'C'), (2, 'A'), (2, 'D'), (2, 'A'), (2, 'C'), (2, 'C'), (2, 'A'),
  -- Conjunto 3
  (3, 'A'), (3, 'B'), (3, 'C'), (3, 'B'), (3, 'C'), (3, 'B'), (3, 'D'), (3, 'A'), (3, 'D'), (3, 'A'), (3, 'A'), (3, 'C'), (3, 'A'), (3, 'D'), (3, 'C'), (3, 'Não Preencheu'), (3, 'Não Preencheu'),
  -- Conjunto 4
  (4, 'B'), (4, 'D'), (4, 'B'), (4, 'B'), (4, 'C'), (4, 'B'), (4, 'D'), (4, 'A'), (4, 'A'), (4, 'A'), (4, 'C'), (4, 'C'), (4, 'A'), (4, 'D'), (4, 'B'), (4, 'D'), (4, 'C'), (4, 'Não Preencheu'),
  -- Conjunto 5
  (5, 'B'), (5, 'D'), (5, 'B'), (5, 'B'), (5, 'C'), (5, 'B'), (5, 'D'), (5, 'A'), (5, 'A'), (5, 'A'), (5, 'C'), (5, 'C'), (5, 'A'), (5, 'D'), (5, 'B'), (5, 'D'), (5, 'Não Preencheu'), (5, 'Não Preencheu'),
  -- Conjunto 6
  (6, 'D'), (6, 'B'), (6, 'D'), (6, 'C'), (6, 'B'), (6, 'B'), (6, 'D'), (6, 'A'), (6, 'D'), (6, 'A'), (6, 'B'), (6, 'B'), (6, 'D'), (6, 'Não Preencheu'), (6, 'Não Preencheu'),
  -- Conjunto 7
  (7, 'D'), (7, 'B'), (7, 'A'), (7, 'A'), (7, 'B'), (7, 'B'), (7, 'B'), (7, 'A'), (7, 'D'), (7, 'B'), (7, 'C'), (7, 'A'), (7, 'C'), (7, 'D'), (7, 'B'), (7, 'C'), (7, 'Não Preencheu'), (7, 'Não Preencheu');

SELECT * FROM avaliacaodados WHERE id_avaliacao = 8;
INSERT INTO avaliacaodados (id_avaliacao, outras_colunas)
VALUES (8, 'outros_valores');
-- Verificar se o valor existe na tabela referenciada
SELECT * FROM avaliacaodados WHERE id_avaliacao = 8;

UPDATE respostamatematica
SET id_avaliacao = (novo_valor)
WHERE id_avaliacao = (valor_incorreto);

SELECT id FROM avaliacaodados;





