puts "Bem-vindo ao 99Bandas! Uhul!"

opcao = "S"

usuarios = []

while opcao == "S"

	puts "Qual o seu nome?"
	nome = gets.strip

	puts "Qual sua banda favorita?"
	banda = gets.strip

	puts "Qual o estilo?"
	estilo = gets.strip

	usuario = {nome: nome, bandas: [{ banda: banda, estilo: estilo}]}

	usuarios << usuario

	puts "Deseja continuar?"
	opcao = gets.strip.upcase

end

puts usuarios

