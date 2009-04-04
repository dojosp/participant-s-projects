module Train where

import List
import Char

data SentidoDaViagem = AparaB | BparaA
              deriving (Show, Eq)

data TipoDoEvento = Saida | Chegada
              deriving (Show, Eq)

data Evento = Evento Tempo SentidoDaViagem TipoDoEvento
              deriving (Show, Eq)

type Tempo = Int

instance Ord Evento where 
    Evento tempo1 _ _ < Evento tempo2 _ _ = tempo1 < tempo2

criaEvento :: String -> SentidoDaViagem -> TipoDoEvento -> Evento
criaEvento horario sentido tipo =
    let
        horaInt = stringHoraToInt (fst (splitAt 2 horario))
    in
      Evento (horaInt*60) sentido tipo

stringHoraToInt :: String -> Int
stringHoraToInt hora = (digitToInt (head hora)) * 10 + (digitToInt (head (tail hora)))


geraEventosDaViagem horarios sentido = [criaEvento (head horarios) sentido Saida , criaEvento (head (tail horarios)) sentido Chegada]

adiaChegada :: Tempo -> [Evento] -> [Evento]
adiaChegada turnover = map (adiaChegada' turnover)

adiaChegada' :: Tempo -> Evento -> Evento
adiaChegada' turnover (Evento tempo direcao Chegada) = 
    (Evento (tempo+turnover) direcao Chegada)
adiaChegada' turnover evento = evento