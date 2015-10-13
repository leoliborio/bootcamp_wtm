puts "Por favor, digite um valor: "

valor = gets.chomp.to_i

if valor%2 == 0
	puts "#{valor} é par!"
elsif valor == 0
	puts "Digite um valor positivo maior que zero."
else
	puts "#{valor} é impar!"
end
	