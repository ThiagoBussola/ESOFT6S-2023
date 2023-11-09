defmodule Questao3 do
  def par(n) do
    rem(n, 2) == 0
  end
end

IO.puts "e par?"
IO.puts Questao3.par(30)


defmodule Questao4 do
  def dobro(n) do
    Enum.map(n, fn (x) -> x * 2 end)
  end
end
IO.inspect Questao4.dobro([1,2,3,4])


defmodule Questao5 do
  def ultimoElemento(n) do
    resultado = Enum.reduce(n, fn(x, y) -> x end)
  end
end
IO.inspect Questao5.ultimoElemento([9.5, 8.0, 7.5, 5])


defmodule Questao6 do
  def fatorial(n) do
    for i <- 0..n, do: multiplicacao(i)
  end
   defp multiplicacao(i), do: i*i
end
IO.inspect Enum.reduce(Questao6.fatorial(10), fn(x, y) -> x end)


defmodule Questao7 do
  def funcao(n,funcao) do
    Enum.map(n,funcao)
  end
end
IO.inspect Questao7.funcao([1, 2, 3, 4], fn(x) -> x + 5 end)


defmodule Questao8 do
  def filtro(n,funcao) do
    Enum.filter(n,funcao)
  end
end
IO.inspect Questao8.filtro([1, 2, 3, 4], fn(x) -> rem(x, 2) == 0 end)

defmodule Questao9 do
def fibonacci(n) do
    for i <- 0..n, do: fb(i)
  end
  
  defp fb(0), do: 0
  defp fb(1), do: 1
  defp fb(i), do: fb(i-1) + fb(i-2)
end

IO.inspect Questao9.fibonacci(10)



defmodule Questao10 do
  def media(n) do
  
    apenas_notas = Enum.flat_map(n, fn({n,x}) -> x end)
    resultado = Enum.reduce(apenas_notas, fn(x, acc) -> x + acc end)
    resultado / length(apenas_notas)
  end
end

notas = [
  {"Alice", [9.5, 8.0, 7.5]},
  {"João", [8.0, 7.0, 6.5]},
  {"Pedro", [9, 9.5, 9.0]},
  {"Lucas", []},
]

IO.inspect Questao10.media(notas)

