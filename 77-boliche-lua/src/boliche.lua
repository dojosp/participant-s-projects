function soma_jogadas(jogadas) 
  local soma = 0

  for posicao,jogada in pairs(jogadas) do
    soma = soma + valor_proprio(jogada)
    if eh_strike(jogada) then
      soma = soma + valor_proprio(jogadas[posicao+1])
    end
  end

  return soma
end

function valor_proprio(jogada)
  if jogada[2] == nil then 
    return jogada[1]
  else 
    return jogada[1] + jogada[2]
  end
end

function eh_strike(jogada)
  return jogada[1] == 10
end
