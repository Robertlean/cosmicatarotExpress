const {check,validatorResult,body} = require('express-validator');
const db = require('../database/models');

module.exports = [
    check('name')
    .isLength({
        min:1
    })
    .withMessage('Debes ingresar un nombre válido'),
    
    

    /*body('email')
    .custom(function(value){
        console.log(value)
        return db.Usuarios.findOne({
            where:{
                email:value
            }
            })
            .then(user => {
                console.log(user)
                if(user){
                    return Promise.reject('Este mail ya está registrado')
                }
            })
    }),*/

    check('date')
    .toDate({
        min:1
    })
    .withMessage("Ingrese su fecha de nacimiento"),
    
    check('pass')
    .isLength({
        min:6,
    })
    .withMessage('La contraseña debe tener minimo 6 caracteres'),

    body('pass2')
    .custom(function(value,{req}){
        if(value != req.body.pass){
            return false
        }
        return true
    })
    .withMessage('Las contraseñas no coinciden')
]