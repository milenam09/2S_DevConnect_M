--DDL
CREATE DATABASE db_devconnect;
GO
USE db_devconnect;

CREATE TABLE tb_usuario(
	ID_Usuario		INT				IDENTITY(1,1)		PRIMARY KEY
	,nome_completo	NVARCHAR(255)						NOT NULL
	,nome_usuario	NVARCHAR(55)	UNIQUE				NOT NULL
	,email			NVARCHAR(155)	UNIQUE				NOT NULL
	,senha			NVARCHAR(50)						NOT NULL
	,foto_perfl_url	NVARCHAR(150)						NULL
);

CREATE TABLE tb_publi(
	ID_Publi		INT				IDENTITY(1,1)		PRIMARY KEY
	,descricao		NVARCHAR(155)						NOT NULL
	,imagem_url		NVARCHAR(150)						NULL
	,data_publi		DATE								NOT NULL
);

CREATE TABLE tb_curtidas(
	ID_Curtidas		INT				IDENTITY(1,1)		PRIMARY KEY
	,ID_Usuario		INT									NOT NULL
	,ID_Publi		INT									NOT NULL

	FOREIGN KEY(ID_Usuario) REFERENCES tb_usuario(ID_Usuario),
	FOREIGN KEY(ID_Publi)	REFERENCES tb_publi(ID_Publi),
);

CREATE TABLE tb_comentarios(
	ID_Comentarios	INT				IDENTITY(1,1)		PRIMARY KEY
	,texto			NVARCHAR(155)						NOT NULL
	,data_coment	DATE								NOT NULL
	,ID_Usuario		INT									NOT NULL
	,ID_Publi		INT									NOT NULL

	FOREIGN KEY(ID_Usuario) REFERENCES tb_usuario(ID_Usuario),
	FOREIGN KEY(ID_Publi) REFERENCES tb_publi(ID_Publi),
);

CREATE TABLE tb_seguidor(
	ID_UsuarioSeguidor	INT								NOT NULL
	,ID_Usuario			INT								NOT NULL
	PRIMARY KEY (ID_UsuarioSeguidor, ID_Usuario),
	
	FOREIGN KEY(ID_UsuarioSeguidor) REFERENCES tb_usuario(ID_Usuario),
	FOREIGN KEY(ID_Usuario)	REFERENCES tb_usuario(ID_Usuario),
);