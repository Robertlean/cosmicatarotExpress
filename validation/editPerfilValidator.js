const {check, body} = require('express-validator');
const db = require('../database/models')

/* contraseña actual => passactual - nueva contraseña => pass - repetir contraseña = pass 2 */

module.exports = [
    check('pass')
    .isLength({
        min: 6
    })
    .withMessage('La contraseña debe tener minimo 6 caracteres'),
    body('passactual').custom(function(value){
        return db.users.findOne({
            where: {
                mail: req.session.usuario.mail
            }
        })
        .then(user => {
            if(!user){
                return Promise.reject('Contraseña no registrada')
            }
        })
        .catch( error => res.send(error))
    }),
    

    body('pass2')
    .custom(function(value,{req}){
        if(value != req.body.pass){
            return false
        }
        return true
    })
    .withMessage('Las contraseñas no coinciden')
]