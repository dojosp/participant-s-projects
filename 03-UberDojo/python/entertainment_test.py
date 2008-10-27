import unittest
from entertainment import Tabuleiro
class TestEntertainment(unittest.TestCase):
    
    def setUp(self):
        self.t = Tabuleiro()
        
    def test_cria_tabuleiro_simples(self):
        self.t.insere_linha('a')
        self.assertEquals(self.t.pega_tabuleiro(), [['a']])

    def test_cria_tabuleiro_diferente(self):
        self.t.insere_linha('b')
        self.assertEquals(self.t.pega_tabuleiro(), [['b']])

    def test_cria_tabuleiro_com_linha_com_dois_elementos(self):
        self.t.insere_linha('ba')
        self.assertEquals(self.t.pega_tabuleiro(), [['b','a']])

    def test_cria_tabuleiro_com_linha_com_seis_elementos(self):
        self.t.insere_linha('babaca')
        self.assertEquals(self.t.pega_tabuleiro(), [['b','a','b','a','c','a']])
    
    def test_cria_tabuleiro_com_duas_linhas(self):
        self.t.insere_linha('babaca')
        self.t.insere_linha('cacaba')
        self.assertEquals(self.t.pega_tabuleiro(), [['b','a','b','a','c','a'],['c','a','c','a','b','a']])
        
    def test_tirar_um_elemento_de_matriz_2x2(self):
        self.t.insere_linha('ba')
        self.t.insere_linha('bb')
        self.t.remove(0,1)
        self.assertEquals(self.t.pega_tabuleiro(),[['b',''],['b','b']])

    def test_tirar_element_de_matriz_2x2_desloca_pra_esquerda(self):
        self.t.insere_linha('ab')
        self.t.insere_linha('bb')
        self.t.remove(0,0)
        self.assertEquals(self.t.pega_tabuleiro(),[['b',''],['b','b']])
    
    def test_desloca_para_a_esquerda(self):
        self.t.insere_linha('a ab')
        self.t.deslocaEsquerda()
        self.assertEquals(self.t.pega_tabuleiro(),[['a','a','b']])

unittest.main()