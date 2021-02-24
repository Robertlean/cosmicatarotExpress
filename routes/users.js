var express = require('express');
var router = express.Router();
var controller = require('../controllers/userControllers');

const registerValidator = require("../validation/registerValidator");
const loginValidator = require('../validation/loginValidator')


/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

router.get('/login', controller.login);
router.post('login', loginValidator, controller.verificacionLogin)
router.get('/register', controller.register);
router.get('/perfil', controller.user);

module.exports = router;
