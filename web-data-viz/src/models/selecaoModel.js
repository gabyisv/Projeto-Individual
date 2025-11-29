var database = require("../database/config");

function selecionar(fkusuario, fkpersonagem, fktemporada) {
    console.log("ACESSEI O QUIZ MODEL : Registrando a votação do usuário no banco...");
    console.log("Recebido no model =>", fkusuario, fkpersonagem, fktemporada);

    var instrucao = `
        INSERT INTO selecao (fkusuario, fkpersonagem, fktemporada)
        VALUES (${fkusuario}, ${fkpersonagem}, ${fktemporada});
    `;

    console.log("Executando a instrução SQL:", instrucao);

    return database.executar(instrucao);
}


function votosPersonagem() {
    var instrucao = `
        SELECT fkpersonagem, COUNT(*) AS votos
        FROM selecao
        GROUP BY fkpersonagem
        ORDER BY votos DESC;
    `;
    return database.executar(instrucao);
}

function votosPorParte() {
    var instrucao = `
        SELECT fktemporada, COUNT(*) AS votos
        FROM selecao
        GROUP BY fktemporada;
    `;
    return database.executar(instrucao);
}

function atualizar(fkusuario, idpersonagem, idtemporada) {
    var instrucao = `
        UPDATE selecao
        SET fkpersonagem = ${idpersonagem},
            fktemporada = ${idtemporada}
        WHERE fkusuario = ${fkusuario};
    `;

    console.log("Executando SQL:", instrucao);

    return database.executar(instrucao);
}

module.exports = {
    selecionar,
    votosPersonagem,
    atualizar,
    votosPorParte
};
