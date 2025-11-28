var express = require("express");
var router = express.Router();
var selecaoController = require("../controllers/selecaoController");

router.post("/selecionar", function(req, res) {
    selecaoController.selecionar(req, res);
});

router.get("/votos-personagem", function (req, res) {
    selecaoController.votosPersonagem(req, res);
});

router.get("/votos-temporada", function (req, res) {
    selecaoController.votosTemporada(req, res);
});

router.get("/personagens-principais", function (req, res) {
    selecaoController.listarJojoPrincipais(req, res);
});

router.get("/votos-parte", function(req, res) {
  selecaoController.votosPorParte(req, res);
});

module.exports = router;
