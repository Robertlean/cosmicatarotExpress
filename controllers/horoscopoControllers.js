/****Bases de datos ****/
const db = require('../database/models');

/****Librerias ****/
const { validationResult, body } = require('express-validator');

let tipo = require('../functions/funciontipo')
let mes = require('../functions/mesDelAnio');
let mesDelAnio = require('../functions/mesDelAnio');

module.exports = {
    mostrarhoroscopo: (req, res, next) => {
        let fecha = new Date()
        let nombremes = mes(fecha.getMonth()-1)
        db.horoscopo.findAll()
            .then(signo => {
                res.render('horoscopo', {
                    title: 'Horoscopo',
                    css: 'estilos.css',
                    usuario: req.session.usuario,
                    signo: signo,
                    nombremes: nombremes
                })
            })
            .catch(error => {
                res.send(error)
            })
    },
    mesanterior:(req, res, next)=>{
        let fecha = new Date()
        let history = req.params.data;
        db.horoscopo.findByPk(req.params.id, {
            include: ['horoscopoposteo'],
            order: [['id', 'ASC']],            
            where:{
                id: req.params.id,  meshoroscopo: fecha
            }
        })
            .then(signo => {
                let month = fecha.getMonth(signo.horoscopoposteo[signo.horoscopoposteo.length-1].meshoroscopo)

                      

                res.render('signo', {
                    title: signo.nombre,
                    css: 'estilos.css',
                    usuario: req.session.usuario,
                    signo: signo,
                    nombremessigno: mes(month-1),
                    meshoroscopo: month,
                    mesactual: fecha.getMonth()
                })
            })
            .catch(error => {
                console.log(error)
                res.send(error)
            })

    },
    messiguiente:(req, res, next)=>{
        let fecha = new Date()
        let history = req.params.data;
        db.horoscopo.findByPk(req.params.id, {
            include: ['horoscopoposteo'],
            order: [['id', 'ASC']],            
            where:{
                id: req.params.id,  meshoroscopo: fecha
            }
        })
            .then(signo => {
                
                let month = fecha.getMonth(signo.horoscopoposteo[signo.horoscopoposteo.length-1].meshoroscopo)

                console.log(signo.count + ' algo mas')

                res.render('signo', {
                    title: signo.nombre,
                    css: 'estilos.css',
                    usuario: req.session.usuario,
                    signo: signo,
                    nombremessigno: mes(month-1),
                    meshoroscopo: month,
                    mesactual: fecha.getMonth(),
                })
            })
            .catch(error => {
                console.log(error)
                res.send(error)
            })        
    },
    mostrarsigno: (req, res, next) => {     
        let fecha = new Date()
        let history = req.params.data;
        db.horoscopo.findByPk(req.params.id, {
            include: ['horoscopoposteo'],
            order: [['id', 'ASC']],            
            where:{
                id: req.params.id,  meshoroscopo: fecha
            }
        })
            .then(signo => {
                console.log(signo.count)
                let month = fecha.getMonth(signo.horoscopoposteo[signo.horoscopoposteo.length-1].meshoroscopo)
                res.render('signo', {
                    title: signo.nombre,
                    css: 'estilos.css',
                    usuario: req.session.usuario,
                    signo: signo,
                    nombremessigno: mes(month-1),
                    meshoroscopo: month,
                    mesactual: fecha.getMonth()
                })
            })
            .catch(error => {
                console.log(error)
                res.send(error)
            })

    },
    /*  Models.Users.findAll({
         where: {},
         include: [{
             model: Models.Orders,
             where: {}
         }]
  */

    /*  db.users.findByPk(req.session.usuario.id, { include: ['tiposigno', 'horoscopo'] }
       )
         .then(usuario => {
           res.render('perfil', {
             title: "Perfil de " + usuario.nameuser,
             css: "estilos.css",
             usuario: usuario
           })
         }) */

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
            .catch(error => {
                res.send(error)
            })

    },
    signosend: (req, res, next) => {
        let fecha = new Date()

        db.posteohoroscopo.findOrCreate({
            where: { idsigno: req.params.id/*, meshoroscopo: sequelize.literal('extract(MONTH FROM `posteohoroscopo`.`meshoroscopo`) = `calendmes`')*/ },
            defaults: {
                text: req.body.context,
                description: req.body.description,
                idtiposigno: tipo(req.params.id),
                meshoroscopo: fecha,
                idsigno: req.params.id
            }
        })
            .then((posteohoroscopo, creado) => {
                if (creado) {
                    /* No encontrado */
                    res.render('signo/req.params.id', {
                        title: 'Editar signo',
                        css: 'estilos.css',
                        usuario: req.session.usuario,
                        signo: signo
                    })
                }
                else {
                    /* Encontro  */
                    let dbmes = fecha.getMonth(db.posteohoroscopo.meshoroscopo)+1;
                    let dbanio = fecha.getFullYear(db.posteohoroscopo.meshoroscopo);
                    let calendmes = fecha.getMonth()+1
                    let calendanio = fecha.getYear()                  

                    console.log(`${dbmes}/${dbanio} es igual a ${fecha.getMonth()+1}/${fecha.getFullYear()} --> ${fecha}`)

                    if (dbmes == fecha.getMonth()+1 && dbanio == fecha.getFullYear()) {                       
                        db.posteohoroscopo.update({
                            text: req.body.context,
                            description: req.body.description,
                            
                        },
                        {
                            where: {
                                idsigno: req.params.id, meshoroscopo: fecha
                            },
                            limit: 1,
                            order: [['idsigno', 'DESC'], ['id', 'ASC']]
                        })
                        .then(signo => {
                            console.log(signo + " algo mas")
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

                    }
                    else {
                        db.posteohoroscopo.create({
                            text: req.body.context,
                            description: req.body.description,
                            meshoroscopo: fecha,
                            idtiposigno: tipo(req.params.id),
                            idsigno: req.params.id
                        },
                            {
                                where: {
                                    idsigno: req.params.id
                                }
                            })
                            .then(signo => {
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
                    }
                }
            })



        /* .then(signo => {
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


    if (dbmes == calendmes && dbanio == calendanio) {
        console.log("algo mas")

        console.log(`${dbmes} / ${dbanio} and ${calendmes} / ${calendanio}`)

        /*db.posteohoroscopo.update({
            text: req.body.context,
            description: req.body.description
        },
            {
                where: {
                    idsigno: req.params.id
                }
            })
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
    }
    else {
        console.log("Algo")
        db.posteohoroscopo.findOrCreate({
            where: { idsigno: req.params.id },
            defaults: {
                text: req.body.context,
                description: req.body.description,
                idtiposigno: tipo(req.params.id),
                meshoroscopo: fecha,
                idsigno: req.params.id
            }
        })
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

        /*db.posteohoroscopo.create({
            text: req.body.context,
            description: req.body.description,
            meshoroscopo: fecha,
            idtiposigno: tipo(req.params.id),
            idsigno: req.params.id
        },
        {
            where: {
                idsigno: req.params.id
            }
        })
        .then(signo => {
            res.render('horoscopo', {
                title: 'Horoscopo',
                css: 'estilos.css',
                usuario: req.session.usuario,
                signo: signo
            })
        })
        .catch(error => {
            res.send(error)
        })*/


    }
}