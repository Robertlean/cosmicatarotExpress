const {check,validatorResult,body} = require('express-validator');
const db = require('../database/models');

module.exports = [
    check('name')
    .isLength({
        min:1
    })
    .withMessage('Debes ingresar un nombre válido'),

    body('name')
    .custom(function(value){
        console.log(value)
        return db.users.findOne({
            where:{
                name:value
            }
        })
    .then(user => {
        console.log(user)
        if(user){
            return Promise.reject('Este nombre está registrado')
        }
    })
    }),    

    body('mail')
    .custom(function(value){
        console.log(value)
        return db.users.findOne({
            where:{
                mail:value
            }
            })
            .then(user => {
                console.log(user)
                if(user){
                    return Promise.reject('Este mail ya está registrado')
                }
            })
    }),

    check('date')
    .isDate({
       
    })
    .withMessage('Ingrese su fecha de nacimiento'),
    
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