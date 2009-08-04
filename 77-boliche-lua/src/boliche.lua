function soma_jogadas(jogadas) 
  local soma = 0
  if jogadas[1][1] == 10 then return jogadas[2][1]*2+10 end
  for posicao,jogada in pairs(jogadas) do
    soma = soma + jogada[1]+jogada[2]
  end
  return soma
end
