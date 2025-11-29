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

function atualizar(req, res) {
    var fkusuario = req.body.fkusuario;
    var idpersonagem = req.body.idpersonagem;
    var idtemporada = req.body.idtemporada;

    if (idpersonagem == undefined) {
        return res.status(400).send("O ID do personagem está undefined")
    } else if (idtemporada == undefined) {
        return res.status(400).send("O ID da temporada está undefined")
    }

    selecaoModel.atualizar(fkusuario, idpersonagem, idtemporada)
        .then(function(resultado) {
            res.status(201).json(resultado)
        })
        .catch(function(erro) {
        console.log(erro);
        console.log("Houve um erro ao atualizar a Dashboard Erro: ", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
        })
}

function votosPersonagem(req, res) {
    selecaoModel.votosPersonagem()
        .then(function(resultado) {
            res.status(200).json(resultado);
        })
        .catch(function(erro) {
            res.status(500).json(erro);
        });
}


function votosPorParte(req, res) {
    selecaoModel.votosPorParte()
        .then(resultado => res.status(200).json(resultado))
        .catch(erro => {
            console.log("Erro ao buscar votos por parte:", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        });
}



module.exports = {
    selecionar,
    atualizar,
    votosPersonagem,
    votosPorParte
}
