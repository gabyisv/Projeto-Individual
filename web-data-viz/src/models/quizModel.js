var database = require("../database/config");

function finalizar(idusuario, idquiz, pontuacao) {
    console.log("ACESSEI O QUIZ MODEL : Registrando a pontuação do usuário no banco...")

    var instrucao = `
        INSERT INTO resultado (idusuario, idquiz, pontuacao) VALUES
        (${idusuario}, ${idquiz}, ${pontuacao});
    `;

    console.log(`Executando a instrução SQL: ${instrucao}`);

    return database.executar(instrucao)
}

module.exports = {
    finalizar
};