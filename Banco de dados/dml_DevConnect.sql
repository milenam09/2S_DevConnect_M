--DML

USE dml_seletivo;

INSERT INTO tb_usuario(nome_completo, nome_usuario,email,senha, foto_perfil_url)VALUES
('Milena Mares','Maresz','milenamares1@gmail.com','qf3axAFQjx','fotoperfil',1),
('Rawany Batista','rawnaby','rawanys1@gmail.com','qf3axAFQjx','fotperf',1);


SELECT * FROM tb_usuario;

INSERT INTO tb_publicacao(Descricao,imagem_url,data_publi) VALUES
('dia lindo em familia','fotopubli','2025/10/03');


SELECT * FROM tb_publicacao;

INSERT INTO tb_curtidas(id_turma,id_prova)
VALUES 
(2,17),
(2,16);