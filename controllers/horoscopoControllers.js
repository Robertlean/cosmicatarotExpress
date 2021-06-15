/****Bases de datos ****/
const db = require('../database/models');

/****Librerias ****/
const fs = require('fs');
const { validationResult, body } = require('express-validator');
const path = require('path');
const e = require('express');
const { Op } = require('sequelize');

module.exports = {
    mostrarhoroscopo: (req, res, next) => {
        db.horoscopo.findAll()
            .then(signo => {
                console.log(signo)
                res.render('horoscopo', {
                    title: 'Horoscopo',
                    css: 'estilos.css',
                    usuario: req.session.usuario,
                    signo: signo
                })
            })
            .catch(error => {
                res.send(error)
            })
    },
    mostrarsigno: (req, res, next) => {
        db.horoscopo.findOne({
            where: { id: req.params.id }
        })
            .then(signo => {
                res.render('signo', {
                    title: signo.nombre,
                    css: 'estilos.css',
                    usuario: req.session.usuario,
                    signo: signo
                })
            })

    },
    signoedit: (req, res, next) => {
        db.horoscopo.findOne({
            where: { id: req.params.id }
        })
            .then(signo => {
                res.render('edithoroscopo', {
                    title: 'Editar signo',
                    css: 'estilos.css',
                    usuario: req.session.usuario,
                    signo: signo
                })
            })


    },
    signosend: (req, res, next) => {
        let idSigno = req.params.id;

        let fecha = new Date()

        let dbmes = fecha.getMonth(db.posteohoroscopo.meshoroscopo);
        let dbanio = fecha.getYear(db.posteohoroscopo.meshoroscopo);

        console.log(dbmes)
        console.log(dbanio);
        let calendmes = fecha.getMonth()
        let calendanio = fecha.getYear()

        console.log(calendmes);
        console.log(calendanio);

        //https://stackoverflow.com/questions/37723420/convert-datetime-to-date-of-a-column-in-where-condition-using-sequelize
        //https://sequelize.org/master/manual/model-querying-finders.html#-code-findall--code-

        /*db.posteohoroscopo.findOrCreate({
            where: sequelize.where(sequelize.fn('date', sequelize.col('meshoroscopo')), '=', 'new Date(getYear())'),

            //Where: { new Date(meshoroscopo).getMonth: new Date().getMonth}, andWhere: {new Date(meshoroscopo).getYear(): new Date().getYear()}
       

            defaults: {
                text: req.body.titulo,
                description: req.body.subtitulo,
                meshoroscopo: fecha
            }
          });*/

        if (dbmes === calendmes && dbanio === calendanio) {
            db.posteohoroscopo.update({
                text: req.body.context,
                description: req.body.description,
                idsigno: idSigno
                
            },
            {
                where: {
                    idSigno: req.params.id
                }
            })
            .then(signo => {
                res.render('horoscopo',{
                    title: 'Horoscopo',
                    css: 'estilos.css',
                    usuario: req.session.usuario,
                    signo: signo
                })
            })
            .catch(error => {
                res.send(error)
            })            
        }
        else {
            db.posteohoroscopo.create({
                text: req.body.context,
                description: req.body.description,
                meshoroscopo: fecha,
                idsigno:idSigno
            },
            {
                where: {
                    idSigno: req.params.id
                }
            })
            .then(signo => {
                res.render('horoscopo',{
                    title: 'Horoscopo',
                    css: 'estilos.css',
                    usuario: req.session.usuario,
                    signo: signo
                })
            })
            .catch(error => {
                res.send(error)
            })
        }
    }
}