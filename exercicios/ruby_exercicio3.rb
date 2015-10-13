puts "Olá usuário, informe um número:"

valor1 = gets.chomp.to_i

puts "Informe outro número:"

valor2 = gets.chomp.to_i

puts "Informe uma operação (1) Soma, (2) Subtração, (3) Multiplicação, (4) Divisão:
"

operacao = gets.chomp.to_i

puts case operacao

	when 1
		"Sua resposta é: " + (valor1 + valor2).to_s

	when 2
		"Sua resposta é: " + (valor1 - valor2).to_s

	when 3
		"Sua resposta é: " + (valor1 * valor2).to_s

	when 4
		"Sua resposta é: " + (valor1 / valor2).to_s

	else
		"Por favor, digite uma operação entre as opções 1 e 4."
end
