require "./account.rb"

continue = "S"
accounts = []

puts "Bem-vindo ao Banco Feliz!"

while continue == "S"

	puts "Você deseja acessar uma conta existe? (S ou N)"
	have_account = gets.strip.upcase

	existing_account = false

	if have_account == "S"

		while existing_account == false 
			puts "Qual é o id da sua conta? Digite F para sair"
			id = gets.strip.to_i

			if id == 0
				break
			end

			i = 0
			accounts.each do |account|
				if account.id == id
					existing_account = true
				end
				i += 1
			end

			if existing_account == false
				puts "Conta não encontrada. Digite o id novamente." 
			end

		end

	else

		puts "Deseja criar uma nova conta? (S ou N)"
		create_account = gets.strip.upcase

		if create_account == "S"
			id = accounts.length + 1
			new_account = Account.new(id)
			accounts << new_account

			puts "Conta com id #{new_account.id} criada com sucesso."

		else
			id = 0
			break
		end
	end
	
	if id == 0
		break
	end

	
	operate = true
	while operate == true
		
		puts "O que gostaria de fazer? (D) Depositar (S) Sacar (E) Extrato (F) Finalizar"
		operation = gets.strip.upcase

		if operation == "D" or operation == "S"
			puts "Qual a quantia?"
			value = gets.strip.to_i
		end

		puts accounts[id - 1].action(operation, value)

		if operation == "F"
			operate = false
		end
	end

	puts "Deseja fazer outras operações?"
	continue = gets.strip.upcase

end

puts "Obrigado por acessar o Banco Feliz!"