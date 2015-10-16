
continue = true

while continue == true  do

	puts "Digite uma palavra que te falarei se é palíndroma:"

	word = gets.strip

	if word == word.reverse

		puts "Sim, #{word} é uma palavra palíndroma!"

	else

		puts "Não, #{word} não é uma palavra palíndroma"

	end

	puts "Deseja verificar outra palavra? (S/N)"

	answer = gets.strip.downcase

	if answer != "s"
		continue = false
		puts "Até a próxima!"
	end

end



