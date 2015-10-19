puts "Bem vindo ao jogo de adivinhação! Chute um número entre 1 e 20"

magic_number = 1 + rand(20)

continue = "S"

guesses = []

tentativa = 1

while continue == "S" && tentativa <= 5 do
	
	puts "Qual o seu chute? Tentativa " + tentativa.to_s
	guess = gets.strip.to_i

	if (1..20).include? guess

		if guess ==  magic_number 

			puts "Acertou!"

			puts "Quer jogar novamente? (S/N)"
			continue = gets.strip.upcase



		elsif guesses.include? guess 

			puts "Você já chutou esse valor, tente outro."

		else

			guesses << guess

			puts "Não foi dessa vez..."

			tentativa += 1

			if tentativa > 5
				
				puts "Acabaram as tentativas! Quer jogar de novo?"
				continue = gets.strip.upcase

				puts "Geramos outro número!"
				magic_number = 1 + rand(20)
				guesses = []
				tentativa = 1
					
			else	

				puts "Quer tentar novamente? (S/N)"
				continue = gets.strip.upcase

			end

		end
	
	else
		
		puts "Chute um número entre 1 e 20!"

	end
end

puts "FIM DO JOGO"

	