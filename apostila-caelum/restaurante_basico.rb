puts "Digite o nome do restaurante: "
nome = gets
print "Nome do restaurante: #{nome}"

# Pagina 23 

nota = 9
if nota > 7
        puts "Boa nota!"
else
        puts "Nota ruim!"
end

#estrutura de controle

puts "Estrutura de controle: for"

for i in (1..9)
        x = i
end 
puts x

#Expressoes regulares

 
puts /enza/ =~ "Fortaleza" #nil
puts /eza/ =~ "Fortaleza" # 6

#operador || pode ser uitilizado como um if elegante

restaurante ||= "Fogo de Chao"
puts restaurante



#desafios pg 33

resultado = 10**2
texto = "O valor é #{resultado}"
puts(texto)

puts(1+2)

simbolo1 = :abc
simbolo2 = :abc
simbolo1 == simbolo2 

texto1 = "abc"
texto2 = "abc"
texto1 == texto2

