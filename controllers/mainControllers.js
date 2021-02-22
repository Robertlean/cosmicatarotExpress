module.exports = {
    index: (req, res, next) => {
        res.render('index', { title: 'Inicio', css: 'estilos.css' });
    },
    createpost: (req, res, next) => {
        res.render('createpost', {title: 'Crear Post', css: 'estilos.css'})
    },
    post: (req, res, next) =>{
        res.render('post', {title: 'Post', css:'estilos.css'})
    },
    aboutme: (req, res, next) =>{
        res.render('aboutme', {title: 'Sobre mí', css:'estilos.css'})
    },
    buy: (req, res, next) =>{
        res.render('buy', {title: 'Comprar Sesion', css:'estilos.css'})
    },
    experience: (req, res, next) =>{
        res.render('experienceclient', {title: 'Experiencia', css:'estilos.css'})
    },
    login: (req, res, next) =>{
        res.render('login', {title: 'Iniciar sesión', css:'estilos.css'})
    },
    user: (req, res, next) =>{
        res.render('perfil', {title: 'Tu perfil', css:'estilos.css'})
    },
    search: (req, res, next) =>{
        res.render('search', {title: 'Resultado de la busqueda', css:'estilos.css'})
    },
    service: (req, res, next) =>{
        res.render('service', {title: 'Sesiones', css:'estilos.css'})
    },
    register: (req, res, next) =>{
        res.render('register', {title: 'Registrate', css:'estilos.css'})
    },
    horoscopo: (req, res, next) =>{
        res.render('horoscopo', {title: 'Horoscopo', css:'estilos.css'})
    },
    signo:(req, res, next) =>{
        res.render('signo', {title: 'Signo', css:'estilos.css'})
    }
}