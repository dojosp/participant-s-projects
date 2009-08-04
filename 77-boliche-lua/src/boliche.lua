function soma_jogadas(jogadas) 
  local soma = 0
  if jogadas[1][1] == 10 then 
    soma = soma + jogadas[2][1] + jogadas[2][2]
  end
  for posicao,jogada in pairs(jogadas) do
    soma = soma + jogada[1]
    if jogada[2] ~= nil then
      soma = soma + jogada[2]
    end
  end
  return soma
end
