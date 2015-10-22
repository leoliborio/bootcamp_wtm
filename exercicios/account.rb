class Account

	attr_accessor :id

	def initialize(id)
		@id = id
		@balance = 0
	end

	def action(operation, value)
		case operation
			when "S" 
				if value > @balance
					"Seu saldo é de apenas #{@balance}. Transação não efetuada."
				else
					@balance -= value
					"Saque de #{value} efetuado com sucesso!"
				end
			when "D" 
				@balance += value
				"Depósito de #{value} efetuado com sucesso!"

			when "E"  
				"Seu saldo é de R$ #{self.balance}."

			when "F"
				 "Saindo..."

			else "Por favor, digite uma operação válida." 
		end
	end

end

