var express = require('express');
var router = express.Router();
var controller = require('../controllers/userControllers');
var editValidator = require('../validation/editPerfilValidator')


const upload = require('../middleware/UpImageAvatar')

/* GET profile listing. */
router.get('/:id', controller.profile);
router.get('/:id/editprofile',controller.mostraredit);
router.post('/:id', upload.single('avatar'),controller.editprofile)



module.exports = router;