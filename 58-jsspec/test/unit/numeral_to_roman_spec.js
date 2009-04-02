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
    "should convert 10 to 'X'": function() {
        value_of((10).to_roman()).should_be("X")
    },
    "should convert 11 to 'XI'": function() {
        value_of((11).to_roman()).should_be("XI")
    },
    "should convert 12 to 'XII'": function() {
        value_of((12).to_roman()).should_be("XII")
    },
    "should convert 13 to 'XIII'": function() {
        value_of((13).to_roman()).should_be("XIII")
    },
    "should convert 14 to 'XIV'": function() {
        value_of((14).to_roman()).should_be("XIV")
    },
})