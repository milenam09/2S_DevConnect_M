--DDL

CREATE DATABASE dml_seletivo;

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

CREATE TABLE tb_usuario_publicacao(
id_usuario		INT		NOT NULL,
id_publicacao	INT		NOT NULL	

 PRIMARY KEY (id_usuario,id_publicacao)
);

CREATE TABLE tb_comentario(
id INT			IDENTITY		(1,1)		PRIMARY KEY,
texto			NVARCHAR		(150)		NOT NULL,
data_coment		DATE						NOT NULL,
);

CREATE TABLE tb_seguidor(
id_usuario_seguir		INT		NOT NULL,
id_usuario_seguindo	INT		NOT NULL	

 PRIMARY KEY (id_usuario_seguir,id_usuario_seguindo)
);