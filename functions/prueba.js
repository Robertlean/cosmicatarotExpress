const anito = require('./mesDelAnio')

let datos = new Date()
let mes = datos.getMonth()-1

console.log(anito(mes))