require 'minitest/autorun'
require_relative '../part4'

class Part4 < MiniTest::Unit::TestCase

	def test_dessert_getters_setters
		d = Dessert.new('cake', 100)
		assert_equal 'cake', d.name
		assert_equal 100, d.calories
		d.name = 'cake2'
		d.calories = 222
		assert_equal 'cake2', d.name
		assert_equal 222, d.calories
	end

	def test_healthy_is_true_when_less_than_200_cal
		assert Dessert.new('name', 199).healthy?
		refute = Dessert.new('name', 200).healthy?
	end

	def test_dessert_always_delicious
		assert Dessert.new('name', 0).delicious?
		assert Dessert.new('name', 500).delicious?
	end

	def test_jelly_bean_getters_setters
		bean = JellyBean.new('name', 50, 'strawberry')
		assert_equal 'strawberry', bean.flavor
		bean.flavor = 'bad'
		assert_equal 'bad', bean.flavor
	end

	def test_black_licorice_is_not_delicious
		assert JellyBean.new('name', 50, 'yummy').delicious?
		refute JellyBean.new('name', 50, 'black licorice').delicious?
	end
end