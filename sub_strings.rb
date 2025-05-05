def substrings(frase, dicionario)
  resultado = {}
  
  frase_downcase = frase.downcase
    
  dicionario.each do |palavra_dicionario|
    ocorrencias = frase_downcase.scan(palavra_dicionario).length
    if ocorrencias > 0
      resultado[palavra_dicionario] = ocorrencias
    end
  end
  return resultado
end


puts "frase: "

frase = gets.chomp

puts "dicionario: "

dicionario = gets.chomp.split(/[\s,]+/)

resultado = substrings(frase, dicionario)

puts resultado

