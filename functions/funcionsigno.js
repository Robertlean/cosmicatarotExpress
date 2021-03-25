module.exports = function nacimiento(day, month) {
    if ((month == 1 && day <= 20) || (month == 12 && day >= 22)) {
        return 12;
    } else if ((month == 1 && day >= 21) || (month == 2 && day <= 18)) {
        return 1;
    } else if ((month == 2 && day >= 19) || (month == 3 && day <= 19)) {
        return 2;
    } else if ((month == 3 && day >= 20) || (month == 4 && day <= 20)) {
        return 3;
    } else if ((month == 4 && day >= 21) || (month == 5 && day <= 20)) {
        return 4;
    } else if ((month == 5 && day >= 21) || (month == 6 && day <= 20)) {
        return 5;
    } else if ((month == 6 && day >= 22) || (month == 7 && day <= 22)) {
        return 6;
    } else if ((month == 7 && day >= 23) || (month == 8 && day <= 23)) {
        return 7;
     } else if ((month == 8 && day >= 24) || (month == 9 && day <= 23)) {
        return 8;
    } else if ((month == 9 && day >= 24) || (month == 10 && day <= 23)) {
        return 9;
    } else if ((month == 10 && day >= 24) || (month == 11 && day <= 22)) {
        return 10;
    } else if ((month == 11 && day >= 23) || (month == 12 && day <= 21)) {
        return 11;
    }
}