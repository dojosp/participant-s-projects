class TerrenoDeCultivo

  def initialize(lista_de_pontos)
    @lista = lista_de_pontos
  end

  def area
      lado1 = distancia(@lista[0],@lista[1])
      lado2 = distancia(@lista[1],@lista[2])
      area_do_poligono = lado1 * lado2

    if @lista.size != 4
      area_do_poligono/2
    else
      area_do_poligono
    end
  end

  private

  def distancia(a,b)
    dx = a[0] - b[0]
    dy = a[1] - b[1]
    Math.sqrt((dx * dx) + (dy * dy))
  end
end
