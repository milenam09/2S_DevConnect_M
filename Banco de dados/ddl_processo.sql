--DDL

CREATE DATABASE ddl_processo;

CREATE TABLE tb_usuario(
ID  INT			IDENTITY	(1,1)			PRIMARY KEY,
nome_completo	NVARCHAR	(150)			NOT NULL,
nome_usuario	NVARCHAR	(150)	UNIQUE	NOT NULL,
email			NVARCHAR	(150)	UNIQUE	NOT NULL,
senha			NVARCHAR	(150)			NOT NULL,
foto_perfil_url NVARCHAR	(150)			NOT NULL,
);

CREATE TABLE tb_publicacao(
ID  INT			IDENTITY	(1,1)			PRIMARY KEY,
Descricao		NVARCHAR    (150)			NOT NULL,
imagem_url		NVARCHAR	(150)			NOT NULL,
data_publi      DATE						NOT NULL,
);

CREATE TABLE tb_curtidas(
id_usuario		INT			IDENTITY	(1,1),
id_publicacao	INT			IDENTITY	(1,1),

PRIMARY KEY (id_usuario,id_publicacao),
);