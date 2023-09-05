Funções de order superior são funções que recebem outras funções como argumento ou retornam funções como resultado.
Em outras palavras, são funções que operam em outras funções, seja tomando-as como argumentos ou retornando-as.
O fato de você conseguir passar funções como argumentos para outras funções é uma das características mais poderosas do Elixir.
 Porque isso permite que você crie funções que são extremamente flexíveis e reutilizáveis.


 defmodule Math do
  def executar(func, params), do: apply(func, params)

  def somar(a, b, c), do: a + b + c

  def multi(a, b), do: a * b
end

r1 = Math.executar(&Math.somar/3, [4, 5, 6])
r2 = Math.executar(&Math.multi/2, [30, 40])

IO.puts "#{r1} #{r2}"


defmodule Math do
  def executar(func, params), do: apply(func, params)
end

r1 = Math.executar(fn (a, b, c) -> a + b + c end, [4, 5, 6])
r2 = Math.executar(fn (a, b) -> a * b end, [30, 40])

IO.puts "#{r1} #{r2}"


defmodule Math do
  def somar(a, b), do: a + b
end

soma = &Math.somar/2
resultado = soma.(4, 5)

IO.puts resultado
