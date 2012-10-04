require 'minitest/autorun'
require_relative '../part2'

class RpsGameTests < MiniTest::Unit::TestCase

	def test_requires_two_players
		game = [['one', 'R'],['two','P'],['three','S']]
		assert_raises WrongNumberOfPlayersError do
			rps_game_winner(game)
		end
	end

	def test_requires_valid_weapon
		game = [['one', 'f'],['two','P']]
		assert_raises NoSuchStrategyError do
			rps_game_winner(game)
		end
	end

	def test_paper_beats_rock
		game = [['one', 'P'],['two','R']].shuffle
		assert_equal ['one', 'P'], rps_game_winner(game)
	end

	def test_rock_beats_scissors
		game = [['one', 'R'],['two','S']].shuffle
		assert_equal ['one', 'R'], rps_game_winner(game)
	end

	def test_scissors_beats_paper
		game = [['one', 'S'],['two','P']].shuffle
		assert_equal ['one', 'S'], rps_game_winner(game)
	end
end

class RpsTournamentTests < MiniTest::Unit::TestCase
	def test_tournament_game
		game = [['one', 'S'],['two','P']].shuffle
		assert_equal ['one', 'S'], rps_tournament_winner(game)
	end

	def test_tournament_small
		tournament = [
	    [
	        [ ["Armando", "P"], ["Dave", "S"] ],
	        [ ["Richard", "R"],  ["Michael", "S"] ],
	    ],
	    [
	        [ ["Allen", "S"], ["Omer", "P"] ],
	        [ ["David E.", "R"], ["Richard X.", "P"] ]
	    ]
		]
		assert_equal ['Richard','R'], rps_tournament_winner(tournament)
	end

	def test_tournament_large
		tournament = [
			[
				[
					[["Eimile", "S"], ["Dido", "S"]],
					[["Coreen", "S"], ["Gert", "R"]]
				],
				[
					[["Esme", "S"], ["Gaylene", "P"]],
					[["Hermine", "S"], ["Alyss", "P"]]
				]
			],
			[
				[
					[["Dee", "R"], ["Adoree", "P"]],
					[["Maryanna", "S"], ["Cassaundra", "R"]]
				],
				[
					[["Gabi", "R"], ["Petronella", "S"]],
					[["Latrena", "P"], ["Emmi", "P"]]
				]
			]
		]
		assert_equal ['Adoree','P'], rps_tournament_winner(tournament)
	end
end