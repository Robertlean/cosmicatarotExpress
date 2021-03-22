/************** BASES DE DATOS *************/

const db = require('../database/models');

/***************** MODULOS ************/

const bcrypt = require("bcrypt"); //se requiere encriptado
const fs = require("fs"); //se requiere file system---
const { validationResult, body } = require('express-validator');
const path = require('path')
const e = require('express');
const {
  Op
} = require('sequelize')


module.exports = {
  login: (req, res, next) => {
    res.render('login', { title: 'Iniciar sesión', css: 'estilos.css' })
  },
  user: (req, res, next) => {
    res.render('perfil', { title: 'Tu perfil', css: 'estilos.css' })
  },
  register: (req, res, next) => {
    res.render('register', { title: 'Registrate', css: 'estilos.css' })
  },
  processLogin: function (req, res) {
    let url = '/';
    if (req.session.url) {
      url = req.session.url
      console.log(req)
    }
    let errors = validationResult(req);
    console.log(errors)
    if (errors.isEmpty()) {

      db.users.findOne({
        where: {
          mail: req.body.mail
        },

      })
        .then(usuario => {
          req.session.usuario = {
            id: usuario.id,
            nameuser: usuario.nombre,
            mail: usuario.email,
            avatar: (usuario.rol == "usuario") ? usuario.avatar : usuario.avatar,
            rol: usuario.rol
          }
          csole.log(usuario.fechanac)
          con
          if (req.body.recordar) {
            res.cookie('userPQNTA', req.session.usuario, { maxAge: 1000 * 60 * 5 })
          }
          res.locals.usuario = req.session.usuario
          return res.redirect('/')
        })
        .catch(error => {
          res.send(error)
          console.log(error)
        })
    } else {
      res.render('login', {
        title: "Iniciar sesion",
        css: "estilos.css",
        errors: errors.mapped(),
        old: req.body
      })
    }
  },

  processRegister: function (req, res) {
    let errors = validationResult(req);
    console.log(req.body)
    let fecha = new Date(req.body.date.trim())
    console.log(fecha)
    let dia = fecha.getDate()+1
    let mes = fecha.getMonth()+1
    console.log(dia)
    console.log(mes)
    if (errors.isEmpty()) {

      /*console.log(req.body.date)
      let fecha = req.body.date
      let dia
      let mes
      let contadordia = 0
      let contadormes = 0

      //YYYY-MM-DD
      for(let x=1; x <= fecha.lenght; x++ ){
        if ()

      }
      function fechames(cumpleaños){
let mes
let arraymes = []
for(let x = 4; x <= 7; x++ ){
    if(cumpleaños[x]!== '-'){
        arraymes[x]= arraymes[x]+cumpleaños[x]
    }
}
return console.log(arraymes)
}

      */
      db.users.create({
        nameuser: req.body.name.trim(),
        mail: req.body.mail.trim(),
        password: bcrypt.hashSync(req.body.pass.trim(), 10),
        avatar: "default.png",
        rol: "usuario",
        fechanac: req.body.date.trim(),

      })
        .then(result => {
          console.log('Llegue acá')

          return res.redirect('/login')
        })
        .catch(errores => {
          console.log(errores)
          errores.errors.forEach(error => {
            if (error.path == "nameuser") {
              errors["nameuser"] = {};
              errors["nameuser"]["msg"] = error.message
            };
            if (error.path == "mail") {
              errors["mail"] = {};
              errors["mail"]["msg"] = error.message
            };
            if (error.path == "pass") {
              errors["pass"] = {};
              errors["pass"]["msg"] = error.message
            }
            //return res.redirect('/login')
          })
          res.render('login', {
            title: "Iniciar Sesión",
            css: "estilos.css",
            errors: errors,
            old: req.body
          })
        })

    }
    else {
      (req.fileSave) ? fs.unlinkSync(path.join(__dirname, '../../public/images/users/' + req.fileSave)) : "";
      res.render('register', {
        title: "Registro",
        css: "estilos.css",
        errors: errors.mapped(),
        old: req.body
      })
    }
  }

}