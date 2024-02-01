CREATE TABLE aluno (
    id INTEGER PRIMARY KEY AUTOINCREMENT, nome VARCHAR(50) NOT NULL
);

CREATE TABLE responsavel (
    id INTEGER PRIMARY KEY AUTOINCREMENT, nome VARCHAR(50) NOT NULL
);

CREATE TABLE parentesco (
    idResponsavel INTEGER, idAluno INTEGER, parentesco VARCHAR(20), FOREIGN KEY (idResponsavel) REFERENCES responsavel (id), FOREIGN KEY (idAluno) REFERENCES aluno (id) ON DELETE CASCADE
);

INSERT INTO aluno (nome) VALUES ('Lucas');

INSERT INTO responsavel (nome) VALUES ('Pablo');

INSERT INTO responsavel (nome) VALUES ('Brenda');

INSERT INTO
    parentesco (
        idResponsavel, idAluno, parentesco
    )
VALUES (1, 1, 'Pai');

INSERT INTO
    parentesco (
        idResponsavel, idAluno, parentesco
    )
VALUES (2, 1, 'Mãe');

SELECT
    alu.nome AS Aluno,
    res1.nome AS NomeResponsavel1,
    par1.parentesco AS Parentesco1,
    res2.nome AS NomeResponsavel2,
    par2.parentesco AS Parentesco2
FROM
    aluno alu
    LEFT JOIN parentesco par1 ON alu.id = par1.idAluno
    LEFT JOIN responsavel res1 ON par1.idResponsavel = res1.id
    LEFT JOIN parentesco par2 ON alu.id = par2.idAluno
    LEFT JOIN responsavel res2 ON par2.idResponsavel = res2.id
WHERE
    par1.idResponsavel <> par2.idResponsavel group by aluno;


SELECT
    alu.id AS IdAluno,
    alu.nome AS Aluno,
    res1.id as IdResponsavel1,
    res1.nome AS NomeResponsavel1,
    par1.parentesco AS Parentesco1,
    res2.id as IdResponsavel2,
    res2.nome AS NomeResponsavel2,
    par2.parentesco AS Parentesco2
FROM
    aluno alu
    LEFT JOIN parentesco par1 ON alu.id = par1.idAluno
    LEFT JOIN responsavel res1 ON par1.idResponsavel = res1.id
    LEFT JOIN parentesco par2 ON alu.id = par2.idAluno
    LEFT JOIN responsavel res2 ON par2.idResponsavel = res2.id
WHERE
    par1.idResponsavel <> par2.idResponsavel group by aluno;