puts "Bem-vindo ao jogo de adivinhação!\n\n\n"

puts "Por favor, informe seu nome: "

nome = gets

puts "Seja bem-vindo, " + nome

numero_secreto = 100

puts "Qual seu chute?"
chute = gets

acertou = chute.to_i == numero_secreto

if acertou
	puts "Parabéns, você acertou!"
else
	puts "Infelizmente você não acertou, tente novamente!"
end