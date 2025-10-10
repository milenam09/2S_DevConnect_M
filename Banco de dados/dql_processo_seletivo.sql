USE db_devconnect;
GO

-- 1️⃣ Listar todos os usuários
SELECT * FROM tb_usuario;

SELECT ID_Publi, descricao, data_publi 
FROM tb_publi;

SELECT 
    c.ID_Curtidas,
    u.nome_usuario AS Usuario,
    p.descricao AS Publicacao
FROM tb_curtidas AS c
INNER JOIN tb_usuario AS u ON c.ID_Usuario = u.ID_Usuario
INNER JOIN tb_publi AS p ON c.ID_Publi = p.ID_Publi;


SELECT 
    cm.ID_Comentarios,
    u.nome_usuario AS Usuario,
    p.descricao AS Publicacao,
    cm.texto AS Comentario,
    cm.data_coment AS Data
FROM tb_comentarios AS cm
INNER JOIN tb_usuario AS u ON cm.ID_Usuario = u.ID_Usuario
INNER JOIN tb_publi AS p ON cm.ID_Publi = p.ID_Publi;


SELECT 
    seguidor.nome_usuario AS Seguidor,
    seguido.nome_usuario AS Seguido
FROM tb_seguidor AS s
INNER JOIN tb_usuario AS seguidor ON s.ID_UsuarioSeguidor = seguidor.ID_Usuario
INNER JOIN tb_usuario AS seguido ON s.ID_Usuario = seguido.ID_Usuario;


SELECT 
    p.descricao AS Publicacao,
    COUNT(c.ID_Curtidas) AS TotalCurtidas
FROM tb_publi AS p
LEFT JOIN tb_curtidas AS c ON p.ID_Publi = c.ID_Publi
GROUP BY p.descricao;


SELECT 
    p.descricao AS Publicacao,
    u.nome_usuario AS AutorComentario,
    c.texto AS Comentario
FROM tb_publi AS p
LEFT JOIN tb_comentarios AS c ON p.ID_Publi = c.ID_Publi
LEFT JOIN tb_usuario AS u ON c.ID_Usuario = u.ID_Usuario;


SELECT 
    u.nome_usuario AS Usuario,
    COUNT(s.ID_Usuario) AS TotalSeguindo
FROM tb_usuario AS u
LEFT JOIN tb_seguidor AS s ON u.ID_Usuario = s.ID_UsuarioSeguidor
GROUP BY u.nome_usuario;


SELECT 
    u.nome_usuario AS Usuario,
    COUNT(s.ID_UsuarioSeguidor) AS TotalSeguidores
FROM tb_usuario AS u
LEFT JOIN tb_seguidor AS s ON u.ID_Usuario = s.ID_Usuario
GROUP BY u.nome_usuario;


