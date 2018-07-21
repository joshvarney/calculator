require "minitest/autorun"
require_relative "calculator.rb"
class Test_Calculator <Minitest::Test

	# def test_that_can_take_in_integer
	# 	num1 = 2
	# 	assert_equal(Integer, calculator(num1).class)
	# end
	# def test_that_can_pass_in_operators
	# 	num1 = 2
	# 	operator = "+"
	# 	assert_equal("+", calculator(num1, operator))
	# end
	def test_that_can_pass_in_two_numbers_and_operator
		num1 = 2
		operator = "+"
		num2 = 3
		assert_equal(3, calculator(num1, operator, num2))
	end
end