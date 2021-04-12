var express = require('express');
var router = express.Router();
var multer = require('multer');
var path = require('path');

var controller = require('../controllers/mainControllers')
var controllerPost = require('../controllers/postControllers')

const userCheck = require('../middleware/sessionUserCheck')
const adminCheck = require('../middleware/adminCheck')
const upload = require('../middleware/UpImageAvatar')
const sessionUpCheck = require('../middleware/sessionUpCheck')
const cookieCheck = require('../middleware/CookieCheck')


/* GET home page. */
router.get('/', cookieCheck, controller.index);
router.get('/createpost', controllerPost.createpost);
router.post('/:id', upload.single('posteos'), controllerPost.sendpost,function(req, res){
    console.log(req.file.filename, req.body)})
router.get('/post', controllerPost.post);
router.get('/aboutme', controller.aboutme);
router.get('/buy', controller.buy);
router.get('/experienceclient', controller.experience);
router.get('/search', controller.search);
router.get('/service', controller.service);
router.get('/horoscopo', controller.horoscopo);
router.get('/signo', controller.signo);

module.exports = router;