
---

📘 DICIONÁRIO SQL — PRINCIPAIS COMANDOS


---

🔹 DDL — Definição da Estrutura do Banco de Dados

Usado para criar, alterar ou remover bancos, tabelas e colunas. Não trabalha com dados, apenas com a estrutura.

CREATE DATABASE — Cria um novo banco de dados

CREATE DATABASE minha_base;

USE — Seleciona o banco de dados que será utilizado

USE minha_base;

CREATE TABLE — Cria uma nova tabela com suas colunas

CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    idade INT,
    criado_em DATETIME
);

ALTER TABLE — Modifica a estrutura de uma tabela existente

ALTER TABLE usuarios ADD telefone VARCHAR(20);

ALTER TABLE usuarios MODIFY idade SMALLINT;

DROP TABLE — Remove uma tabela do banco de dados

DROP TABLE usuarios;


---

🔹 DML — Manipulação de Dados

Usado para inserir, alterar e remover registros dentro das tabelas.

INSERT — Insere novos dados em uma tabela

INSERT INTO usuarios (nome, email, idade)
VALUES ('João', 'joao@email.com', 25);

INSERT INTO usuarios (nome, email, idade) VALUES
('Ana', 'ana@email.com', 30),
('Pedro', 'pedro@email.com', 22);

UPDATE — Atualiza dados já existentes

UPDATE usuarios
SET idade = 26
WHERE id = 1;

DELETE — Remove registros de uma tabela

DELETE FROM usuarios WHERE id = 1;

DELETE FROM usuarios;


---

🔹 DQL — Consulta de Dados

Usado para buscar e visualizar informações armazenadas no banco.

SELECT — Consulta dados de uma tabela

SELECT * FROM usuarios;

SELECT nome, email FROM usuarios;

WHERE — Filtra os resultados da consulta

SELECT * FROM usuarios WHERE idade > 18;

SELECT * FROM usuarios WHERE nome LIKE 'A%';

BETWEEN / IN — Filtra por intervalos ou listas

SELECT * FROM usuarios WHERE idade BETWEEN 18 AND 30;

SELECT * FROM usuarios WHERE idade IN (18, 25, 30);


---

🔹 ORDER BY e LIMIT — Organização e Controle dos Resultados

Define a ordem dos dados e limita a quantidade de registros retornados.

ORDER BY — Ordena os dados

SELECT * FROM usuarios ORDER BY idade ASC;

SELECT * FROM usuarios ORDER BY idade DESC;

LIMIT — Restringe a quantidade de resultados

SELECT * FROM usuarios LIMIT 5;


---

🔹 Funções Agregadas — Cálculos sobre conjuntos de dados

Realizam operações matemáticas e estatísticas.

COUNT — Conta registros

SELECT COUNT(*) FROM usuarios;

AVG — Calcula média

SELECT AVG(idade) FROM usuarios;

MAX / MIN — Retorna maior ou menor valor

SELECT MAX(idade), MIN(idade) FROM usuarios;

SUM — Soma valores

SELECT SUM(idade) FROM usuarios;


---

🔹 GROUP BY e HAVING — Agrupamento e Filtro de Grupos

Agrupa registros e permite filtrar resultados agrupados.

GROUP BY — Agrupa registros iguais

SELECT idade, COUNT(*) 
FROM usuarios
GROUP BY idade;

HAVING — Filtra resultados após o agrupamento

SELECT idade, COUNT(*) 
FROM usuarios
GROUP BY idade
HAVING COUNT(*) > 1;


---

🔹 JOIN — Relacionamento entre Tabelas

Usado para combinar dados de duas ou mais tabelas relacionadas.

INNER JOIN — Retorna apenas registros correspondentes

SELECT u.nome, p.valor
FROM usuarios u
INNER JOIN pedidos p ON u.id = p.usuario_id;

LEFT JOIN — Retorna todos da tabela da esquerda

SELECT u.nome, p.valor
FROM usuarios u
LEFT JOIN pedidos p ON u.id = p.usuario_id;


---

🔹 Índices e Chaves — Otimização e Integridade dos Dados

Melhoram a performance e garantem relacionamentos corretos.

INDEX — Acelera consultas

CREATE INDEX idx_nome ON usuarios(nome);

FOREIGN KEY — Cria relacionamento entre tabelas

FOREIGN KEY (usuario_id) REFERENCES usuarios(id);


---

🔹 Transações — Controle de operações críticas

Garante segurança em operações múltiplas.

START TRANSACTION;

UPDATE usuarios SET idade = 30 WHERE id = 2;

COMMIT;

ROLLBACK;


---

🔹 Comentários — Documentação do código

-- Comentário de uma linha

/* Comentário
   de várias linhas */


---
