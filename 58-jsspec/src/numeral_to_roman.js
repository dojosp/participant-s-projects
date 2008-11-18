mapa = {0:"", 1:"I", 5:"V"}

Number.prototype.to_roman = function() {
    if(this in mapa) return mapa[this]
    var num = 1
    if((this+num) in mapa) return num.to_roman() + (this+num).to_roman()
    return (this-num).to_roman() + num.to_roman()
}