require 'minitest/autorun'
require_relative '../part3'

class Part3 < MiniTest::Unit::TestCase

	def test_combine_anagrams
		input = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']
		expected_output = [
			["cars", "racs", "scar"],
      ["for"],
      ["potatoes"],
      ["four"],
      ["creams", "scream"]
    ]
		assert_equal expected_output, combine_anagrams(input)
	end

	def test_combine_anagrams_case_insensitive
		input = ['a', 'A', "HeLLo", "hello"]
		expected_output = [
			["a", "A"],
			["HeLLo", "hello"]
    ]
		assert_equal expected_output, combine_anagrams(input)
	end
end