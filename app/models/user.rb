class User < ActiveRecord::Base
  
  has_many :games_x, :foreign_key  => "player_x_id", :class_name => "Game"
  has_many :games_o, :foreign_key  => "player_o_id", :class_name => "Game"
  
  def games
    return games_x + games_o
  end
  
  def wins
    win_x = self.games_x.select{ |g| g.score == 0 }
    win_o = self.games_o.select{ |g| g.score == 1 }
    return win_x + win_o
  end
  
  def losses
    losses_x = self.games_x.select{ |g| g.score == 1 }
    losses_y = self.games_o.select{ |g| g.score == 0 }
    return losses_x + losses_y
  end
  
  def tie
    ties = self.games_x.select{ |g| g.score == 2 }
    ties += self.games_o.select{ |g| g.score == 2 }
    return ties
  end
  
  # Score is in format (W-L-T) 
  def score
    score_list = [self.wins.size, self.losses.size, self.tie.size]
    return score_list
  end
end
