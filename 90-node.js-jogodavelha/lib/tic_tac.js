exports.jogo = function(_jogadas) {
	tabuleiro = [[' ',' ',' '],
				 [' ',' ',' '],
				 [' ',' ',' ']];
	
	jogadas = _jogadas.split('');
	
	var posicao;
	for(var i=0;i<jogadas.length;i++){
		posicao = linhaColuna(jogadas[i]);
		tabuleiro[posicao[0]][posicao[1]] = (i%2==0) ? 'X': 'O';
	}
	return tabuleiro;
}

var linhaColuna = function(jogada) {
	var linha = parseInt((jogada - 1) / 3);
	var coluna = parseInt((jogada - 1) % 3);
	
	return [linha, coluna];
}