/****Bases de datos ****/
const db = require('../database/models');

/****Librerias ****/
const fs = require('fs');
const { validationResult, body } = require('express-validator');
const path = require('path');
const e = require('express');
const { Op } = require('sequelize');

module.exports={
    mostrarhoroscopo: (req, res, next) =>{
        db.horoscopo.findAll()
        .then(signo =>{
            console.log(signo)
            res.render('horoscopo', {
                title: 'Horoscopo',
                css:'estilos.css', 
                usuario: req.session.usuario,
                signo: signo
            })
        })
        .catch(error =>{
            res.send(error)
        })
    },
    mostrarsigno:(req, res, next) =>{
        db.horoscopo.findOne({
            where: {id : req.params.id}
        })
        .then(signo =>{
            res.render('signo', {
                title: signo.nombre, 
                css:'estilos.css', 
                usuario: req.session.usuario,
                signo: signo
            })
        })
        
    },
    signoedit: (req, res, next) =>{
        db.horoscopo.findOne({
            where: {id: req.params.id}
        })
        .then(signo => {
            res.render('edithoroscopo', {
                title: 'Editar signo', 
                css:'estilos.css', 
                usuario: req.session.usuario,
                signo: signo
            })
        })
        

    },
    signosend: (req, res, next) =>{
        let idSigno = req.params.id;
        console.log(req.body)

        db.posteohoroscopo.create({
           text: req.body.titulo,
           description: req.body.subtitulo
        },
        {
            where: {
                idSigno: req.params.id
            }
        })
        .then(resultado => {
            res.redirect('/')
        })
    }
}