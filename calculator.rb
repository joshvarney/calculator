def calculator(num1, operator, num2)
	case operator
	when "+"
		solution = num1 + num2
	when "-"
		solution = num1 - num2
	when "*"
		solution = num1 * num2		
	end
	solution
end