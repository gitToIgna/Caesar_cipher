#Iteración 1

def solve_cipher(input)

	shift = -1

	array_split_codigo_secreto = input.split("")

	array_integer_codigo_secreto = array_split_codigo_secreto.collect { |chr| chr.ord + shift }

	temp_num = 0
	final_num = ""

	array_integer_codigo_secreto.each do |num|

		if num < 97
			temp_num = temp_num + (num + 26)

		elsif num > 122
			temp_num = temp_num + (num - 26)

		else
			temp_num = num

		end

		final_num = final_num + (temp_num.chr)

	end

	puts final_num
	
end

solve_cipher("ifmmp")