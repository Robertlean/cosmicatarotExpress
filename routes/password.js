var express = require('express');
var router = express.Router();
var controller = require('../controllers/userControllers');

router.get('/:id', controller.mostrarpass);
router.post('/', controller.editpass)


module.exports = router;