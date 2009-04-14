module Test.HSpec where

data Especificacao = Especificacao [Especificacao]
                   | Sucesso
                   | Falha String
                   deriving (Show, Eq)

data Ser tipoValor tipoEsperado = Ser (tipoValor -> tipoEsperado -> Bool) tipoEsperado

relatorio :: Especificacao -> String
relatorio (Falha mensagem) = "Falha: " ++ mensagem
relatorio (Especificacao especs) = foldl (++) "\n" (map relatorio especs)
relatorio _ = "OK"

deveria :: (Show tipoValor, Show tipoEsperado) => tipoValor -> Ser tipoValor tipoEsperado -> Especificacao
deveria valor (Ser operador esperado) = if (operador valor esperado)
                                        then Sucesso
                                        else Falha ((show valor) ++ " deveria ser igual a " ++ (show esperado))

ser :: (tipoValor -> tipoEsperado -> Bool) -> tipoEsperado -> Ser tipoValor tipoEsperado
ser operador esperado = Ser operador esperado