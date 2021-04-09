var express = require('express');
var router = express.Router();
var multer = require('multer');
var path = require('path');

var controller = require('../controllers/userControllers');


const upload = require('../middleware/UpImageAvatar')



/* GET profile listing. */

router.get('/:id', controller.profile);

router.get('/:id/editperfil',controller.mostraredit);
router.post('/:id', upload.single('avatar'),controller.editprofile, function(req, res){
    console.log(req.file.filename, req.body)
})


module.exports = router;