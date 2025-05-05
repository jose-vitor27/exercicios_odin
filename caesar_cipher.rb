def caesar_cipher(string, deslocamento)
  frase = ""
  
  string.chars.each do |caractere|
    if caractere.between?("a", "z") || caractere.between?("A", "Z")
    
      valor_inicial = caractere.ord < 91? "A".ord : "a".ord
    
      string_deslocada = ((caractere.ord - valor_inicial + deslocamento) % 26) + valor_inicial
  
      frase += string_deslocada.chr
    else
      frase += caractere
  

    end
  end  
  puts "Sua nova frase utilizando a cifra de cesar com o deslocamento de #{deslocamento} é:\n#{frase}"
  frase
end

puts "----CIFRA DE CESAR----"

puts "Digite uma frase: "

string = gets.chomp

puts "Digite um número: "

numero = gets.chomp.to_i

caesar_cipher(string,numero)
