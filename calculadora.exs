defmodule Calculadora do
  def soma(n1, n2) do
    n1 + n2
  end

  def subtracao(n1, n2) do
    n1 - n2
  end

  def multiplicacao(n1, n2) do
    n1 * n2
  end

  def divisao(n1, n2) do
    n1 / n2
  end
end

n1 = IO.gets "Digite O Primeiro Número ? "
n1 = n1 |> String.replace("\n", "")
n1 = String.to_integer(n1)

n2 = IO.gets "Digite O Segundo Número ? "
n2 = n2 |> String.replace("\n", "")
n2 = String.to_integer(n2)

function = IO.gets "Digite Qual funcao vc irá usar "
function = function |> String.replace("\n", "")

case function do
  "soma" ->
    IO.puts Calculadora.soma(n1, n2)
  "subtracao" ->
    IO.puts Calculadora.subtracao(n1, n2)
  "divisao" ->
    IO.puts Calculadora.divisao(n1, n2)
  "multiplicacao" ->
    IO.puts Calculadora.multiplicacao(n1, n2)
end
