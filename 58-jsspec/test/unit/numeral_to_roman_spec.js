describe("Arabic number", {
    "should convert 0 to ''": function() {
        value_of((0).to_roman()).should_be("")
    },
    "should convert 1 to 'I'": function() {
        value_of((1).to_roman()).should_be("I")
    },
    "should convert 2 to 'II'": function() {
        value_of((2).to_roman()).should_be("II")
    },
    "should convert 3 to 'III'": function() {
        value_of((3).to_roman()).should_be("III")
    },
    "should convert 5 to 'V'": function() {
        value_of((5).to_roman()).should_be("V")
    },
})