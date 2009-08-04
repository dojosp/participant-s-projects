function soma_jogadas(jogadas) 
  local soma = 0
  for posicao,jogada in pairs(jogadas) do
    soma=soma + jogada[1]+jogada[2]
  end
  return soma
end
