var express = require("express");
var router = express.Router();
var quizController = require("../controllers/quizController");

router.post("/finalizar", function (req, res) {
    quizController.finalizar(req, res)
});
 
module.exports = router;