#ARQUIVO P/ARMAZENAR STORED PROCEDURE DO atv4_bd3_Jhonny

DELIMITER $

	CREATE PROCEDURE cont_aluno(OUT alunos_param INT)
    BEGIN
		SELECT count(a.cod_aluno) INTO alunos_param
        FROM tbl_aluno AS a;
    END

$

CALL cont_aluno(@alunos_param);
SELECT @alunos_param AS num_alunos;