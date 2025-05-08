def bubble_sort(numeros)
  tamanho = numeros.length
  contador = 1
  while contador != 0
    contador = 0
    numeros.each_with_index do |numero_1, i|
      if i < tamanho - 1
        if numero_1 > numeros[(i+1)]
          numeros[i], numeros[i+1] = numeros[i+1], numeros[i]
          contador += 1
        end
      end
    end
  end
  p numeros

end

bubble_sort([4,3,78,2,0,6,34,2,8,6,2])
