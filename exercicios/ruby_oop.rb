class Pessoa

	attr_accessor :nome, :profissao

	def initialize(nome, profissao)
		@nome = nome
		@profissao = profissao
	end

end

continue = "S"
pessoas = []

while continue == "S"

	puts "Informe o nome:"
	nome = gets.strip

	puts "Informe a profissão:"
	profissao = gets.strip  

	pessoa = Pessoa.new(nome, profissao)

	pessoas << pessoa

	puts "Legal, vamos adicionar mais um? (S/N)"
	continue = gets.strip.upcase

end

puts "Ok, esta é a lista que tenho aqui:"

for pessoa in pessoas
	puts pessoa.nome + " - " + pessoa.profissao
end

puts "Até a próxima =D"

pessoas["Leonardo"].profissao
