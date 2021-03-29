var express = require('express');
var router = express.Router();

var controller = require('../controllers/userControllers');
const sessionUserCheck = require('../middleware/sessionUserCheck')

/* GET users listing. */
router.get('/', controller.logout)

module.exports = router;