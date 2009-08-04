function soma_jogadas(jogadas) 
  local soma = 0

  for posicao,jogada in pairs(jogadas) do
    if jogada[1]==10 then    
      soma = soma + jogadas[posicao+1][1] + jogadas[posicao+1][2]
    end
    soma = soma + jogada[1]
    if jogada[2] ~= nil then
      soma = soma + jogada[2]
    end
  end
  return soma
end
