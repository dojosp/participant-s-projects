class Tabuleiro:
    def __init__(self):
        self.matriz = []
    
    def insere_linha(self, linha):
        self.matriz.append(list(linha)) 
    
    def pega_tabuleiro(self):
        return self.matriz
        
    def remove(self,linha,coluna):
        self.matriz[linha][coluna] = ''