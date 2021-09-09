/****Bases de datos ****/
const db = require('../database/models');


let fecha = new Date()
let tipo = require('../functions/funciontipo')
let mes = require('../functions/mesDelAnio');
let nombremes = mes(fecha.getMonth() - 1) 
module.exports = {
    mostrarhoroscopo: (req, res, next) => {
        let fecha = new Date()
        let mes = require('../functions/mesDelAnio');
        let nombremes = mes(fecha.getMonth() - 1) 
        db.horoscopo.findAll({
            include: ['horoscopoposteo'],
            
        })
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
    mostrarsigno: (req, res, next) => {
        let fecha = new Date()
        db.horoscopo.findByPk(req.params.id, {
            include: ['horoscopoposteo'],
            order: [['id', 'ASC']],
            where: {
                id: req.params.id, meshoroscopo: fecha
            }
        })
            .then(signo => {
                let month = fecha.getMonth(signo.horoscopoposteo[signo.horoscopoposteo.length - 1].meshoroscopo)
                res.render('signo', {
                    title: signo.nombre,
                    css: 'estilos.css',
                    usuario: req.session.usuario,
                    signo: signo,
                    nombremessigno: mes(month - 1),
                    meshoroscopo: month,
                    mesactual: fecha.getMonth()
                })
            })
            .catch(error => {
                res.send(error)
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
            .catch(error => {
                res.send(error)
            })

    },
    signosend: (req, res, next) => {
        let fecha = new Date()
        //findOrCreate busca un elemento en la tabla, si no lo encuentra lo crea
        db.posteohoroscopo.findOrCreate({
            where: { idsigno: req.params.id},
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
                    res.render('horoscopo', {
                        title: 'Editar signo',
                        css: 'estilos.css',
                        usuario: req.session.usuario,
                        signo: signo
                    })
                }
                else {
                    /* Encontro  */                                     
                    db.posteohoroscopo.update({
                        text: req.body.context,
                        description: req.body.description,
                        meshoroscopo:fecha
                    },
                    {
                        where: {
                            idsigno: req.params.id
                        },
                        limit: 1,
                        order: [['idsigno', 'DESC'], ['id', 'ASC']]
                    })
                    .then(signo => {
                        res.redirect('/horoscopo')
                    })
                    .catch(error => {
                        res.send(error)
                    })
                }
            })
    }
}