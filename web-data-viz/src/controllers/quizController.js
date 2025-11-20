var quizModel = require("../models/quizModel")

function finalizar(req, res) {
    var idusuario = req.body.idusuario;
    var idquiz = req.body.idquiz;
    var pontuacao = req.body.pontuacao;

    if (idusuario == undefined) {
        return res.status(400).send("O id do usuário está indefinido.")
    } else if (idquiz == undefined) {
        return res.status(400).send("O id do quiz está indefinido.")
    } else if (pontuacao == undefined) {
        return res.status(400).send("A pontuação está indefinida.")
    } 

    quizModel.finalizar(idusuario, idquiz, pontuacao)
        .then(function(resultado) {
            res.status(201).json(resultado)
        })
        .catch(function(erro) {
        console.log(erro);
        console.log("Houve um erro ao registrar o resultado do quiz! Erro: ", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
        }
    )
    }

module.exports = {
    finalizar
};