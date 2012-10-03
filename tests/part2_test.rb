require 'minitest/autorun'
require '../part2'

class rps_game_winner_tests < MiniTest::Unit::TestCase

	def test_requires_two_players
		game = [['one', 'r'],['two','p'],['three','s']]
		assert_raises WrongNumberOfPlayersError do
			rps_game_winner(game)
		end
	end

	def test_requires_valid_weapon
		game = [['one', 'f'],['two','p']]
		assert_raises NoSuchStrategyError do
			rps_game_winner(game)
		end
	end

	def test_paper_beats_rock
		game = [['one', 'p'],['two','r']]
		assert_equal ['one', 'p'], rps_game_winner(game)
	end
end