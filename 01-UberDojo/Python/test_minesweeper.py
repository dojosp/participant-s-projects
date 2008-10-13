from minesweeper import MineSweeper

import unittest

class TestMineSweeper(unittest.TestCase):
    
    def test_dot_should_return_0(self):
        ms = MineSweeper(".")
        self.assertEquals("0", ms.solve())
    
    def test_star_should_return_star(self):
        self.assertEquals("*", MineSweeper("*").solve())
        
    def test_star_dot_should_return_star_1(self):
        self.assertEquals("*.", MineSweeper("*1").solve())
        
unittest.main()