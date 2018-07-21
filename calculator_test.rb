require "minitest/autorun"
require_relative "calculator.rb"
class Test_Calculator <Minitest::Test

	def test_that_can_take_in_integer
		num1 = 2
		assert_equal(Integer, calculator(num1).class)
	end


end