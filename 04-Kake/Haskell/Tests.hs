module Main where

import Test.HUnit
import Train
import List

main = runTestTT testes

testes =
    TestList
    [
     testeComparaEventosViagem
    ,testeCriaEventos
    ,testeGeraEventosDaViagem
    ,testeAdiaChegadaDeEventos
    ,testeAtualizaResposta
    ]

testeAtualizaResposta =
    TestList
    [
     "" ~:
     atualizaResposta [Evento 1 AparaB Saida] (Resposta (0,0) (0,0)) ~?= Resposta (0,0) (1,0)
    ]

testeCriaEventos =
    TestList
    [
     "Criar um evento as 12:00 saindo de A para B" ~:
     (criaEvento "12:00" AparaB Saida) ~?= (Evento 720 AparaB Saida)
    ,"Criar um evento as 14:00 chegando em B" ~:
     (criaEvento "14:00" AparaB Chegada) ~?= (Evento 840 AparaB Chegada)
    ]

testeComparaEventosViagem =
    TestList
    [
     "Um evento em tempo 0 vem antes de outro em tempo 5" ~:
     (Evento 0 AparaB Saida) < (Evento 5 AparaB Saida) ~?= True
    ,"Um evento em tempo 5 nao vem antes de outro em tempo 0" ~:
     (Evento 5 AparaB Saida) < (Evento 0 AparaB Saida) ~?= False
    ]

testeGeraEventosDaViagem = 
    TestList
    [
     "Uma lista com o par de horas (01:00,02:00) deve gerar 2 eventos" ~:
     geraEventosDaViagem ["01:00","02:00"] AparaB ~?= [Evento 60 AparaB Saida , Evento 120 AparaB Chegada]
    ,"Uma lista com o par de horas (02:00,03:00) deve gerar 2 eventos" ~:
     geraEventosDaViagem ["02:00","03:00"] AparaB ~?= [Evento 120 AparaB Saida , Evento 180 AparaB Chegada]                           ,"Uma lista com o par de horas (01:00,03:00) de BparaA deve gerar 2 eventos" ~:
     geraEventosDaViagem ["01:00","03:00"] BparaA ~?= [Evento 60 BparaA Saida , Evento 180 BparaA Chegada]    
    ]

testeAdiaChegadaDeEventos =
    TestList
    [
     "Adia a chegada dado um turn over de um evento" ~:
     adiaChegada 1 [Evento 0 AparaB Chegada] ~?= [Evento 1 AparaB Chegada]
     ,"Adia nada dado um turn over de um evento de saida" ~:
     adiaChegada 1 [Evento 0 AparaB Saida] ~?= [Evento 0 AparaB Saida]
     ,"Adia chegada por 3 minutos" ~: 
     adiaChegada 3 [Evento 0 AparaB Chegada] ~?= [Evento 3 AparaB Chegada]
     ,"Adia 2 eventos de chegada" ~:
     adiaChegada 5 [Evento 0 AparaB Chegada, Evento 7 AparaB Chegada] ~?= [Evento 5 AparaB Chegada, Evento 12 AparaB Chegada]
    ]