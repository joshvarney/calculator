def calculator(num1, operator, num2)
	alpha = ('A'..'z').to_a
	char1 = ('!'..',').to_a
	char2 = (':'..'?').to_a
	char3 = ('!'..'?').to_a[14]
	all = alpha + char1 + char2 
	all.push(char3)
	num3 = num1.to_s.split("").to_a
	num4 = num2.to_s.split("").to_a
	num5 = num3 & all
	num6 = num4 & all
	count1 = 0
	count2 = 0
	["."].each { |x| num3.each { |y|
				if x == y
					count1 += 1
				end
				}
	}
	["."].each { |x| num4.each { |y|
				if x == y
					count2 += 1
				end
				}
	}
	if count1 > 1 || count2 > 1
		solution = "Too many decimal points try again!"
	elsif num3.count == 1 && num3.include?(".")
		solution = "Try entering a number before or after the decimal!"
	elsif num4.count == 1 && num4.include?(".")
		solution = "Try entering a number before or after the decimal!"	
	elsif num3.include?(" ") || num4.include?(" ")
		solution = "Try again without the spaces!"	
	elsif num3.count == 1 && num3.include?("-")
		solution = "Try entering a number after the negative sign!"
	elsif num3.count > 1 && num3[1..-1].include?("-")
		solution = "Too many negatives try again!"
	elsif num4.count == 1 && num4.include?("-")
		solution = "Try entering a number after the negative sign!"
	elsif num4.count > 1 && num4[1..-1].include?("-")
		solution = "Too many negatives try again!"
	elsif num5.empty? == false || num6.empty? == false
		solution = "Incorrect characters try again!"
	elsif
		case operator
		when "+"
			solution = num1.to_f + num2.to_f
				if solution.to_s.split("").last.to_i == 0
					solution = solution.to_s.split("").values_at(0..-3).join.to_i
				end
		when "-"
			solution = num1.to_f - num2.to_f
				if solution.to_s.split("").last.to_i == 0
					solution = solution.to_s.split("").values_at(0..-3).join.to_i
				end
		when "*"
			solution = num1.to_f * num2.to_f
				if solution.to_s.split("").last.to_i == 0
					solution = solution.to_s.split("").values_at(0..-3).join.to_i
				end
		when "/"
			if num2.to_f == 0
				solution = "Undefined"
			elsif
				solution = num1.to_f / num2.to_f
					if solution.to_s.split("").last.to_i == 0
						solution = solution.to_s.split("").values_at(0..-3).join.to_i
					end
			end	
		end
	end
		if solution.class == Float
			solution = solution.round(6)
		else
			solution
		end	
end