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


unittest.main()