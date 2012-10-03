require 'minitest/autorun'
require '../part2'

class RpsGameWinnerTests < MiniTest::Unit::TestCase

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
		game = [['one', 'p'],['two','r']].shuffle
		assert_equal ['one', 'p'], rps_game_winner(game)
	end

	def test_rock_beats_scissors
		game = [['one', 'r'],['two','s']].shuffle
		assert_equal ['one', 'r'], rps_game_winner(game)
	end

	def test_scissors_beats_paper
		game = [['one', 's'],['two','p']].shuffle
		assert_equal ['one', 's'], rps_game_winner(game)
	end
end