var express = require('express');
var router = express.Router();

var controller = require('../controllers/userControllers');


const loginValidator = require('../validation/loginValidator')

const sessionUserCheck = require('../middleware/sessionUserCheck')


/* GET users listing. */


router.get('/', controller.login);
router.post('/', controller.processLogin)
router.get('/perfil', sessionUserCheck, controller.user);

module.exports = router;