
---

📌 1. Criação e estrutura do banco (DDL)

Criar um banco de dados

CREATE DATABASE minha_base;

Usar um banco de dados

USE minha_base;

Criar uma tabela

CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    idade INT,
    criado_em DATETIME
);

Alterar tabela (adicionar coluna)

ALTER TABLE usuarios ADD telefone VARCHAR(20);

Alterar tipo de coluna

ALTER TABLE usuarios MODIFY idade SMALLINT;

Excluir tabela

DROP TABLE usuarios;


---

📌 2. Inserção de dados (DML)

Inserir um registro

INSERT INTO usuarios (nome, email, idade)
VALUES ('João', 'joao@email.com', 25);

Inserir vários registros

INSERT INTO usuarios (nome, email, idade) VALUES
('Ana', 'ana@email.com', 30),
('Pedro', 'pedro@email.com', 22);


---

📌 3. Consulta de dados (SELECT)

Selecionar tudo

SELECT * FROM usuarios;

Selecionar colunas específicas

SELECT nome, email FROM usuarios;

Filtrar com WHERE

SELECT * FROM usuarios WHERE idade > 18;

Usar operadores

SELECT * FROM usuarios WHERE idade BETWEEN 18 AND 30;

SELECT * FROM usuarios WHERE nome LIKE 'A%';


---

📌 4. Ordenação e Limite

Ordenar resultados

SELECT * FROM usuarios ORDER BY idade ASC;

SELECT * FROM usuarios ORDER BY idade DESC;

Limitar resultados

SELECT * FROM usuarios LIMIT 5;


---

📌 5. Atualização de dados

Atualizar registros

UPDATE usuarios
SET idade = 26
WHERE id = 1;

⚠ Nunca esqueça o WHERE, senão atualiza tudo!


---

📌 6. Exclusão de dados

Excluir registro

DELETE FROM usuarios WHERE id = 1;

Excluir todos os registros

DELETE FROM usuarios;


---

📌 7. Funções agregadas

SELECT COUNT(*) FROM usuarios;

SELECT AVG(idade) FROM usuarios;

SELECT MAX(idade), MIN(idade) FROM usuarios;

SELECT SUM(idade) FROM usuarios;


---

📌 8. Agrupamento

GROUP BY

SELECT idade, COUNT(*) 
FROM usuarios
GROUP BY idade;

HAVING (filtro após agrupamento)

SELECT idade, COUNT(*) 
FROM usuarios
GROUP BY idade
HAVING COUNT(*) > 1;


---

📌 9. Relacionamento entre tabelas (JOIN)

INNER JOIN

SELECT u.nome, p.valor
FROM usuarios u
INNER JOIN pedidos p ON u.id = p.usuario_id;

LEFT JOIN

SELECT u.nome, p.valor
FROM usuarios u
LEFT JOIN pedidos p ON u.id = p.usuario_id;


---

📌 10. Índices e chaves

Criar índice

CREATE INDEX idx_nome ON usuarios(nome);

Chave estrangeira

FOREIGN KEY (usuario_id) REFERENCES usuarios(id);


---

📌 11. Transações

START TRANSACTION;

UPDATE usuarios SET idade = 30 WHERE id = 2;

COMMIT;

ROLLBACK;


---

📌 12. Comentários em SQL

-- Comentário de uma linha

/* Comentário
   de várias linhas */


---

📌 Dica final 📘

Você pode salvar tudo isso em um arquivo chamado, por exemplo:

dicionario_sql.sql