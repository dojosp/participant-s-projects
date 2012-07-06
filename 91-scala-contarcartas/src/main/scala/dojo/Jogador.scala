package dojo

case class Jogador() {

  private var contagem = 0

  def conta = contagem

  def veCarta(carta : Carta) = contagem += carta.valor
}