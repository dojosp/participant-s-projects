def sorteia(pessoas):
	resultado = {}
	for i, nome in enumerate(pessoas[:-1]):
		resultado[nome] = pessoas[i+1]
	resultado[pessoas[-1]] = pessoas[0]
	return resultado

