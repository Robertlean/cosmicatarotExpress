/************** BASES DE DATOS *************/

const db = require('../database/models');

/***************** MODULOS ************/

const bcrypt = require("bcrypt"); //se requiere encriptado
const fs = require("fs"); //se requiere file system---
const { validationResult } = require('express-validator');
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
  processLogin:(req, res) => {

    if (req.session.url) {
      let url = req.session.url      
    }
    let errors = validationResult(req);       
    if (errors.isEmpty()) {

      db.users.findOne({
        where: {
          mail: req.body.mail
        },

      })
        .then(usuario => {
          req.session.usuario = {
            id: usuario.id,       
            mail: usuario.mail,
            avatar: (usuario.rol == "usuario") ? usuario.avatar : usuario.avatar,
            rol: usuario.rol,
            description: usuario.description,
            nameuser: usuario.nameuser,
            pass: bcrypt.hashSync(usuario.password, 10),
          }
         
          res.locals.usuario = req.session.usuario
          res.cookie('cosmicaTarot', req.session.usuario)
          return res.redirect('/')
        })
        .catch(error => {
          res.send(error)
          return res.redirect('/login')
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

  processRegister: (req, res) => {
    let errors = validationResult(req);
    
    let fecha = new Date(req.body.date.trim())
    let dia = fecha.getDate() + 1
    let mes = fecha.getMonth() + 1

    console.log(errors)

    if (errors.isEmpty()) {
      db.users.create({
        nameuser: req.body.name.trim(),
        mail: req.body.mail.trim(),
        password: bcrypt.hashSync(req.body.pass.trim(), 10),
        avatar: "default.png",
        rol: "usuario",
        fechanac: req.body.date.trim(),
        idsigno: signo(dia, mes),
        idtiposigno: tipo(signo(dia, mes)),
        description: "undefined"

      })
        .then(result => {
          return res.redirect('/login')
        })
        .catch(errores => {
          
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
  profile: function (req, res) {
    if (req.session.usuario) {

      db.users.findByPk(req.session.usuario.id, { include: ['tiposigno', 'horoscopo','horoscopoposteo'] }
      )
        .then(usuario => {
          db.posteohoroscopo.findOne({
            where:{
              idsigno: usuario.idsigno
            }
            
          })
          .then(posteo =>{
            res.render('perfil', {
              title: "Perfil de " +req.session.usuario.nameuser,
              css: "estilos.css",
              usuario: usuario,
              posteo: posteo
            });
          })
        })
    } else {
      res.redirect('/')
    }
  },
  editprofile: function (req, res) {
    let errors = validationResult(req);
    
    if (errors.isEmpty()){
      db.users.update({
        avatar : req.file ? req.file.filename : req.session.usuario.avatar,
        description: req.body.description.trim(),
        password:(bcrypt.hashSync(req.body.pass.trim(), 10) == req.session.usuario.pass) ? req.session.usuario.pass : bcrypt.hashSync(req.body.pass.trim(), 10)
        },{
          where: {
            id: req.params.id
          }
        })
        .then(result => {
          db.users.findByPk(req.session.usuario.id)
          .then(resultado => {
            req.session.usuario = {
              id: resultado.id,
              mail: resultado.mail,
              avatar: (req.filename == "default.png")? "default.png" : resultado.avatar,
              rol: resultado.rol,
              description: resultado.description,
              nameuser: resultado.nameuser
            }
            res.cookie('cosmicaTarot', req.session.usuario)
            return res.redirect('/')
          })
        })
        .catch(error => res.send(error))
    }
  },
  mostraredit: (req, res) => {
    res.render('editperfil', {
      title: 'Modifica tu perfil',
      css: 'estilos.css',
      usuario: req.session.usuario
    })
  },
  mostrarpass: (req, res) => {
    res.render('editpassword',{
      title: "Modifica tu contraseña",
      css: 'estilos.css',
      usuario: req.session.usuario
    })
  },
  editpass: (req, res) => {
    let errors = validationResult(req);
    if (errors.isEmpty()){
      db.users.update({     
        
          pass: bcrypt.hashSync(usuario.password, 10),
        
        where:{
          id: req.params.id
        }
      })
      .then(result => {
        res.redirecy('/')
      })
    }
  },
  logout: function (req, res) {
    req.session.destroy();
    if (req.cookies.userCosmica) {
      res.cookie('userCosmica', '', { maxAge: -1 })
    }
    return res.redirect('/')
  },

}