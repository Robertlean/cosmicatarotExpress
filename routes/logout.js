var express = require('express');
var router = express.Router();

var controller = require('../controllers/userControllers');

/* GET users listing. */
router.get('/', controller.logout)

module.exports = router;