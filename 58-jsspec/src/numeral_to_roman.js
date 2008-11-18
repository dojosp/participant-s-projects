mapa = {0:"", 1:"I", 5:"V"}

Number.prototype.to_roman = function() {
    if(this in mapa) return mapa[this]
    if((this+1) in mapa) return mapa[1] + (this+1).to_roman()
    return (this-1).to_roman() + 1.to_roman()
}