#!/usr/bin/env python

import unittest
import diversao
from diversao import Diversao

class TestesHorizontais(unittest.TestCase):
    
    def testDeslocaLinhaEsq1Elem(self):
        self.assertEqual(diversao.deslocaLinhaEsq('a'),'a')
        self.assertEqual(diversao.deslocaLinhaEsq('b'),'b')
        
    def testDeslocaLinhaEsq2Elem(self):
        resultado = diversao.deslocaLinhaEsq ('ab')
        self.assertEqual(resultado,'ab')
        self.assertEqual(diversao.deslocaLinhaEsq('a '),'a')
        self.assertEqual(diversao.deslocaLinhaEsq(' b'),'b')
        self.assertEqual(diversao.deslocaLinhaEsq('  '),'')
        
    def testDeslocaLinhaEsq3Elem(self):
        self.assertEqual(
            diversao.deslocaLinhaEsq('aaa'),'aaa')
        self.assertEqual(
            diversao.deslocaLinhaEsq('a a'), 'aa')

    def testDeslocaMatrizEsq2Lin(self):
        self.assertEqual(
            diversao.deslocaMatrizEsq(['a',' ']),['a', ''])
        self.assertEqual(
            diversao.deslocaMatrizEsq([' ',' ']),['',''])
        
    def testDeslocaMatrizEsq3Lin(self):
        self.assertEqual(
            diversao.deslocaMatrizEsq([' a','a',' ']),
                ['a','a',''])
        
        
class TestesVerticais(unittest.TestCase):
    def testDeslocaVert1Elem(self):
        self.assertEqual(diversao.deslocaColunaBaixo('a'),'a')
    #def testDeslocaVert2Elem(self):
    #    self.assertEqual(diversao.deslocaColunaBaixo(['a',' ']),['','a'])

class TestesClasseDiversao(unittest.TestCase):
    def testInstanciaClasseDiversao(self):
        mat = ['a','b']
        d = Diversao(mat)
        self.assertEqual(repr(d),mat)
        

if __name__ == '__main__':
    unittest.main()

