defmodule Funcionario do
  def aumento(salario, :eletricidade) do
    salario + (salario * 0.18)
  end

  def aumento(salario, :carpintaria) do
    salario + (salario * 0.15)
  end

  def nome_primeiro_ultimo(primeironome, ultimonome) do
    primeironome <> ultimonome
  end

  def ultimo_nome_maior(primeironome, ultimonome) do
    String.upcase(ultimonome) <> "," <> primeironome
  end

  def tamanho_primeiro_nome(primeironome) do
    # - 1 do "" espaço em branco que eu coloquei no lugar do \n
    String.length(primeironome) - 1
  end
end

primeironome = IO.gets "Digite o seu primeiro nome: "
               |> String.replace("\n", "")
ultimonome = IO.gets "Digite o seu último nome: "

salario = IO.gets "Digite o seu salário atual: "
salario = salario |> String.replace("\n", "")
salario = String.to_float(salario)

setor = IO.gets "Digite o setor em que você trabalha: "
setor = setor |> String.replace("\n", "")

IO.puts "---------------------------------------------"
IO.puts Funcionario.nome_primeiro_ultimo(primeironome, ultimonome)
case setor do
    "carpintaria" ->
      salario = Funcionario.aumento(salario, :carpintaria)
      IO.puts "Aumento de 15%, novo salário = " <>
               "#{salario}"
     "eletricidade" ->
       salario = Funcionario.aumento(salario, :eletricidade)
      IO.puts "Aumento de 18%, novo salário = " <>
               "#{salario}"
end
IO.puts "Funcionário: " <> Funcionario.ultimo_nome_maior(primeironome, ultimonome)
IO.puts "-----------------------------------------------"
IO.puts "Tamanho do  primeiro nome:" <>
         "#{Funcionario.tamanho_primeiro_nome(primeironome)}"
