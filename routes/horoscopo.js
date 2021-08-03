var express = require('express');
var router = express.Router();

var controller = require('../controllers/horoscopoControllers');

router.get('/signo/edit/:id', controller.signoedit);
router.post('/signo/:id', controller.signosend);
router.get('/', controller.mostrarhoroscopo);
router.get('/signo/:id', controller.mostrarsigno);
router.get('/signo/:id/:data',controller.messiguiente) 
router.get('/signo/:id/:id-data', controller.messiguiente)

module.exports = router;
