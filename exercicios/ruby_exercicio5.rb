puts "Olá, vamos calcular o seu IMC."

puts "Informe a sua altura em metros: (utilize pontos ao invés de vírgula)"

altura = gets.chomp.to_f

puts "Informe o seu peso em kg:"

peso = gets.chomp.to_f

imc = (peso / (altura**2)).round(2)

case imc
when 0..16.99 then result = "Muito abaixo do peso"

when 17..18.49 then result = "Abaixo do peso"

when 18.5..24.99 then result = "Peso normal"

when 25.0..29.99 then result = "Acima do peso"

when 30.0..34.99 then result = "Obesidade I"

when 35..39.99 then result = "Obesidade II (severa)"

else 
	result = "Obesidade III (mórbida)"	

end

puts "Seu IMC é de #{imc}. Seu resultado é: #{result}."