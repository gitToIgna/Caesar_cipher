# Iteración 1

# Devuelve el input cambiando cada una de sus letras por su anterior en el abecedario
# ej: "bcd" -> "abc"
def solve_cipher(input)

	shift = -1

	#Separamos cada valor del String y lo guardamos como Array
	array_split_codigo_secreto = input.split("")

	#Lo pasamos cada letra a número ASCII y le añadimos el turno
	array_integer_codigo_secreto =
	  array_split_codigo_secreto.map { |chr| chr.ord + shift }

	#Limpiamos los casos que quedan fuera de letra A y Z
	result = ""

	array_integer_codigo_secreto.each do |num|

		temp_num = 0

		if num < 97
			temp_num = temp_num + (num + 26)

		elsif num > 122
			temp_num = temp_num + (num - 26)

		else
			temp_num = num

		end

		result = result + (temp_num.chr)

	end

	return result
	
end

decoded = solve_cipher("ifmmp")

puts decoded