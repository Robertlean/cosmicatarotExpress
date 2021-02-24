const {check,validatorResult,body} = require('express-validator');
const bcrypt = require('bcrypt');
//const db = require('../database/models');

module.exports = [
    check('email')
    .isEmail()
    .withMessage('Ingrese un email válido'),

    check('contraseña')
    .isLength({
        min:6
    })
    .withMessage('Contraseña muy corta'),

    /*body('email')
    .custom(function(value){
        return db.usuarios.findOne({
            where:{
                email:value
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
    }),*/

    body('contraseña')
    .custom((value,{req})=>{
        return db.usuarios.findOne({
            where:{
                email:req.body.email
            }
        })
        .then(user => {
            if(!bcrypt.compareSync(value,user.dataValues.contrasena)){ //si no machea la contraseña
                return Promise.reject('Contraseña incorrecta')
            }
        })
        .catch(() => {
            return Promise.reject('Credenciales inválidas')
        })
    })

]