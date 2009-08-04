function soma_jogadas(jogadas) 
  local soma = 0
  
  for posicao,jogada in pairs(jogadas) do
    if jogada==10 then
      if jogadas[posicao+1] ~= nil and jogadas[posicao+2]~=nil then
        soma = soma + jogadas[posicao+1]
      end

      if jogadas[posicao+2] ~= nil then
        soma = soma + jogadas[posicao+2]
      end
    end

    if jogadas[posicao+1] ~= nil and jogadas[posicao+2]~=nil then
      soma = soma + jogada
    end
  end

  return soma
end
