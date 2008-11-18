Number.prototype.to_roman = function() {
    if(this == 0) return ""
    return "I" + (this-1).to_roman()
}