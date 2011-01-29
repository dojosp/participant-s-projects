-module(programa_tests).

-include_lib("eunit/include/eunit.hrl").

rotating_empty_string_test() -> ?assert(programa:rot("") =:= "").
rotating_A_one_char_test() -> ?assert(programa:rot("A") =:= "B").
rotating_C_one_char_test() -> ?assert(programa:rot("C") =:= "D").
rotating_Z_one_char_test() -> ?assert(programa:rot("Z") =:= "A").
rotating_AB_one_char_test() -> ?assert(programa:rot("AB") =:= "BC").
rotating_JY_one_char_test() -> ?assert(programa:rot("JY") =:= "KZ").
rotating_ZA_one_char_test() -> ?assert(programa:rot("ZA") =:= "AB").

rotating_A_2_char_test() -> ?assert(programa:rot("A",2) =:= "C").
rotating_A_3_char_test() -> ?assert(programa:rot("A",3) =:= "D").
rotating_A_4_char_test() -> ?assert(programa:rot("A",4) =:= "E").
rotating_B_4_char_test() -> ?assert(programa:rot("B",4) =:= "F").
rotating_BA_4_char_test() -> ?assert(programa:rot("BA",4) =:= "FE").
rotating_Z_4_char_test() -> ?assert(programa:rot("Z",4) =:= "D").
rotating_Y_2_char_test() -> ?assertEqual("A",programa:rot("Y",2)).
rotating_W_4_char_test() -> ?assertEqual("A",programa:rot("W",4)).
rotating_A_26_char_test() -> ?assertEqual("A",programa:rot("A",26)).
rotating_A_30_char_test() -> ?assertEqual("E",programa:rot("A",30)).
rotating_A_52_char_test() -> ?assertEqual("A",programa:rot("A",52)).
rotating_empty_2_char_test() -> ?assert(programa:rot("",2) =:= "").
