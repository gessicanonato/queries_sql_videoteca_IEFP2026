create database videoteca;
use videoteca;

SELECT nome_f AS Filme, ano_f AS Ano, nome_t AS Autor, nome_p AS Page
	FROM filmes
	LEFT JOIN tecnicos ON autor_f=id_t
	LEFT JOIN paises ON pais_f=id_p;

SELECT nome_t AS Profissional, nome_p AS Nacionalidade
	FROM filmes
	LEFT JOIN tecnicos ON autor_f=id_t
	LEFT JOIN paises ON pais_f=id_p;

-- Listagem de todos os atores e dos filmes em que participaram.

 SELECT nome_t AS Atores, nome_f AS Filmes
 	FROM tecnicos
 	INNER JOIN atores_filmes ON id_t_af=id_t
 	INNER JOIN filmes ON id_f_af=id_f
 	ORDER BY nome_t;

-- Listagem de todos os filmes, com os respectivos estúdios, e classificações.

SELECT nome_f, nome_e, nome_c
	FROM filmes
	LEFT JOIN estudios ON estudio_f=id_e
	LEFT JOIN classificacoes ON classif_f=id_c;

-- listar todos os filmes, os países em que foram feitos e o suporte

SELECT nome_f AS Filmes, nome_p AS Pais, nome_s AS Suporte
	FROM filmes
	LEFT JOIN paises ON pais_f=id_p
	LEFT JOIN suportes ON suporte_f=id_s;

-- listar todos os filmes, o país do filme, o suporte , a classificação e o realizador.

SELECT nome_f AS Filmes, nome_p AS Pais, nome_s AS Suporte, nome_c AS Classif, nome_t AS Realizador
	FROM filmes
	LEFT JOIN paises ON pais_f=id_p
	LEFT JOIN suportes ON suporte_f=id_s
	LEFT JOIN classificacoes ON classif_f=id_c
	LEFT JOIN tecnicos ON realizador_f=id_t;

-- listar todos os filmes, o país do filme, o suporte, a classificação, o estúdio, e o realizador. 

SELECT nome_f AS Filmes, nome_p AS Pais, nome_s AS Suporte, nome_c AS Classif, nome_t AS Realizador
	FROM filmes
	LEFT JOIN paises ON pais_f=id_p
	LEFT JOIN suportes ON suporte_f=id_s
	LEFT JOIN classificacoes ON classif_f=id_c
	LEFT JOIN estudios ON estudio_f=id_e
	LEFT JOIN tecnicos ON realizador_f=id_t;

-- listar todos os filmes e os respectivos autores.

SELECT nome_f AS Filmes, nome_t AS Atores 
	FROM filmes 
	LEFT JOIN atores_filmes ON id_f=id_f_af 
	LEFT JOIN tecnicos ON id_t=id_f


-- listar todos os filmes e géneros rescpectivos.

SELECT nome_f AS FILMES, nome_g AS GENERO
	FROM filmes
	LEFT JOIN  generos_filmes ON id_f=id_f_gf
	LEFT JOIN  generos ON id_g_gf=id_g;

-- lista dos filmes, realizador e autor

SELECT filmes.nome_f AS Filmes, autores.nome_t AS Autor, realizadores.nome_t AS Realizador
   	FROM filmes
	LEFT JOIN  join tecnicos AS realizadores ON realizador_f=realizadores.id_t
        LEFT JOIN  tecnicos AS autores ON autor_f=autores.id_t;


-- listar todos os filmes, país do filme, realizador e país do realizador

SELECT filmes.nome_f AS FILMES, paises.nome_p AS PAÍS_DO_FILME, realizadores.nome_t AS REALIZADOR, pais_realizador.nome_p AS NACIONALIDADE	
	FROM filmes
	LEFT JOIN paises ON id_p=pais_f
	LEFT JOIN tecnicos AS realizadores ON realizador_f=realizadores.id_t
	LEFT JOIN paises AS pais_realizador ON pais_t=pais_realizador.id_p;


-- listagem dos filmes (nome, ano, pais, autor, realizador) - refazer

