/************** BASES DE DATOS *************/

//const db = require('../database/models');

/***************** MODULOS ************/

const bcrypt = require("bcrypt"); //se requiere encriptado
const fs = require("fs"); //se requiere file system---
const {validationResult, body} = require('express-validator');
const path = require('path')
const e = require('express');
const {
  Op
}= require('sequelize')


module.exports = {
    login: (req, res, next) =>{
        res.render('login', {title: 'Iniciar sesión', css:'estilos.css'})
    },
    user: (req, res, next) =>{
        res.render('perfil', {title: 'Tu perfil', css:'estilos.css', usuario:req.session.usuario})
    },
    register: (req, res, next) =>{
        res.render('register', {title: 'Registrate', css:'estilos.css'})
    },
    /*processLogin:function(req,res){
        let url = '/';
        if(req.session.url){
         url = req.session.url
        }
        let errors = validationResult(req);
        if(errors.isEmpty()){
 
         db.Users.findOne({
           where:{
             email:req.body.email
           },
           
         })
         .then(usuario => {
           req.session.usuario = {
             id: usuario.id,
             nombre: usuario.nombre,
             email: usuario.email,
             avatar: (usuario.rol == "usuario")?usuario.avatar:usuario.avatar,
             rol: usuario.rol
           }
           if(req.body.recordar){
             res.cookie('userPQNTA', req.session.usuario, {maxAge:1000*60*5})
           }
         res.locals.usuario = req.session.usuario
         return res.redirect(url)
         })
         .catch(error => { 
           res.send(error)
         })
        }else{
         res.render("registro",{
           title: "Pa Que | Registro",
           css: "registro.css",
           errors:errors.mapped(),
           old: req.body
          })
        }
     },*/

    processRegister:function(req,res){
      let errors = validationResult(req);
      
      if(errors.isEmpty()){

          db.public.users.create({
           nombre: req.body.nombre.trim(),
           mail:req.body.email.trim(),
           pass:bcrypt.hashSync(req.body.pass.trim(),10),
           image:(req.files[0])?req.files[0].filename:"default.png",
           rol:(req.session.usuario)?req.session.usuario:"usuario"
          })
          .then(result => {
           console.log(result)
           return res.redirect('registro')
          })
          .catch(errores => {
           errors = {};
           errores.errors.forEach(error => {
             if(error.path == "nombre"){
               errors["nombre"] = {};
               errors["nombre"]["msg"] = error.message
             };
             if(error.path == "mail"){
               errors["mail"] = {};
               errors["mail"]["msg"] = error.message
             };
             if (error.path == "pass") {
               errors["pass"] = {};
               errors["pass"]["msg"] = error.message
             }
           })
         res.render('register',{
                   title: "Registro",
                   css:"estilos.css",
                   errors: errors,
                   old:req.body
        })
      
      })
        
   }
   else{
           (req.fileSave)?fs.unlinkSync(path.join(__dirname,'../../public/images/users/'+req.fileSave)):"";
            res.render('register',{
               title: "Registro",
               css:"estilos.css",
               errors: errors.mapped(),
               old:req.body
           })
       }
   }

}