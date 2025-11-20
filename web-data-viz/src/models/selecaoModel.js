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

module.exports = {
    selecionar
};
