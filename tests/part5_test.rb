require 'minitest/autorun'
require_relative '../part5'

class Part5 < MiniTest::Unit::TestCase

	def test_has_history_method
		assert_respond_to Class, :attr_accessor_with_history
	end
	
	def test_single_instance
		f = Foo.new
		f.bar = 1
		f.bar = 2
		assert_equal [nil, 1, 2], f.bar_history
	end

	def test_different_variables
		f = Foo.new
		f.bar = 1
		f.bar = ['something']
		f.bar = '3'
		assert_equal [nil, 1, ['something'], '3'], f.bar_history
	end

	def test_multiple_instances
		f = Foo.new
		f.bar = 1
		f.bar = 2

		f2 = Foo.new
		assert_equal [nil], f2.bar_history

		f2.bar = 4
		assert_equal [nil, 4], f2.bar_history
	end

	def test_multiple_classes
		f = Foo.new
		f.bar = 1
		f.bar = 2

		s = SomeOtherClass.new
		s.bar = 3
		s.bar = 4

		assert_equal [nil, 1, 2], f.bar_history
		assert_equal [nil, 3, 4], s.bar_history


	end
end