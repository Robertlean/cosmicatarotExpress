module.exports = function(req,res,next){
    if(req.cookies.userCosmica){
        console.log(`
        -------------------------------------------------
        ${req.cookies.userCosmica}
        -------------------------------------------------`)
        req.session.usuario = req.cookies.userCosmica;
        res.locals.usuario = req.session.usuario
    }
    next()
}