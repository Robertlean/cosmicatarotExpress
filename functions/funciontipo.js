module.exports = function (num) {
    if((num == 1) || (num == 5) || (num == 9)){
        //tipo Aire
        return 2;
    }
    else if((num == 2) || (num == 6) || (num == 10)){
        //signo Agua
        return 3;
    }
    else if((num == 3) || (num == 7) || (num == 11)){
        //signo Fuego
        return 4;
    }
    else if((num == 4) || (num == 8) || (num == 12)){
        //signo Tierra
        return 1;
    }
}