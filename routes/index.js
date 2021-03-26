var express = require('express');
var router = express.Router();

var controller = require('../controllers/mainControllers')

const userCheck = require('../middleware/sessionUserCheck')
const adminCheck = require('../middleware/adminCheck')
const upImage = require('../middleware/UpImageAvatar')
const sessionUpCheck = require('../middleware/sessionUpCheck')
const cookieCheck = require('../middleware/CookieCheck')


/* GET home page. */
router.get('/', cookieCheck, controller.index);
router.get('/createpost', controller.createpost);
router.get('/post', controller.post);
router.get('/aboutme', controller.aboutme);
router.get('/buy', controller.buy);
router.get('/experienceclient', controller.experience);
router.get('/search', controller.search);
router.get('/service', controller.service);
router.get('/horoscopo', controller.horoscopo);
router.get('/signo', controller.signo);

module.exports = router;