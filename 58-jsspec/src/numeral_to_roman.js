mapa = {0:"", 1:"I", 5:"V"}
lista = [0, 1, 5]

Number.prototype.to_roman = function() {
    if(this in mapa) return mapa[this]
    var num = menor_que(this, mapa)
    if((this+num) in mapa) return num.to_roman() + (this+num).to_roman()
    return num.to_roman() + (this-num).to_roman()
}

function menor_que(num, mapa) {
    for(var i = 0; lista[i] < num; i++);
    return lista[i-1]
}