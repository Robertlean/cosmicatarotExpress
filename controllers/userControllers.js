const bcrypt = require("bcrypt"); //se requiere encriptado
const fs = require("fs"); //se requiere file system---
const {validationResult} = require("express-validator");
const path = require("path")

module.exports = {
    login: (req, res, next) =>{
        res.render('login', {title: 'Iniciar sesión', css:'estilos.css',usuario: req.session.usuario})
    },
    user: (req, res, next) =>{
        res.render('perfil', {title: 'Tu perfil', css:'estilos.css', usuario:req.session.usuario})
    },
    register: (req, res, next) =>{
        res.render('register', {title: 'Registrate', css:'estilos.css'})
    }
}