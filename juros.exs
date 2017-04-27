defmodule Juros do
  def montante(capitalinicial, meses, juros, :simples) do
    capitalinicial + (juros*meses*capitalinicial) |> IO.puts
  end

  def montante(capitalinicial, meses, juros, :composto) do
    :math.pow(1+juros, meses) * capitalinicial
    |> IO.puts
  end
end

Juros.montante(1000, 12, 0.01, :simples)
Juros.montante(1000, 12, 0.01, :composto)

#Criado por github:Fellyx.
