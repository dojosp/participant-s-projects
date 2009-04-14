module Main where

import Test.HUnit
import Test.HSpec

main = runTestTT testes

testes = TestList
         [
          testeDoDeveria
         ,testeRelatorio
         ,testeRelatorioEspecificacao
         ]

testeRelatorioEspecificacao = TestList
                              [
                               "Relatorio de especificacao eh concatenacao das especificacoes" ~:
                                                                                               relatorio (Especificacao [Sucesso, Falha "oi"]) ~?= "OK\nFalha: oi"
                              ]

testeRelatorio = TestList
                 [
                  "relatorio de sucesso eh 'OK'" ~:
                  relatorio Sucesso ~?= "OK"
                 ,"relatorio de falha quando 1 eh diferente de 2 eh 'Falha: 1 deveria ser igual a 2'" ~:
                  relatorio (Falha "1 deveria ser igual a 2") ~?= "Falha: 1 deveria ser igual a 2"
                 ,"relatorio de falha quando 2 eh diferente de 1 eh 'Falha: 2 deveria ser igual a 1'" ~:
                  relatorio (Falha "2 deveria ser igual a 1") ~?= "Falha: 2 deveria ser igual a 1"
                 ,"relatorio de falha quando 2 eh diferente de 1 eh 'Falha: 2 deveria ser igual a 1'" ~:
                  relatorio (Falha "a deveria ser igual a b") ~?= "Falha: a deveria ser igual a b"
                 ]

testeDoDeveria = TestList
                 [
                  "Deveria deveria devolver sucesso se da tudo certo" ~:
                  (1 `deveria` (ser (==) 1)) ~?= Sucesso
                 ,"Deveria deveria devolver falha se da errado" ~:
                  (1 `deveria` (ser (==) 2)) ~?= Falha "1 deveria ser igual a 2"
                 ,"Deveria deveria devolver falha se da errado com argumentos invertidos" ~:
                  (2 `deveria` (ser (==) 1)) ~?= Falha "2 deveria ser igual a 1"
                 ,"Deveria deveria devolver falha se da errado com argumentos invertidos" ~:
                  ('a' `deveria` (ser fCharInt 2)) ~?= Falha "'a' deveria ser igual a 2"
                 ]

fCharInt :: Char -> Int -> Bool
fCharInt _ _ = False