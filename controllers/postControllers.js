/****Bases de datos ****/
const db = require('../database/models');

/****Librerias ****/

const fs = require('fs');
const { validationResult, body } = require('express-validator');
const path = require('path');
const e = require('express');
const { Op } = require('sequelize');

let tageo = require('../functions/contadordepalabras');
let tipo = require('../functions/funciontipo')

module.exports = {
    createpost: (req, res, next) => {
        res.render('createpost', { title: 'Crear Post', css: 'estilos.css', usuario: req.session.usuario })
    },
    post: (req, res, next) => {
        res.render('post', { title: 'Post', css: 'estilos.css', usuario: req.session.usuario })
    },
    sendpost: function (req, res) {
        console.log(req);
        return
        let errors = validationResult(req);
        console.log(req.body);
        let fecha = new Date();
        console.log(fecha);

        let palabrastags = req.body.tags
        let tags

        tags = tageo(palabrastags.toUpperCase());
        console.log(tags)

        if (errors.isEmpty()) {
            console.log(errors)
            db.posteos.create({                
                idsigno: req.body.optsigno,
                title: req.body.title.trim(),
                subtitle: req.body.subtitle.trim(),
                contenido: req.body.context,
                img: "galaxy.jpg",
                idtiposigno: tipo((req.body.optsigno)),
                fechcreation: fecha,
            })
            .then(result => {//ingresar db.tags db.contenido
                console.log(result)
                //entrada de datos a la tabla tags
                for (let i = 0; i <= tags.length; i++) {
                    console.log(tags[i])
                    if (errors.isEmpty()) {
                        db.tags.create({
                            nombre: tags[i],
                        })
                        .then(result => {
                            console.log('Pase por los tags')                            
                        })
                        .catch(errors => { console.log(errors)})
                    }
                }
                console.log('Ya pase por aquí')
                return res.redirect('/post')

                //entrada de datos a la tabla sessionposteos


            })
            .catch(error => res.send(error))
        }

        /*if (errors.isEmpty()){


            Project.create({ id: 11 }).
            then(function (project) {
            user.addProjects([project, 12]);
});


            db.tags.create({
                nombre: req.body.tags.trim(),
                idpost: 1
            })
            .then(result =>{
                console.log('Ya pase por aquí')
                return res.redirect('/post')
            })
            .catch(error => res.send(error))
        }*/

        }
    }