import unittest
from entertainment import Tabuleiro
class TestEntertainment(unittest.TestCase):
    
    def test_cria_tabuleiro_simples(self):
        t = Tabuleiro(1,1)
        t.insere_linha('a')
        self.assertEquals(t.pega_tabuleiro(), [['a']])

    def test_cria_tabuleiro_diferente(self):
        t = Tabuleiro(1,1)
        t.insere_linha('b')
        self.assertEquals(t.pega_tabuleiro(), [['b']])

    def test_cria_tabuleiro_com_linha_com_dois_elementos(self):
        t = Tabuleiro(1,2)
        t.insere_linha('ba')
        self.assertEquals(t.pega_tabuleiro(), [['b','a']])

    def test_cria_tabuleiro_com_linha_com_seis_elementos(self):
        t = Tabuleiro(1,6)
        t.insere_linha('babaca')
        self.assertEquals(t.pega_tabuleiro(), [['b','a','b','a','c','a']])
    
    def test_cria_tabuleiro_com_duas_linhas(self):
        t = Tabuleiro(2,6)
        t.insere_linha('babaca')
        t.insere_linha('cacaba')
        self.assertEquals(t.pega_tabuleiro(), [['b','a','b','a','c','a'],['c','a','c','a','b','a']])
        

unittest.main()