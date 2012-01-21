function defaultColor() {
    return(black)
}

function random() {

    var date = new Date()
    var seconds = date.getSeconds()
    var number = Math.floor(4 * Math.random(seconds))

    switch(number%4) {
        case 0: return 3;
        case 1: return 2;
        case 2: return 1;
        case 3: return 4;
    }
}
