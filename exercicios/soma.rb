continue = true

while continue == true  do

	puts "Olá, informe um número inteiro:"

	x = gets.strip.to_i

	result = 0

	for i in 1..x  do
		
		result += i 

	end

	puts "O resultado da soma é " + result.to_s + "."

	puts "Deseja continuar? (S/N)"

	answer = gets.strip.downcase

	if answer != "s"
		continue = false
		puts "Obrigado!"
		
	end
end
