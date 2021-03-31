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
} = require('sequelize');

let signo = require('../functions/funcionsigno')
let tipo = require('../functions/funciontipo')

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
            nameuser: usuario.nameuser,
            mail: usuario.mail,
            avatar: (usuario.rol == "usuario") ? usuario.avatar : usuario.avatar,
            rol: usuario.rol
          }
          console.log(usuario)

          /*if (req.body.recordar) {
            res.cookie('userCosmica', req.session.usuario, { maxAge: 1000 * 60 * 5 })
          }*/
          res.locals.usuario = req.session.usuario
          return res.redirect(url)
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
    let dia = fecha.getDate() + 1
    let mes = fecha.getMonth() + 1

    if (errors.isEmpty()) {

      db.users.create({
        nameuser: req.body.name.trim(),
        mail: req.body.mail.trim(),
        password: bcrypt.hashSync(req.body.pass.trim(), 10),
        avatar: "default.png",
        rol: "usuario",
        fechanac: req.body.date.trim(),
        idsigno: signo(dia, mes),
        idtiposigno: tipo(signo(dia, mes))

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
  },
  profile:function(req,res){
    if (req.session.usuario) {
      db.users.findByPk(req.session.usuario.id,{include: 'tiposigno'})
      .then(usuario => {
        console.log(usuario)
        res.render('perfil', {
          title: "Perfil de "+usuario.nameuser,
          css: "estilos.css",
          usuario:usuario
        })
      })
    }else{
      res.redirect('/')
    }       
  },
  editprofile: function(req,res){
    db.users.update(
      {
        avatar:(req.files[0])?req.files[0].filename:req.session.usuario.avatar,
        description: req.body.description.trim()
      },
      {
        where:{
          id:req.params.id
        }
      }
    )
    .then(result => {
      console.log(req.session.usuario);
      return res.redirect('perfil/:id')
    })
    .catch(err => {
      console.log(err)
    })
  },
  mostraredit: (req, res, next) => {
    res.render('editperfil', { 
      title: 'Modificar tu perfil',
      css: 'estilos.css' 
    })
  },
  logout: function (req, res) {
    req.session.destroy();
    if (req.cookies.userCosmica) {
      res.cookie('userCosmica', '', { maxAge: -1 })
    }
    return res.redirect('/')
  },

}