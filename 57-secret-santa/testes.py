import unittest
from santa import sorteia

def valoresNaoRepetem(entrada):
	valoresAnteriores=[]
	for valor in entrada.values():
		if valor in valoresAnteriores:
			return False
		else: valoresAnteriores.append(valor)
	return True

def sobrenome(pessoa):
	return pessoa.split()[1]

def familiasDiferentes(dicionario):
	for pessoa in dicionario.keys():
		amigo = dicionario[pessoa]
		if sobrenome(pessoa) == sobrenome(amigo):
			return False
	return True

class Testes(unittest.TestCase):
	def testDuasPessoasDeFamiliasDiferentes(self):
		entrada = ["Luke Skywalker", "Darth Vader"]
		saida = {"Luke Skywalker": "Darth Vader",
				 "Darth Vader": "Luke Skywalker",}
		self.assertEquals(sorteia(entrada), saida)

	def testTresPessoasDeFamiliasDistintas(self):
		entrada = ["Luke Skywalker", "Darth Vader",
                   "Lea Organa"]
		saidas = [{"Luke Skywalker": "Darth Vader",
				  "Darth Vader": "Lea Organa",
                  "Lea Organa": "Luke Skywalker",},
                 {"Luke Skywalker": "Lea Organa",
				  "Darth Vader": "Luke Skywalker",
                  "Lea Organa": "Darth Vader",},]
		assert sorteia(entrada) in saidas

	def testQuatroPessoasComFamiliasDistintas(self):
		entrada = ["Luke Skywalker", "Darth Vader",
                   "Lea Organa", "Master Yoda"]
		saidas = [{"Luke Skywalker": "Darth Vader",
				  "Darth Vader": "Lea Organa",
                  "Lea Organa": "Master Yoda",
				  "Master Yoda" : "Luke Skywalker",},
				{"Luke Skywalker": "Darth Vader",
				  "Darth Vader": "Master Yoda",
				  "Master Yoda" : "Lea Organa",
                  "Lea Organa": "Luke Skywalker",},
				{"Luke Skywalker": "Darth Vader",
				  "Darth Vader": "Luke Skywalker",
				  "Master Yoda" : "Lea Organa",
                  "Lea Organa": "Master Yoda",},
				{"Luke Skywalker": "Lea Organa",
                  "Lea Organa": "Master Yoda",
				  "Master Yoda": "Darth Vader",
				  "Darth Vader" : "Luke Skywalker",},
				{"Luke Skywalker": "Master Yoda",
				  "Master Yoda": "Darth Vader",
                  "Darth Vader" : "Lea Organa",
				  "Lea Organa" : "Luke Skywalker",},
				{"Luke Skywalker": "Darth Vader",
				  "Darth Vader": "Luke Skywalker",
				  "Master Yoda" : "Lea Organa",
                  "Lea Organa": "Master Yoda",},]
		assert sorteia(entrada) in saidas

	def testNaoSortearPessoaDaMesmaFamilia(self):
		entrada = {"Luke Skywalker": "Darth Vader",}
		assert familiasDiferentes(entrada)
		entrada = {"Luke Skywalker": "Lea Skywalker",}
		assert not familiasDiferentes(entrada)
		entrada = {"Luke Skywalker": "Lea Organa",
				   "Lea Organa": "Lea Organa",}
		assert not familiasDiferentes(entrada)

	def testValoresNaoRepetemNoDicionario(self):
		entrada = {"Luke Skywalker": "Lea Organa",
				   "Lea Organa": "Lea Organa",}
		assert not valoresNaoRepetem(entrada)

unittest.main()

