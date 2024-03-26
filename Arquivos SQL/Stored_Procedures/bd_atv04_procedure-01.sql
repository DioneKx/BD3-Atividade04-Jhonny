#ARQUIVO P/ARMAZENAR STORED PROCEDURE DO atv4_bd3_Jhonny

DELIMITER $

	CREATE PROCEDURE listagem_turmas()
    BEGIN
		SELECT 
			a.sigla AS sigla_turma, a.nome AS nome_turma, 
            b.nome AS nome_aluno, b.telefone_aluno, b.telefone_responsavel, b.email AS email_aluno, b.data_nascimento
		FROM tbl_turma AS a
        INNER JOIN tbl_aluno AS b ON b.cod_turma = a.cod_turma;
    END

$

CALL listagem_turmas();