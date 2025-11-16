var personagemModel = require("../models/personagemModel");

function listar(req, res) {
    personagemModel.listar()
        .then(resultado => {
            res.status(200).json(resultado);
        })
        .catch(erro => {
            console.log(erro);
            res.status(500).json(erro);
        });
}

module.exports = {
    listar
};
