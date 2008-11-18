describe("Arabic number", {
    "should convert 0 to ''": function() {
        value_of((0).to_roman()).should_be("")
    },
    "should convert 1 to 'I'": function() {
        value_of((1).to_roman()).should_be("I")
    },
})