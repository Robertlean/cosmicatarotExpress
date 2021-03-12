var express = require('express');
var router = express.Router();

var controller = require('../controllers/userControllers');


const loginValidator = require('../validation/loginValidator')

const sessionUpCheck = require('../middleware/sessionUserCheck')


/* GET users listing. */


router.get('/', controller.login);
//router.post('/login', loginValidator, controller.processLogin)
router.get('/perfil', controller.user);

module.exports = router;