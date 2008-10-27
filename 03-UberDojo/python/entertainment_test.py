import unittest
from entertainment import Tabuleiro
class TestEntertainment(unittest.TestCase):
    
    def test_cria_tabuleiro_simples(self):
        t = Tabuleiro()
        t.insere_linha('a')
        self.assertEquals(t.pega_tabuleiro(), [['a']])

    def test_cria_tabuleiro_diferente(self):
        t = Tabuleiro()
        t.insere_linha('b')
        self.assertEquals(t.pega_tabuleiro(), [['b']])

    def test_cria_tabuleiro_com_linha_com_dois_elementos(self):
        t = Tabuleiro()
        t.insere_linha('ba')
        self.assertEquals(t.pega_tabuleiro(), [['b','a']])

    def test_cria_tabuleiro_com_linha_com_seis_elementos(self):
        t = Tabuleiro()
        t.insere_linha('babaca')
        self.assertEquals(t.pega_tabuleiro(), [['b','a','b','a','c','a']])
    
    def test_cria_tabuleiro_com_duas_linhas(self):
        t = Tabuleiro()
        t.insere_linha('babaca')
        t.insere_linha('cacaba')
        self.assertEquals(t.pega_tabuleiro(), [['b','a','b','a','c','a'],['c','a','c','a','b','a']])
        
    def test_tirar_um_elemento_de_matriz_2x2(self):
        t = Tabuleiro()
        t.insere_linha('ba')
        t.insere_linha('bb')
        t.remove(0,1)
        self.assertEquals(t.pega_tabuleiro(),[['b',''],['b','b']])

    #def test_tirar_element_de_matriz_2x2_desloca_pra_esquerda(self):
        
    

unittest.main()