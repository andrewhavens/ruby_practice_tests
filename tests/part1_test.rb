require 'minitest/autorun'
require '../part1'

class Part1 < MiniTest::Unit::TestCase

	def test_palindrome
		assert palindrome? "A man, a plan, a canal -- Panama"
		assert palindrome? "Madam, I'm Adam!"
		refute palindrome? "Abracadabra"
	end

	def test_count_words
		expected_result = {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
		assert_equal expected_result, count_words("A man, a plan, a canal -- Panama")

		expected_result = {'doo' => 3, 'bee' => 2}
		assert_equal expected_result, count_words("Doo bee doo bee doo")
	end
end