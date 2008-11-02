#!/usr/bin/env python

class Diversao(object):
    def __init__(self):
        pass
    

def deslocaLinhaEsq(linha):
    res = [e for e in linha if e != ' '] 
    return "".join(res)

def deslocaMatrizEsq(matriz):
    return [deslocaLinhaEsq(linha) for linha in matriz]

def deslocaColunaBaixo(matriz):
    return matriz