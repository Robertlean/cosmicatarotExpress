var express = require('express');
var router = express.Router();

var controller = require('../controllers/userControllers');

const registerValidator = require("../validation/registerValidator");

const userCheck = require('../middleware/sessionUserCheck')
const adminCheck = require('../middleware/adminCheck')

router.get('/', controller.register);
router.post('/', registerValidator, controller.processRegister);

module.exports = router;