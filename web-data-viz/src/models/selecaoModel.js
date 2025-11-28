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


function votosTemporada() {
    return database.executar (`
        SELECT fktemporada, COUNT(*) AS votos
        FROM selecao
        GROUP BY fktemporada;
        `)
}

function atualizar(fkusuario, idpersonagem, idtemporada) {
    console.log("Atualizando seleção do usuário:", fkusuario);

    var instrucao = `
        UPDATE selecao
        SET fkpersonagem = ${idpersonagem},
            fktemporada = ${idtemporada}
        WHERE fkusuario = ${fkusuario};
    `;

    console.log("Executando SQL:", instrucao);

    return database.executar(instrucao);
}

function listarJojoPrincipais() {
    var instrucao = `
        SELECT idPersonagem, nomePersonagem
        FROM personagem
        WHERE idPersonagem IN (1,2,3,4,5,6,7,9);
    `;
    return database.executar(instrucao);
}

function votosPorParte() {
    return database.executar(`
        SELECT fktemporada, COUNT(*) AS votos
        FROM selecao
        GROUP BY fktemporada;
    `);
}


module.exports = {
     selecionar,
    votosPersonagem,
    votosTemporada,
    atualizar,
    listarJojoPrincipais,
    votosPorParte
};
