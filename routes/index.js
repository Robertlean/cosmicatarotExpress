var express = require('express');
var router = express.Router();
var controller = require('../controllers/mainControllers')
/* GET home page. */
router.get('/', controller.index);
router.get('/createpost', controller.createpost)

module.exports = router;
