defmodule Greeter do
  def hello(name) do
    "Hello, " <> name
  end
end


defmodule Exercicio do
  
  def nomesEIdades(nomeA, nomeB, idadeA, idadeB) do
    IO.puts("Pessoa A: #{nomeA} tem #{idadeA} anos \n")
    IO.puts("Pessoa B: #{nomeB} tem #{idadeB} anos \n")
    IO.puts("A soma das idades somadas é: #{idadeA + idadeB}")
  end
  def nomesEIdades(nomeA, idadeA) do
    IO.puts("Pessoa A: #{nomeA} tem #{idadeA} anos \n")
  end
end