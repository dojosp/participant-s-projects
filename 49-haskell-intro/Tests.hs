module Main where

import Test.HUnit
import Dojo49

testes = TestList [teste0
                  ,teste1]

teste0 = TestList
         [
          "Deve calcular fatorial de 1" ~:
          1 ~=? fatorial 1

         ,"Deve calcular fatorial de 2" ~:
          2 ~=? fatorial 2

         ,"Deve calcular fatorial de 3" ~:
          6 ~=? fatorial 3
         ]

teste1 = TestList
         [
          "Soma lista vazia" ~:
          0 ~=? soma []
         
         ,"Soma lista de um elemento" ~:
          1 ~=? soma [1]

         ,"Soma lista de um elemento com valor diferente" ~:
          3 ~=? soma [3]

         ,"Soma lista com 2 elementos" ~:
          4 ~=? soma [1, 3]

         ,"Soma lista com mais de dois elementos" ~:
          8 ~=? soma [1, 3, 4]
         ]

main = runTestTT testes