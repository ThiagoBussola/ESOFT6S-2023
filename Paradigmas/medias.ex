defmodule Exercicio do
  def calcular_media_alunos(registros) do
    # Filtra os registros inválidos
    registros_validos = Enum.filter(registros, fn {_nome, notas} -> length(notas) > 0 end)

    # Extrai todas as notas dos alunos em uma lista de listas
    todas_as_notas = Enum.map(registros_validos, fn {_nome, notas} -> notas end)

    # Concatena as listas de notas em uma única lista
    todas_as_notas_concatenadas = Enum.concat(todas_as_notas)

    # Calcula a média das notas
    total_notas = Enum.reduce(todas_as_notas_concatenadas, 0, &(&1 + &2))
    qtd_notas = length(todas_as_notas_concatenadas)

    if qtd_notas > 0 do
      media = Float.round(total_notas / qtd_notas, 2)
      {:ok, media}
    else
      {:error, "Nenhuma nota válida encontrada."}
    end
  end
end

# Exemplo de uso
registros = [
  {"Alice", [9.5, 8.0, 7.5]},
  {"Bob", [8.0, 7.0, 6.5]},
  {"Charlie", []},  # Registro inválido sem notas
  {"David", [9.0, 9.5, 9.0]}
]

resultado = Exercicio.calcular_media_alunos(registros)

IO.inspect(resultado)
# Saída esperada: {:ok, 8.12}
