defmodule Comum do

    def somar_naturais(0) do
        0
    end

    def somar_naturais(n) when n > 0 do
        n + somar_naturais(n-1)
    end

end


defmodule Cauda do

    def somar_naturais(0) do

    end

end
