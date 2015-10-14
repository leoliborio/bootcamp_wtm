puts "Olá, vamos calcular o seu IMC."

puts "Informe a sua altura em metros: (utilize pontos ao invés de vírgula)"

altura = gets.chomp.to_f

puts "Informe o seu peso em kg:"

peso = gets.chomp.to_f

imc = (peso / (altura**2)).round(2)

case imc
when 0..17 then result = "Muito abaixo do peso"

when 17..18.5 then result = "Abaixo do peso"

when 18.5..25.0 then result = "Peso normal"

when 25.0..30.0 then result = "Acima do peso"

when 30.0..35 then result = "Obesidade I"

when 35..40 then result = "Obesidade II (severa)"

else 
	result = "Obesidade III (mórbida)"	

end

puts "Seu IMC é de #{imc}. Seu resultado é: #{result}."