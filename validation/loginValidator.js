const {check,validatorResult,body} = require('express-validator');
const bcrypt = require('bcrypt');
const db = require('../database/models');

module.exports = [
    check('mail')
    .isEmail()
    .withMessage('Ingrese un email válido'),

    check('passlog')
    .isLength({
        min:6
    })
    .withMessage('Contraseña muy corta'),

    body('mail')
    .custom(function(value){
        return db.users.findOne({
            where:{
                mail: value
            }
        })
        .then(user => {
            if(!user){
                return Promise.reject('Email no registrado')
            }
        })
        .catch( error => {
            res.send(error)
        })
    }),

    body('passlog')
    .custom((value,{req})=>{
        return db.users.findOne({
            where:{
                mail:req.body.mail
            }
        })
        .then(user => {
            if(!bcrypt.compareSync(value,user.dataValues.password)){ //si no machea la contraseña
                return Promise.reject('Contraseña incorrecta')
            }
        })
        .catch(() => {
            return Promise.reject('E-mail y/o contraseña incorrectas')
        })
    })

]