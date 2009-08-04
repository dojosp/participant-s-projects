function soma_jogadas(jogadas) 
  local soma = 0

  for posicao,jogada in pairs(jogadas) do
    soma = soma + jogada[1]
   
    if eh_strike(jogada) then
      soma = soma + jogadas[posicao+1][1]
      if not eh_strike(jogadas[posicao+1]) then
        soma = soma + jogadas[posicao+1][2]
      end
    else
      soma = soma + jogada[2]
    end
  end

  return soma
end

function eh_strike(jogada)
  return jogada[1] == 10
end
