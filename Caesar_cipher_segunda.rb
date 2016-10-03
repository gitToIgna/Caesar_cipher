#Iteración 2

#La función nos devolverá el código cifrado a través de una palabra separada por espacio dada y un turno indicado por la persona
def solve_cipher(codigo_secreto, turno_secreto)

	#Separamos cada valor del String y lo guardamos como Array
	array_split_codigo_secreto = codigo_secreto.split("")

	#Lo pasamos cada letra a número ASCII y le añadimos el turno. En el caso del espacio, hacemos que se mantenga en ese valor
	array_integer_codigo_secreto = array_split_codigo_secreto.map { |chr| num = chr.ord

		if num == 32
			num
		
		else
			num + turno_secreto
		
		end
	}

	
	result = ""

	#Limpiamos los casos que quedan fuera de letra A y Z así como los espacios
	array_integer_codigo_secreto.each do |num|


		if num == 32
			temp_num = num
		
		elsif num < 97
			temp_num = num + 26
		
		elsif num > 122
			temp_num = num - 26
	
		else
			temp_num = num
	
		end

		result = result + (temp_num.chr)

	end

	return result

end

#Preguntamos código a descodificar
puts "Escribe el código secreto con más de una palabra separado por espacios:"

codigo_secreto = gets.chomp

#Preguntamos clave de cifrado
puts "Escribe el turno de cifrado:"

turno_secreto = gets.chomp.to_i


result_final = solve_cipher(codigo_secreto, turno_secreto)

puts result_final