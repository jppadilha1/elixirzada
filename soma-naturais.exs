defmodule Comum do

    def somar_naturais(0) do
        0
    end

    def somar_naturais(n) when n > 0 do
        n + somar_naturais(n-1)
    end

    def tamanho([]) do
        0
    end

    def tamanho(lista) do  # ou desmembra no parametro direto, [head|tail]
        [_head | tail] = lista
        1 + tamanho(tail)
    end

end


defmodule Cauda do

    def somar_naturais(n) when n >= 0 do
        somar_naturais(n,0)
    end

    defp somar_naturais(0, acm) do
        acm
    end                             #Se a faxineira não recebeu nenhuma ligação, pode ir pra próxima sem lembrar de onde ela parou

    defp somar_naturais(n, acm) do  # O conceito de cauda é uma vantagem das linguagens de paradigma declarativo
        somar_naturais(n-1, n + acm) # Basicamente a linguagem reconhece que a última tarefa que foi chamada
    end                              # é a própria função recursiva, portanto não precisa empilhar durante a recursividade
                                #Essas linguagens precisam disso, pois não possuem loop elas trabalham com recursividade
                                # Em python por exemplo, ele não ia reconhecer e ia armazenar na pilha e esperar todos os returns

    def somar_naturais(n) do
        {:Error, "Não é possível utilizar números negativos"}
    end

    def length(lista) do
        length(lista, 0)
    end

    defp length([], acm) do
       acm
    end

    defp length([_head | tail], acm) do
        length(tail, 1 + acm)
    end

end
