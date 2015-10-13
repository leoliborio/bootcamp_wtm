puts "Olá, seja bem vindo ao sistema proibido para menores."

puts "Qual o ano em que você nasceu?"

ano = gets.chomp.to_i

time = Time.new

idade =  time.year - ano

if  idade >= 18
	puts "Legal, você tem #{idade} anos então pode acessar o sistema. Bom proveito."

else
	puts "Hmm...você só tem #{idade} anos e quer acessar este sistema? Vou contar para os seus pais."
end
