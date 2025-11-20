var selecaoModel = require("../models/selecaoModel");

function selecionar(req, res) {
    var fkusuario = req.body.fkusuario;
    var fkpersonagem = req.body.fkpersonagem;
    var fktemporada = req.body.fktemporada;

    if (fkusuario == undefined) {
        return res.status(400).send("O id do usuario está undefined")
    } else if (fkpersonagem == undefined) {
        return res.status(400).send("O id do personagem esta undefined")
    } else if (fktemporada == undefined) {
        return res.status(400).send("O id da temporada está undefined")
    }

    selecaoModel.selecionar(fkusuario, fkpersonagem, fktemporada)
        .then(function(selecao) {
            res.status(201).json(selecao)
        })
        .catch(function(erro) {
            console.log(erro);
            console.log("Houve um erro no cadastro da votação ", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage)
        })
}

module.exports = {
    selecionar
};