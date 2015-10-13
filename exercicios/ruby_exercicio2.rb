puts "Por favor, digite um valor: "

valor = gets.chomp.to_i

if valor == 0
	puts "Digite um valor positivo maior que zero."
elsif valor%2 == 0
	puts "#{valor} é par!"
else
	puts "#{valor} é impar!"
end
	