SELECT 
	nome_f AS FILME, 
	ano_f AS ANO, 
	nome_p AS PAÍS, 
	autores.nome_t AS AUTORES, 
	realizador.nome_t AS REALIZADOR
	FROM filmes
    	LEFT JOIN paises ON pais_f=id_p
    	LEFT JOIN tecnicos AS autores ON filmes.autor_f=autores.id_t
    	LEFT JOIN tecnicos AS realizador ON realizador_f=realizador.id_t; 

-- listar todos os filmes, o país do filme, o suporte, a classificação, o estúdio, o realizador, e o pais de realizador.


SELECT 
    nome_f AS FILME,
    paises.nome_p AS PAIS,
    nome_s AS SUPORTE,
    nome_c AS CLASSIFICACAO,
    realizadores.nome_t AS REALIZADOR,
    pais_realizador.nome_p AS PAIS_DO_REALIZADOR
FROM filmes
LEFT JOIN paises ON pais_f = paises.id_p
LEFT JOIN suportes ON suporte_f = suportes.id_s
LEFT JOIN classificacoes ON classif_f = classificacoes.id_c
LEFT JOIN tecnicos AS realizadores ON realizador_f = realizadores.id_t
LEFT JOIN paises AS pais_realizador ON realizadores.pais_t = pais_realizador.id_p;

-- listar todos os filmes (por ordem alfabética) e o ano respectivo.

 SELECT nome_f AS FILMES, ano_f AS ANO
	FROM filmes
	ORDER BY nome_f;

-- listar todos os filmes, o ano, e ordenar do mais recente pro mais antigo.

SELECT nome_f AS FILMES, ano_f AS ANO
	FROM FILMES
	ORDER BY ano_f DESC;

-- listar todos os filmes, o ano (ordenar do mais antigo para o mais recente)

SELECT 	nome_f, ano_f 
	FROM filmes 
	ORDER BY ano_f ASC;

-- inserir na tabela estúdios os estúdios "TEAIG Motion Pictures" de "Faro" e "Areal Gordo Bros" do "Areal Gordo"

INSERT INTO estudios (nome_e, local_e)
	VALUES ('TEAIG Motion Pictures', 'Faro');

INSERT INTO estudios (nome_e, local_e)
	VALUES ("Areal Gordo Bros", "Areal Gordo");


-- atualizar o local do estudio "TEAIG Motion Pictures" para "Faro,Portugal"

UPDATE estudios
	SET local_e = 'Faro, Portugal'
	WHERE nome_e = 'TEAIG Motion Pictures';


-- atualizar o local do estudio "Areal Gordo Bros" para "Areal Gordo,Portugal"

UPDATE estudios
	SET local_e = 'Areal Gordo, Portugal'	
	WHERE nome_e = "Areal Gordo Bros";

-- listar todos os estúdios que tem filmes na nossa BD

SELECT DISTINCT nome_e from filmes 
	LEFT JOIN estudios ON estudio_f=id_e;

-- *distinct pra não repetir
-- *select nome_f from filmes limit 5 offset 5; offset ignora no caso os 5 primeiros id's

-- listar os atores e o nome dos filmes que eles fizeram

SELECT nome_f AS FILMES, nome_t AS ATORES
FROM atores_filmes
LEFT JOIN tecnicos on id_t_af=id_t
LEFT JOIN filmes ON id_f_af=id_f
ORDER BY nome_t;

SELECT nome_t AS Atores, count(id_f_af) AS Filmes
FROM atores_filmes
LEFT JOIN tecnicos on id_t_af=id_t
GROUP BY nome_t 
ORDER BY nome_t;


SELECT 
    t.nome_t AS ator,
    COUNT(f.id_f) AS quantidade_filmes,
    GROUP_CONCAT(f.nome_f SEPARATOR ', ') AS filmes
FROM atores_filmes af
LEFT JOIN tecnicos t ON af.id_t_af = t.id_t
LEFT JOIN filmes f ON af.id_f_af = f.id_f
GROUP BY t.nome_t
ORDER BY t.nome_t;

