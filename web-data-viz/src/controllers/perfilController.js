var perfilModel = require("../models/perfilModel");

function exibir(req,res) {
    var usuarioID = req.query.id;
    perfilModel.exibir(usuarioID)
    .then(usuario => {
        if (!usuario) {
            return res.status(400).json({erro: "usuário não encontrado. "})
        }
        res.status(200).json(usuario)
    })
    .catch(function(erro) {
        console.log(erro);
        console.log("Houve um erro no cadastro das informações ", erro.sqlMessage || erro); 
        res.status(500).json({erro: erro.sqlMessage || erro});
    })
}


function atualizar(req, res) {
    var {id,nome, email, senha} = req.body;
    
    perfilModel.atualizar(id, nome, email, senha)
    .then(() => res.json({sucesso: true}))
    .catch(erro => {
        console.log(erro);
        res.status(500).json({erro: erro.sqlMessage || erro});
    });
}

module.exports = {
    exibir,
    atualizar
};
