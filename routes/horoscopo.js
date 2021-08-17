var express = require('express');
var router = express.Router();

var controller = require('../controllers/horoscopoControllers');

router.get('/signo/edit/:id', controller.signoedit);
router.post('/signo/:id', controller.signosend);
router.get('/', controller.mostrarhoroscopo);
router.get('/signo/:id', controller.mostrarsigno);
/* router.get('/signo/:id/messiguiente',controller.messiguiente) 
router.get('/signo/:id/mesanterior', controller.mesanterior)
 */
module.exports = router;
