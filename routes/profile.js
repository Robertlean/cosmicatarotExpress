var express = require('express');
var router = express.Router();
var multer = require('multer');
var path = require('path');

var controller = require('../controllers/userControllers');

const storage = multer.diskStorage({

    destination:(req,file,callback)=>{
        console.log(req.body.images)
        callback(null,'./public/images/users')
    },
    filename:(req,file,callback)=>{
        req.fileSave = file.fieldname + '-' + Date.now() + path.extname(file.originalname)
        callback(null, req.fileSave)
        console.log(req.fileSave)
    }
})

const upload = multer({storage:storage})

/* GET profile listing. */

router.get('/:id', controller.profile);

router.get('/:id/editperfil',controller.mostraredit);
router.post('/:id', upload.any(),controller.editprofile)

module.exports = router;