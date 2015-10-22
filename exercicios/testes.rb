class Pessoa

	attr_accessor :nome, :profissao

	def initialize(nome, profissao)
		@nome = nome
		@profissao = profissao
	end

end


leo = Pessoa("Leo", "Eco").new

puts leo.nome