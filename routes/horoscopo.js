var express = require('express');
var router = express.Router();

var controller = require('../controllers/horoscopoControllers');

router.get('/signo/edit/:id', controller.signoedit);
//router.post('/signo/edit/:id', loginValidator, controller.signosend)
router.get('/', controller.mostrarhoroscopo);
router.get('/signo', controller.mostrarsigno);

module.exports = router;
