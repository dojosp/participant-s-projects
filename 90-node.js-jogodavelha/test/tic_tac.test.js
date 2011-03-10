var assert = require('assert');

var ticTac = require('../lib/tic_tac');

var getTabuleiroVazio = function () {
	return [[' ',' ',' '],
            [' ',' ',' '],
            [' ',' ',' ']];
}

module.exports = {
	'sem movimentos tabuleiro todo vazio': function() {
		jogo = ticTac.jogo('');
		esperado = getTabuleiroVazio();
		assert.eql(jogo, esperado);
	},
	'um movimento dará certo?' : function(){
		jogo = ticTac.jogo('1');
		esperado = getTabuleiroVazio();
		esperado[0][0] = 'X';
		assert.eql(jogo, esperado);
	},
	'primeiro movimento serah dois' : function() {
		jogo = ticTac.jogo('2');
		esperado = getTabuleiroVazio();
		esperado[0][1] = 'X';
		assert.eql(jogo, esperado);
	},
	'primeiro movimento fora da primeira linha' :function() {
		jogo = ticTac.jogo('4');
		esperado = getTabuleiroVazio();
		esperado[1][0] = 'X';
		assert.eql(jogo, esperado);
	},
	'jogador malandro joga no centro': function (){
		jogo = ticTac.jogo('5');
		esperado = getTabuleiroVazio();
		esperado[1][1] = 'X';
		assert.eql(jogo, esperado);
	},
	'jogada inicial na posicao 3': function() {
		jogo = ticTac.jogo('3');
		esperado = getTabuleiroVazio();
		esperado[0][2] = 'X';
		assert.eql(jogo, esperado);
	},
	'jogada inicial na posicao 7': function() {
		jogo = ticTac.jogo('7');
		esperado = getTabuleiroVazio();
		esperado[2][0] = 'X';
		assert.eql(jogo, esperado);
	},
	'os movimentos {1,2} devem preencher {0,0} e {0,1}' : function () {
		jogo = ticTac.jogo('12');
		esperado = getTabuleiroVazio();
		esperado[0][0] = 'X';
		esperado[0][1] = 'O';
		assert.eql(jogo, esperado);
	},
	'os movimentos {2, 1} devem preencher {0, 1} e {0,0}' : function () {
		jogo = ticTac.jogo('21');
		esperado = getTabuleiroVazio();
		esperado[0][1] = 'X';
		esperado[0][0] = 'O';
		assert.eql(jogo, esperado);
	},
	'os movimentos {1, 3, 9} devem preencher {0,0}, {0,2} e {2, 2}' : function() {
		jogo = ticTac.jogo('139');
		esperado = getTabuleiroVazio();
		esperado[0][0] = 'X';
		esperado[0][2] = 'O';
		esperado[2][2] = 'X';
		assert.eql(jogo, esperado);
	},
	'os movimentos {1,2,3,4} devem preencher {0,0}, {0,1}, {0,2}, {1,0}': function() {
		jogo = ticTac.jogo('1234');
		esperado = getTabuleiroVazio();
		esperado[0][0] = 'X';
		esperado[0][1] = 'O';
		esperado[0][2] = 'X';
		esperado[1][0] = 'O';
		assert.eql(jogo, esperado);
	},
	'quem ganhou': function (){
		jogo = ticTac.jogo('14253');
		
	}
}






