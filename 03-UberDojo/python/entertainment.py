class Tabuleiro:
    def __init__(self, linhas, colunas):
        pass
    
    def insere_linha(self, linha):
        self.linha = linha
    
    def pega_tabuleiro(self):
        return [[self.linha]]