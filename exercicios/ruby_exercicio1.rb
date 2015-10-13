puts "Por favor, digite um valor: "

valor1 = gets.chomp.to_i

puts "Digite outro valor"

valor2 = gets.chomp.to_i

if valor1 > valor2
	puts "O maior valor é: #{valor1}"
elsif valor2 > valor1
	puts puts "O maior valor é: #{valor2}"
else
	puts "Os números são iguais!"
end
	

