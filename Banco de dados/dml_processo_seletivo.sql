--DML
USE db_devconnect;

INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha, foto_perfl_url)
VALUES
('Milena Mares', 'maresz.z', 'mimimares3@gmail.com', 'JoJoToddynho12345', 'www.fotoperfildevgram/Milena');

INSERT INTO tb_publi(descricao, imagem_url, data_publi)
VALUES('que viagem incrivel', 'www.fotodeparis', '2025/10/03');

INSERT INTO tb_curtidas(ID_Usuario, ID_Publi)
VALUES(1, 1);

INSERT INTO tb_comentarios(texto, data_coment, ID_Usuario, ID_Publi)
VALUES('Dia lindo com a familia', '2025/10/04', 1, 1);

INSERT INTO tb_seguidor(ID_UsuarioSeguidor, ID_Usuario)
VALUES(1, 1);