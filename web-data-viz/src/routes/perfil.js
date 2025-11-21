var express = require("express");
var router = express.Router();

var perfilController = require("../controllers/perfilController");

router.get("/exibir", function(req,res) {
    perfilController.exibir(req,res);
});

module.exports = router;

router.put("/atualizar", function(req,res) {
    perfilController.atualizar(req,res);
});