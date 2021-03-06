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
		assert_equal(5, calculator(num1, operator, num2))
	end
	def test_that_can_add_two_numbers_together
		num1 = 2
		operator = "+"
		num2 = 3
		assert_equal(5, calculator(num1, operator, num2))
	end
	def test_that_can_add_negative_number_together
		num1 = -2
		operator = "+"
		num2 = -3
		assert_equal(-5, calculator(num1, operator, num2))
	end
	def test_that_works_with_floats
		num1 = 0.05
		operator = "+"
		num2 = 1
		assert_equal(1.05, calculator(num1, operator, num2))
	end
	def test_that_works_with_negative_floats
		num1 = 0.0005
		operator = "+"
		num2 = -0.0005
		assert_equal(0, calculator(num1, operator, num2))
	end
	def test_that_can_subtract_numbers
		num1 = 5
		operator = "-"
		num2 = 3
		assert_equal(2, calculator(num1, operator, num2))
	end
	def test_that_can_subtract_negative_and_floats
		num1 = -0.5
		operator = "-"
		num2 = -0.1
		assert_equal(-0.4, calculator(num1, operator, num2))
	end
	def test_that_can_multiply_numbers
		num1 = 5
		operator = "*"
		num2 = 3
		assert_equal(15, calculator(num1, operator, num2))
	end
	def test_that_can_multiply_floats
		num1 = 0.2
		operator = "*"
		num2 = 0.6
		assert_equal(0.12, calculator(num1, operator, num2))
	end
	def test_that_can_multiply_with_negatives
		num1 = -0.2
		operator = "*"
		num2 = 0.6
		assert_equal(-0.12, calculator(num1, operator, num2))
	end
	def test_that_can_divide
		num1 = 4
		operator = "/"
		num2 = 2
		assert_equal(2, calculator(num1, operator, num2))
	end
	def test_that_can_divide_with_larger_denominator
		num1 = 2
		operator = "/"
		num2 = 4
		assert_equal(0.5, calculator(num1, operator, num2))
	end
	def test_that_negatives_and_floats_work_division
		num1 = -0.05
		operator = "/"
		num2 = -0.2
		assert_equal(0.25, calculator(num1, operator, num2))
	end
	def test_that_divison_with_0_works_properly
		num1 = 0
		operator = "/"
		num2 = 5
		assert_equal(0, calculator(num1, operator, num2))
	end
	def test_that_divison_with_num2_0_works_right
		num1 = 2
		operator = "/"
		num2 = 0
		assert_equal("Undefined", calculator(num1, operator, num2))
	end
	def test_that_division_by_zero_works_with_float
		num1 = 2
		operator = "/"
		num2 = 0.00000000
		assert_equal("Undefined", calculator(num1, operator, num2))
	end
	def test_what_happens_when_letters_are_entered
		num1 = "m56-="
		operator = "+"
		num2 = "12"
		assert_equal("Incorrect characters try again", calculator(num1, operator, num2))
	end
	def test_what_happens_when_minus_signs_entered_in_different_places_1
		num1 = "-"
		operator = "-"
		num2 = "13"
		assert_equal("Incorrect characters try again", calculator(num1, operator, num2))
	end
	def test_what_happens_with_decimal_no_zero
		num1 = "3"
		operator = "+"
		num2 = "2"
		assert_equal(5, calculator(num1, operator, num2))
	end
end