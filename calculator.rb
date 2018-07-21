def calculator(num1, operator, num2)
	case operator
	when "+"
		solution = num1 + num2
	when "-"
		solution = num1 - num2
	when "*"
		solution = num1 * num2
	when "/"
		if num2 == 0
			solution = "Undefined"
		elsif
			solution = num1.to_f / num2.to_f
		end		
	end
	solution
end