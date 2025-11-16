var database = require("../database/config");

function listar() {
    var sql = `SELECT 
    p.idPersonagem,
    p.nomePersonagem,
    CASE
        WHEN p.tecnica IS NULL THEN ''
        ELSE p.tecnica
    END AS tecnica,
    CASE
        WHEN MAX(s.nomeStand) IS NULL THEN ''
        ELSE MAX(s.nomeStand)
    END AS nomeStand,
    CASE
        WHEN MAX(h.nomeHabilidade) IS NULL THEN ''
        ELSE GROUP_CONCAT(DISTINCT h.nomeHabilidade)
    END AS nomeHabilidade,
    GROUP_CONCAT(DISTINCT t.nomeTemporada) AS temporadas,
    GROUP_CONCAT(DISTINCT t.idTemporada) AS idsTemporadas
FROM personagem AS p
LEFT JOIN stand AS s 
    ON s.fkPersonagem = p.idPersonagem
LEFT JOIN personagem_temporada AS pt 
    ON pt.idPersonagem = p.idPersonagem
LEFT JOIN temporada AS t 
    ON t.idTemporada = pt.idTemporada
LEFT JOIN habilidade AS h 
    ON h.fkPersonagem = p.idPersonagem
GROUP BY p.idPersonagem;
`;
    return database.executar(sql);

}

module.exports = {
    listar
};
