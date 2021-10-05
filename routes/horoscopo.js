var express = require('express');
var router = express.Router();

var controller = require('../controllers/horoscopoControllers');
var adminCheck = require('../middleware/adminCheck') 

router.get('/sign/edit/:id', adminCheck, controller.signoedit);
router.post('/sign/:id', controller.signosend);
router.get('/', controller.mostrarhoroscopo);
router.get('/sign/:id', controller.mostrarsigno);

module.exports = router;
