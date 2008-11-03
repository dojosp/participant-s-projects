import unittest
from santa import sorteia

class Testes(unittest.TestCase):
	def testDuasPessoasDeFamiliasDiferentes(self):
		entrada = ["Luke Skywalker", "Darth Vader"]
		saida = {"Luke Skywalker": "Darth Vader",
				 "Darth Vader": "Luke Skywalker",}
		self.assertEquals(sorteia(entrada), saida)

unittest.main()
