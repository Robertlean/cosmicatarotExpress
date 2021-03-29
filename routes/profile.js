var express = require('express');
var router = express.Router();

var controller = require('../controllers/userControllers');

/* GET profile listing. */

router.get('/:id', controller.profile);

module.exports = router;