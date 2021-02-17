var express = require('express');
var router = express.Router();

/* GET Example. */
router.get('/', function(req, res, next) {
  res.render('example', { title: 'Ejemplo', css:'estilos.css' });
});

module.exports = router;
