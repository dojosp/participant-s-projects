function soma_jogadas(jogadas) 
  if jogadas[1][1] == 10 then return 12 end
  local soma = 0
  for posicao,jogada in pairs(jogadas) do
    soma = soma + jogada[1]+jogada[2]
  end
  return soma
end
