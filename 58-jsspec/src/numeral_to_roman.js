Number.prototype.to_roman = function() {
    var result = ""
    for(i = 0; i < this; i++)
        result += "I"
    return result
}