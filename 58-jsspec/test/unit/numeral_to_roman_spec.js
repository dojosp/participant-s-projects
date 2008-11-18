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
    "should convert 4 to 'IV'": function() {
        value_of((4).to_roman()).should_be("IV")
    },
    "should convert 5 to 'V'": function() {
        value_of((5).to_roman()).should_be("V")
    },
    "should convert 6 to 'VI'": function() {
        value_of((6).to_roman()).should_be("VI")
    },
    "should convert 7 to 'VII'": function() {
        value_of((7).to_roman()).should_be("VII")
    },
    "should convert 8 to 'VIII'": function() {
        value_of((8).to_roman()).should_be("VIII")
    },
    "should convert 9 to 'IX'": function() {
        value_of((9).to_roman()).should_be("IX")
    },
})