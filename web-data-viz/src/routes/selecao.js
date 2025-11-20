var express = require("express");
var router = express.Router();
var selecaoController = require("../controllers/selecaoController");

router.post("/selecionar", function(req, res) {
    selecaoController.selecionar(req,res)
});

module.exports = router;