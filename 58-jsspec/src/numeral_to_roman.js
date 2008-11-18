mapa = {0:"", 1:"I", 5:"V"}

Number.prototype.to_roman = function() {
    if(this in mapa) return mapa[this]
    return "I" + (this-1).to_roman()
}