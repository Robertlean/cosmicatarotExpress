/****Bases de datos ****/
const db = require('../database/models');

/****Librerias ****/

const fs = require('fs');
const { validationResult, body} = require('express-validator');
const path = require('path');
const e = require ('express');
const { Op } = require('sequelize');

module.exports = {
    createpost: (req, res, next) => {
        res.render('createpost', {title: 'Crear Post', css: 'estilos.css', usuario: req.session.usuario})
    },
    post: (req, res, next) =>{
        res.render('post', {title: 'Post', css:'estilos.css', usuario: req.session.usuario})
    },
    sendpost: function(req, res){
        let errors = validationResult(req);
        console.log(req.body);
        let fecha = new Date();
        console.log(fecha)
        
        if (errors.isEmpty()){
            db.posteos.create({
                idsigno: req.body.optsigno,
                title: req.body.title.trim(),
                subtitle: req.body.subtitle.trim(),
                img: "galaxy.jpg",
                contenido: req.body.context.trim(),
                idtiposigno: 3,
                fechcreation: fecha,
                idtags: 1,
                
            })
            .then(result =>{
                console.log('Ya pase por aquí')
                return res.redirect('/post')
            })
            .catch(error => res.send(error))
        }

        if (errors.isEmpty()){
            db.tags.create({
                nombre: req.session.tags
            })
        }
    }
}