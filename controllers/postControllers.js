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
                title: req.body.title,
                subtitle: req.body.subtitle,
                img: "galaxy.jpg",
                contenido: req.body.context,
                idtiposigno: 3,
                fechcreation: new Date(),
                idtags: 1,
                idcoments: 1,
                idcoments: 1,
            })
            .then(result =>{
                console.log('Ya pase por aquí')
                return res.redirect('/post/:id')
            })
            .catch(error => res.send(error))
        }
    }
}