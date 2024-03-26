#ARQUIVO P/ARMAZENAR STORED PROCEDURE DO atv4_bd3_Jhonny

DELIMITER $

	CREATE PROCEDURE listagem_aluno(IN id_aluno_param INT)
    BEGIN
		SELECT 
			a.sigla AS sigla_turma, a.nome AS nome_turma, 
            b.nome AS nome_aluno, b.telefone_aluno, b.telefone_responsavel, b.email AS email_aluno, b.data_nascimento
		FROM tbl_turma AS a
        INNER JOIN tbl_aluno AS b ON b.cod_turma = a.cod_turma
        WHERE b.cod_aluno = id_aluno_param;
    END

$

CALL listagem_aluno(7);