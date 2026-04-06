🎬 Videoteca — Banco de Dados Relacional

📌 Descrição do Projeto
Este repositório contém o desenvolvimento completo de um banco de dados para uma Videoteca, incluindo:

Modelagem Conceitual (ER)

Esquema Lógico Relacional

Implementação SQL (DDL + DML)

Inserção de dados para testes

Consultas SQL avançadas

Diagrama ER incluído no repositório

O objetivo foi criar uma base de dados capaz de armazenar informações sobre:

🎞️ Filmes
🎭 Atores
🎬 Técnicos
🏷️ Gêneros
🌍 Países
🏢 Estúdios
💽 Suportes
🔗 Relacionamentos N:N entre filmes × atores e filmes × gêneros

🧩 Esquema Lógico — Visão Geral
Abaixo estão as principais tabelas do banco de dados Videoteca:

Tabela	Descrição
filmes	Informações gerais dos filmes
generos	Lista de gêneros
generos_filmes	Relação N:N entre filmes e gêneros
atores_filmes	Relação N:N entre filmes e atores
tecnicos	Técnicos envolvidos
estudios	Estúdios responsáveis
classificacoes	Classificação indicativa
paises	Países de origem
suportes	Tipos de mídia (DVD, Blu-ray, etc.)
📌 O diagrama ER está disponível no repositório como:
diagrama_videoteca.png
