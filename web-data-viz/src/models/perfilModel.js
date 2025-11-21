var database = require("../database/config");

function exibir(usuarioID) {
    return database.executar (`
            SELECT nome, email FROM usuario WHERE id = ${usuarioID}
        `)
}

function atualizar(id, nome, email, senha) {
    var instrucao = `
        UPDATE usuario SET nome = '${nome}', email = '${email}', senha = '${senha}'
        WHERE id = ${id};
    `;
    return database.executar(instrucao)
}

module.exports = {
    exibir,
    atualizar
};