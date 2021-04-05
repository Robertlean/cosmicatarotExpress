var express = require('express');
var router = express.Router();

var controller = require('../controllers/userControllers');

/* GET profile listing. */

router.get('/:id', controller.profile);

router.get('/:id/editperfil',controller.mostraredit);
router.post('/:id/editperfil', controller.editprofile)

module.exports = router;