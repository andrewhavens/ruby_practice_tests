class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  game.each do |player|
  	name, weapon = *player
  	raise NoSuchStrategyError unless %w{r p s}.include? weapon.downcase
  end
end

def rps_tournament_winner(tournament)
  # YOUR CODE HERE
end
