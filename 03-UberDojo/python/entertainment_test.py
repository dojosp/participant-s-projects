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
    
    


unittest.main()