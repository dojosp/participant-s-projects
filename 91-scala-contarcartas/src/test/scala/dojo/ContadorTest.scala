package dojo

import org.junit.Test
import org.junit.Assert

class ContadorTest {

  @Test
  def contagemDeveComecarComZero = {
    val jogador = Jogador()

    Assert.assertEquals(0, jogador.conta)
  }
  @Test
  def contagemDeveSerIgualaUmQuandoCartaEDois = {
    val jogador = Jogador()

    jogador.veCarta(Dois)
    Assert.assertEquals(1, jogador.conta)
  }
  @Test
  def contagemDeveSerIgualAMenos1QuandoACartaEhJ = {
    val jogador = Jogador()
    jogador.veCarta(J)

    Assert.assertEquals(-1, jogador.conta)
  }
  @Test
  def contagemDeveSerIgualAZeroQuandoACartaEh8 = {
    val jogador = Jogador()

    jogador.veCarta(Oito)
    Assert.assertEquals(0, jogador.conta)
  }
  @Test
  def contagemDeveSerIgualAZeroQuandoACartaEh9 = {
    val jogador = Jogador()

    jogador.veCarta(Nove)
    Assert.assertEquals(0, jogador.conta)
  }

  @Test
  def cartaDeDoisASeteDeveSomarUm = {
    List(Dois, Tres, Quatro, Cinco, Seis, Sete).foreach(carta => {
      val jogador = Jogador()
      jogador.veCarta(carta)
      Assert.assertEquals(1, jogador.conta)
    })
  }

  @Test
  def cartasAcimaDeDezSubtraiUm = {
    List(Dez, J, Q, K, A).foreach(carta => {
      val jogador = Jogador()
      jogador.veCarta(carta)
      Assert.assertEquals(-1, jogador.conta)
    })
  }

  @Test
  def contagemDeveSerIgualADoisQuandoVeDuasCartasDois = {
    val jogador = Jogador()

    jogador.veCarta(Dois)
    jogador.veCarta(Dois)
    Assert.assertEquals(2, jogador.conta)
  }

  @Test
  def cartaIgual2 = {
    val carta = Dois
    Assert.assertEquals(1, carta.valor)
  }

}