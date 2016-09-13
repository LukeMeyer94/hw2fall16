class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  game[0][1] = game[0][1].upcase
  game[1][1] = game[1][1].upcase
  winner = compareMoves(game[0][1], game[1][1])
  if winner == 2
    return game[1]
  else
    return game[0]
  end
end

def compareMoves(playerOne, playerTwo)
  case playerOne
  when "R"
    if playerTwo == "R" || playerTwo == "S"
      return 1
    elsif playerTwo == "P"
      return 2
    else
      raise NoSuchStrategyError
    end
  when "P"
    if playerTwo == "P" || playerTwo == "R"
      return 1
    elsif playerTwo == "S"
      return 2
    else
      raise NoSuchStrategyError
    end
  when "S"
    if playerTwo == "S" || playerTwo == "P"
      return 1
    elsif playerTwo == "R"
      return 2
    else
      raise NoSuchStrategyError
    end
  else
    raise NoSuchStrategyError
  end
end

def rps_tournament_winner(tournament)
  if tournament[0][0].instance_of? String
    return rps_game_winner(tournament)
  end
  return rps_game_winner([rps_tournament_winner(tournament[0]),rps_tournament_winner(tournament[1])])
end
