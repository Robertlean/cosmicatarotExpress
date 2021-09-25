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
    
    service: (req, res, next) =>{
        res.render('service', {title: 'Sesiones', css:'estilos.css', usuario: req.session.usuario})
    }
    
}