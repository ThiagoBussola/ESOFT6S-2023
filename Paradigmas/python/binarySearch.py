def pesquisa_binaria_recursiva(Arr, esquerda, direita, item):
    # 1. Caso base: o elemento não está presente.  caso eu receba um array vazio
    if direita < esquerda:
        return -1
    meio = (esquerda + direita) // 2
    # 2. Nosso palpite estava certo: o elemento está no meio do arranjo. 
    if Arr[meio] == item:
        return meio
    # 3. O palpite estava errado: atualizamos os limites e continuamos a busca. 
    elif Arr[meio] > item:
        return pesquisa_binaria_recursiva(Arr, esquerda, meio - 1, item)
    else: # A[meio] < item
        return pesquisa_binaria_recursiva(Arr, meio + 1, direita, item)

A = [0, 10, 20, 30, 40, 50, 60, 70]

print("Pesquisa com sucesso:", pesquisa_binaria_recursiva(A, 0, len(A) - 1, 20))
print("Pesquisa com sucesso:", pesquisa_binaria_recursiva(A, 0, len(A) - 1, 0))
print("Pesquisa com sucesso:", pesquisa_binaria_recursiva(A, 0, len(A) - 1, 70))
print("Pesquisa com sucesso:", pesquisa_binaria_recursiva(A, 0, len(A) - 1, 100))