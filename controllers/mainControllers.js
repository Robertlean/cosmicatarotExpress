module.exports = {
    index: (req, res, next) => {
        res.render('index', { title: 'Inicio', css: 'estilos.css', usuario: req.session.usuario});
    },
    
    aboutme: (req, res, next) =>{
        res.render('aboutme', {title: 'Sobre mí', css:'estilos.css', usuario: req.session.usuario})
    },
    buy: (req, res, next) =>{
        res.render('buy', {title: 'Comprar Sesion', css:'estilos.css', usuario: req.session.usuario})
    },
    experience: (req, res, next) =>{
        res.render('experienceclient', {title: 'Experiencia', css:'estilos.css', usuario: req.session.usuario})
    },    
    search: (req, res, next) =>{
        res.render('search', {title: 'Resultado de la busqueda', css:'estilos.css', usuario: req.session.usuario})
    },
    service: (req, res, next) =>{
        res.render('service', {title: 'Sesiones', css:'estilos.css', usuario: req.session.usuario})
    },
    signo:(req, res, next) =>{
        res.render('signo', {title: 'Signo', css:'estilos.css', usuario: req.session.usuario})
    },
    categorias: (req, res) => {
        db.tipoSigno.findAll({
                include: [{
                    association: 'signo'
                }]
            })
            .then(signo => {
              //res.send(categorias)
                res.render('signo', {
                  title: "Pa Que | Categoria",
                  signo: signo,
                  css: "estilos.css",
                  usuario: req.session.usuario,
        
                })
        
              }).catch(error => {
                res.send(error)
              })
    },
}