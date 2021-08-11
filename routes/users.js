var express = require('express');
var router = express.Router();

var controller = require('../controllers/userControllers');


const loginValidator = require('../validation/loginValidator')

const sessionUserCheck = require('../middleware/sessionUserCheck')


/* GET users listing. */


router.get('/', controller.login);
router.post('/', (req,res) => {res.send('me harte')})
router.get('/perfil', sessionUserCheck, controller.user);

module.exports = router;