print "Escreva um texto: "
texto = gets

arquivo = File.new("arquivo", "r")

File.open ("caelum.txt", "w") do |f|
	f << texto
end

Dir.entries('caelum').each do |file_name|
	idea = File.read(file_name)
	puts idea
end


require 'net/http'
Net::HTTP.start('emanoel.pro.br', 80) do |http|
	print(http.get( '/').body)
end
